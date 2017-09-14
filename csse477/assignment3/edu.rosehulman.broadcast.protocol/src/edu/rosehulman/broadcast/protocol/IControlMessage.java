package edu.rosehulman.broadcast.protocol;

import Messages.IMessage;

public interface IControlMessage extends IMessage {
	public String getUser();
}
