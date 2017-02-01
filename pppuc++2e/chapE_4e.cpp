// Header file section
#include<iostream>
using namespace std;

// define macro sphere
#define sphere(r) (((4.0/3) * 3.14159 * r * r))

// Begin main function
int main()
{
	cout << "----------------------------------" << endl;
	cout << " radius       volume of spheres   " << endl;
	cout << "----------------------------------" << endl;
	for(int i = 1; i<=10; i++)
	{
		// Display values
		cout << " r = " << i << "\t " << sphere(i) << endl;
	}
	// Pause system for a while
	system("pause");
	return 0;
}// end main function
