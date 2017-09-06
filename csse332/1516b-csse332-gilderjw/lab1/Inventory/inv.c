/* This is where you implement the core solution.
   by <Jim Gildersleeve>, <12-2-2015>
*/
#include <stdio.h>
#include <stdlib.h>
#include "./inv.h"


int main(int argc, char const *argv[]) {
  if (argc != 3) {
    printf("Invalid number of parameters.\n");
    return 1;
  }

  struct Inventory items[100];

  FILE *input = fopen(argv[1], "r");
  FILE *output = fopen(argv[2], "w");

  if (input == NULL) {
    printf("Invalid file as first parameter\n");
    return 2;
  }

  int index = 0;
  while (!feof(input)) {
    struct Inventory item;
    int itemNumber, qtyOnHand, month, year;
    float price;
    fscanf(input, "%d %d %f %d/%d", &itemNumber, &qtyOnHand,
     &price, &month, &year);

    item.date.month = month;
    item.date.year = year;
    item.itemNumber = itemNumber;
    item.qtyOnHand = qtyOnHand;
    item.price = price;

    items[index] = item;
    index++;
  }

  printf("ItemNumber\tQuantity\tprice\texpiration date\n");
  int i;
  for (i = 0; i < index - 1; i++) {
    struct Inventory tmp = items[i];
    printf("%d\t\t%d\t\t%.2f\t\t%d/%d\n", tmp.itemNumber, tmp.qtyOnHand,
      tmp.price, tmp.date.month, tmp.date.year);


    if ((tmp.date.year > 2008) ||
      ((tmp.date.year == 2008) &&
        (tmp.date.month > October))) {
        fprintf(output, "%d %d %f %d/%d\n", tmp.itemNumber,
          tmp.qtyOnHand, tmp.price, tmp.date.month, tmp.date.year);
    }
  }
  fclose(input);
  fclose(output);
  return 0;
}
