package Messages;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.StringTokenizer;

import edu.rosehulman.broadcast.protocol.IEchoMessage;
import edu.rosehulman.broadcast.protocol.IProtocol;
import edu.rosehulman.broadcast.protocol.ProtocolException;
import edu.rosehulman.broadcast.protocol.impl_v_1_0.Protocol;

public class EchoMessage implements IEchoMessage {
	private int size;
	private String user;
	private String content;
	private String CLRF;
	private String CHAR_SET;
	private String command;
	
	
	public void setUser(String user) {
		this.user = user;
	}
	
	@Override
	public int getSize() {
		return this.size;
	}

	@Override
	public String getCommand() {
		return this.command;
	}
	
	@Override
	public String getUser() {
		return this.user;
	}

	@Override
	public String getContent() {
		return this.content;
	}

	@Override
	public void fromBuffer(byte[] buffer) throws ProtocolException {
		String packet = new String(buffer, Charset.forName(this.CHAR_SET));
		StringTokenizer tokenizer = new StringTokenizer(packet);

		String crlf = this.CLRF;
		try {
			this.user = tokenizer.nextToken(crlf);
			this.content = tokenizer.nextToken(crlf);
			this.size = buffer.length;
		}
		catch(Exception e) {
			throw new ProtocolException(e);
		}
	}

	@Override
	public byte[] toBuffer() throws ProtocolException {
		String crlf = this.CLRF;

		StringBuilder builder = new StringBuilder();
		builder.append(this.user);
		builder.append(crlf);
		builder.append(content);
		builder.append(crlf);
		
		try {
			String buffer = builder.toString();
			return buffer.getBytes(this.CHAR_SET);
		} 
		catch (UnsupportedEncodingException e) {
			throw new ProtocolException(e);
		}
	}

	@Override
	public void setContent(String content) {
		this.content = content;
		
		int crlfLen = this.CLRF.length();
		this.size = user.length() + content.length() + crlfLen * 2;
	}

	@Override
	public void setParams(String command, String CLRF, String CHAR_SET) {
		this.command = command;
		this.CLRF = CLRF;
		this.CHAR_SET = CHAR_SET;
		
	}
}
