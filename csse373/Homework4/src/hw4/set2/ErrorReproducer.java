package hw4.set2;

public class ErrorReproducer {
	public static void main(String[] args) {
		//symmetry 
		PolarPoint pp = new PolarPoint(new Point(2, 5));
		Point3D p3d = new Point3D(2, 5, 6);
		
		boolean forward = pp.equals(p3d);
		boolean back = p3d.equals(pp);
		
		System.out.printf("polar=3d:%s\n3d=polar:%s\n", forward, back);
		
	}
}
