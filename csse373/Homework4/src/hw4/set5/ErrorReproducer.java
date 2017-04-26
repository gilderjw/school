package hw4.set5;

public class ErrorReproducer {
	public static void main(String[] args) {
		String name = "";
		Member p1 = new Member(name, -4, 7);
		Member p2 = new Member(name, -4, 6);
		Member p3 = new Member(name, 7, 6);
		
		
		boolean p1p2 = p1.equals(p2);
		boolean p2p3 = p2.equals(p3);
		boolean p1p3 = p3.equals(p1);
		
		System.out.printf("p1=p2: %s\n"
						+ "p2=p3: %s\n"
						+ "p1=p3: %s\n", p1p2, p2p3,p1p3);
	}
}
