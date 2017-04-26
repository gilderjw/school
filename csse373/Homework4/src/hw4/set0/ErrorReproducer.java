package hw4.set0;


public class ErrorReproducer {
	public static void main(String[] args) throws Exception {
		Point p = new Point(1, 1);
		
		boolean expected = false;
		boolean actual = p.equals(null);
		
		System.out.printf("Expected %b Actual %b", expected, actual);
	}
}
