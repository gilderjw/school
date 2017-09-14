package Messages;

import edu.rosehulman.broadcast.protocol.ProtocolException;

public interface IMessage {
	
	
	public void setContent(String m);
	public String getContent();
	public void setUser(String m);
	public abstract int getSize();
	public abstract String getCommand();
	public abstract void fromBuffer(byte[] buffer) throws ProtocolException;
	public abstract byte[] toBuffer() throws ProtocolException;
	void setParams(String command, String CLRF, String CHAR_SET);
}
