package edu.rosehulman.broadcast.client;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import Messages.EchoMessage;
import Messages.IMessage;
import Messages.QuitMessage;
import edu.rosehulman.broadcast.protocol.IEchoMessage;
import edu.rosehulman.broadcast.protocol.IProtocol;

public class BroadcastClient implements Runnable {
	String user;
	Socket socket;
	IProtocol protocol;
	
	OutputStream out;
	InputStream in;
	volatile boolean active;
	
	public BroadcastClient(String server, IProtocol protocol, String user) {
		this.protocol = protocol;
		protocol.setUser(user);
		this.user = user;

		active = true;

		try {
			int port = Integer.parseInt(protocol.get(IProtocol.PORT));
			socket = new Socket(server, port);
			this.in = socket.getInputStream();
			this.out = socket.getOutputStream();
		}
		catch(Exception e) {
			e.printStackTrace();
			active = false;
		}
	}	
	
	public void stop() {
		active = false;
	}
	
	@Override
	public void run() {
		while(active) {
			try {
				IMessage m = protocol.receive(in);
				if(m.getCommand().equalsIgnoreCase(protocol.get(IProtocol.ECHO))) {
					IEchoMessage echo = (IEchoMessage)m;
					System.out.println(echo.getUser() + ": " + echo.getContent());
				}
			}
			catch(Exception e) {
				if(active)
					e.printStackTrace();
				active = false;
			}
		}
	}
	
	public boolean send(String line) {
		if(!active)
			return false;

	
		System.out.println(line);
		try {
			IMessage m = protocol.getMessage(line);
			m.setUser(this.user);
			
			protocol.send(m, out);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			active = false;
			return false;
		}
	}
}
