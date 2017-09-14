package edu.rosehulman.server;

import edu.rosehulman.broadcast.protocol.IProtocol;
import edu.rosehulman.broadcast.protocol.impl_v_1_0.Protocol;
import edu.rosehulman.broadcast.protocol.impl_v_1_0.ProtocolFactory;

public class BroadcastServerApp {
	public static void main(String[] args) {
		IProtocol protocol = ProtocolFactory.GenerateProtocol(ProtocolFactory.VERSON_1);
		BroadcastServer server = new BroadcastServer(protocol);
		server.execute();
	}
}
