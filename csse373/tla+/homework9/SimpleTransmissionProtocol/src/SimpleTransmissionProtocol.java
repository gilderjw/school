import java.util.ArrayList;
import java.util.List;

public class SimpleTransmissionProtocol {
	int size;

	List<String> senderBuffer;
	List<String> receiverBuffer;
	
	String channel;
	
	public SimpleTransmissionProtocol(int size) {
		this.size = size;

		this.senderBuffer = new ArrayList<String>(size);
		this.receiverBuffer = new ArrayList<String>(size);
		
		for(int i = 0; i < size; ++i)
			this.senderBuffer.add("Data " + i);
		
		this.channel = "";
	}

	
	public void simulate() throws InterruptedException {
		Thread sender = new Thread() {
			public void run() {
				while(!senderBuffer.isEmpty()) {
					channel = senderBuffer.remove(0);
					
					try {
						Thread.sleep(200);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
				channel = null;
			}
		};
		
		Thread receiver = new Thread() {
			public void run() {
				String previous = "";
				while(channel != null) {
					if(!channel.equals(previous)) {
						receiverBuffer.add(channel);
						previous = channel;
					}
					
					try {
						Thread.sleep(200);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}					
				}
			}
		};
		
		receiver.start();
		sender.start();
		
		sender.join();
		receiver.join();
	}
	
	public static void main(String[] args) throws InterruptedException {
		SimpleTransmissionProtocol protocol = new SimpleTransmissionProtocol(5);
		System.out.println("Before Transmission");
		System.out.println("-------------------------------------");
		System.out.println("Sender Buffer 1: " + protocol.senderBuffer);
		System.out.println("Receiver Buffer 1: " + protocol.receiverBuffer);

		protocol.simulate();
		
		System.out.println("\nAfter Transmission");
		System.out.println("-------------------------------------");
		System.out.println("Sender Buffer 2: " + protocol.senderBuffer);
		System.out.println("Receiver Buffer 2: " + protocol.receiverBuffer);
	}
}
