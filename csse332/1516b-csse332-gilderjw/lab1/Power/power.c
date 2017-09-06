/* This is the shell you must fill in or replace in order to complete
   this project.  Do not forget to include your name in the initial
   comments of this file.
   by <Jim Gildersleeve>, <12-2-2015>
*/
#include <stdio.h>
#include <math.h>

int main(int argc, char const *argv[]) {
  int y;
  float x;

  printf("%s\n", "Enter a float and an integer");

  scanf("%f %d", &x, &y);

  float ans = 1;
  int inc;

  if (y != 0) {
    float multi;

    if (y < 0) {
      multi = 1/x;
      inc = 1;
    } else {
      multi = x;
      inc = -1;
    }

    int tmp = y;
    while (tmp != 0) {
      ans *= multi;
      tmp += inc;
    }
  }

  printf("%f to the power of %d equals %.2f\n", x, y, ans);
  ans = pow(x, y);
  printf("%f to the power of %d equals %.2f\n", x, y, ans);

  return 0;
}
