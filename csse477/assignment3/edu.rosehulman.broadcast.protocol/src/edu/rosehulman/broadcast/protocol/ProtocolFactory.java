package edu.rosehulman.broadcast.protocol.impl_v_1_0;

import Messages.EchoMessage;
import Messages.IMessage;
import Messages.QuitMessage;
import edu.rosehulman.broadcast.protocol.IProtocol;

public class ProtocolFactory {
	
	public static final String VERSON_1 = "RHBCAST1.0"; 
			
	public static Protocol GenerateProtocol(String version) {
		Protocol proto = new Protocol(version);
		
		if(version.equals(VERSON_1)) {
			proto.setProperty(IProtocol.PORT, "9000");
			proto.setProperty(IProtocol.CRLF, "\r\n");
			proto.setProperty(IProtocol.CHAR_SET, "UTF-8");
		
			proto.addMessage("ECHO", EchoMessage.class);
			proto.addMessage("QUIT", QuitMessage.class);
		}
		
		return proto;
	}
	
	
	
}
