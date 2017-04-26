package hw4.set4;

public class ErrorReproducer {
	public static void main(String[] args) {
		Point3D p1 = new Point3D(-7, 1, 2);
		Point3D p2 = new Point3D(-7, 1, 5);
		PolarPoint p3 = new PolarPoint(new Point(-7, 1));
		
		
		boolean p1p2 = p1.equals(p2);
		boolean p2p3 = p2.equals(p3);
		boolean p1p3 = p3.equals(p1);
		
		System.out.printf("p1=p2: %s\n"
						+ "p2=p3: %s\n"
						+ "p1=p3: %s\n", p1p2, p2p3,p1p3);
		
	}
}
