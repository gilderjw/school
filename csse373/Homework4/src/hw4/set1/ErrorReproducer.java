package hw4.set1;

public class ErrorReproducer {
	public static void main(String[] args) {
		//reflexive
		PolarPoint p = new PolarPoint(new Point(1, 1));
		
		boolean reflexive = p.equals(p);
		System.out.printf("Reflexive test: expected true, got %s\n", reflexive);

		//symmetric
		Point pnt = new Point(-8, -8);
		p = new PolarPoint(pnt);
		boolean pntp = pnt.equals(p);
		boolean ppnt = p.equals(pnt);
		
		System.out.printf("symmetry\n\tpoint=polar: %s\n\tpolar=point: %s", pntp, ppnt);
	}
}
