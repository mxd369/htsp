/*
Exercise 2.1.1.

Find out whether DrScheme has operations for:
squaring a number;
computing the sine of an angle;
determining the maximum of two numbers.
*/

public class Exercise2_1_1 {

	public static void main(String[] args){

		//squaring a number
		double squaring_a_number = Math.pow(2,2);
		System.out.println("Should be 4.0");
		System.out.println(squaring_a_number);

		//compute sine of angle
		double compute_sine_angle = Math.sin(0);
		System.out.println("Should be 0.0");
		System.out.println(compute_sine_angle);

		//determine maximum of two numbers
		double a = 99999.0;
		double b = 88888.0;
		System.out.println("Should be a(99999.0)");
		System.out.println(Math.max(a,b));

	}
}