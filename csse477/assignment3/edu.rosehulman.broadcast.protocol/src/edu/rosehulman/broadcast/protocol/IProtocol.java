package edu.rosehulman.broadcast.protocol;

import java.io.InputStream;
import java.io.OutputStream;

import Messages.IMessage;

public interface IProtocol {
	public static final String PROTOCOL = "PROTCOL";
	public static final String CRLF = "CRLF";
	public static final String CHAR_SET = "CHAR_SET";
	public static final String PORT = "PORT";
	public static final String ECHO = "ECHO";
	public static final String QUIT = "QUIT";
	
	public String get(String key);
	public IMessage receive(InputStream in) throws ProtocolException;
	public void send(IMessage m, OutputStream out) throws ProtocolException;
	public IMessage getMessage(String line) throws InstantiationException, IllegalAccessException;
	public void setUser(String user);
	
}
