package hw4.set3;

public class ErrorReproducer {
	public static void main(String[] args) {
		Point3D p1 = new Point3D(-5, -4, -7);
		PolarPoint p2 = new PolarPoint(new Point(-5, -4));
		Point3D p3 = new Point3D(-5, -4, -6);
		
		boolean p1p2 = p1.equals(p2);
		boolean p2p3 = p2.equals(p3);
		boolean p1p3 = p1.equals(p3);
		
		System.out.printf("p1=p2: %s\n"
						+ "p2=p3: %s\n"
						+ "p1=p3: %s\n", p1p2, p2p3,p1p3);
		
	}
}
