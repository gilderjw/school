package edu.rosehulman.broadcast.protocol.impl_v_1_0;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import Messages.EchoMessage;
import Messages.IMessage;
import Messages.QuitMessage;
import edu.rosehulman.broadcast.protocol.IProtocol;
import edu.rosehulman.broadcast.protocol.ProtocolException;

public class Protocol implements IProtocol {
	private HashMap<String, Class<IMessage>> messages;
	private String user;
	private Map<String, String> properties;
	
	public Protocol(String name) {
		this.messages = new HashMap<>();
		this.properties = new HashMap<>();
		this.properties.put(IProtocol.PROTOCOL, name);
	}
	
	@Override
	public String get(String key) {
		return this.properties.get(key);
	}
	
	public void setProperty(String key, String value) {
		this.properties.put(key, value);
	}
	
	
	public void addMessage(String name, Class class1) {
		this.messages.put(name, class1);
	}
	
	public IMessage getMessage(String command) throws InstantiationException, IllegalAccessException {
		String commandName = command.substring(0, command.indexOf(' '));
		IMessage tmp = this.messages.get(commandName.toUpperCase()).newInstance();
		tmp.setParams(IProtocol.ECHO, this.properties.get(this.CRLF), this.properties.get(IProtocol.CHAR_SET));
		tmp.setUser(this.user);
		tmp.setContent(command);
		
		return tmp;
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	@Override
	public IMessage receive(InputStream in) throws ProtocolException {
		try {
			int c = in.read();
			StringBuilder builder = new StringBuilder();
			while(c != '\n' && c != -1) {
				builder.append((char)c);
				c = in.read();
			}
			
			String statusLine = builder.toString();
			StringTokenizer tokenizer = new StringTokenizer(statusLine);

			String protocol = tokenizer.nextToken(" ").trim();
			if(!this.get(IProtocol.PROTOCOL).equalsIgnoreCase(protocol)) {
				throw new ProtocolException("Protocol version mismatch!");
			}
			
			String command = tokenizer.nextToken(" ").trim();
			String strSize = tokenizer.nextToken("\r").trim();
			int size = Integer.parseInt(strSize);

			byte[] buffer = new byte[size];
			int readSize = 0;
			while(readSize < size) {
				readSize += in.read(buffer, readSize, size);
			}
			
			IMessage m = null;
			if (this.messages.containsKey(command)) {
				try {
					m = this.messages.get(command).newInstance();
					m.setParams(command, this.get(IProtocol.CRLF), this.get(CHAR_SET));
				
				} catch (Exception e) {
					throw new RuntimeException(e);
				}
			} else {
				throw new ProtocolException("Command not supported!");
			}
			
			// Return the buffer
			m.fromBuffer(buffer);
			return m;
		}
		catch(IOException e) {
			throw new ProtocolException(e);
		}
	}
	
	@Override
	public void send(IMessage m, OutputStream out) throws ProtocolException {
		StringBuilder builder = new StringBuilder();
		builder.append(this.get(IProtocol.PROTOCOL));
		builder.append(" ");
		builder.append(m.getCommand());
		builder.append(" ");
	
		builder.append(m.getSize());
		builder.append(this.get(IProtocol.CRLF));
		String statusLine = builder.toString();
		
		try {
			// Send the status line
			byte[] buffer = statusLine.getBytes(this.properties.get(IProtocol.CHAR_SET)); 
			out.write(buffer);
			
			// Send the payload
			buffer = m.toBuffer();
			out.write(buffer);
		}
		catch(Exception e) {
			throw new ProtocolException(e);
		}
	}
}
