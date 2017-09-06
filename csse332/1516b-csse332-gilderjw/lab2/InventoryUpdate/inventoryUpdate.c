/* This is the shell you must fill in or replace in order to complete
   this project.  Do not forget to include your name in the initial
   comments of this file.
   jim gildersleeve & brian suchy 12-9-15
*/
#include <stdio.h>
#include <stdlib.h>
#include "./inv.h"

void saveInventory(Inventory* arrayPtr, int size, FILE* output);
void printInventory(Inventory* arrayPtr, int size);
int populateArray(Inventory** arrayPtr, int *size, FILE *inputFile);
int deleteExpiredItems(Inventory** arrayPtr, int *size, int validEntries);


void saveInventory(Inventory* arrayPtr, int size, FILE* output) {
  int i;
  for (i = 0; i < size - 1; i++) {
    Inventory tmp = *(arrayPtr + i);
    fprintf(output, "%d %d %.2f %d/%d\n", tmp.itemNumber,
            tmp.qtyOnHand, tmp.price, tmp.date.month, tmp.date.year);
  }
}

int deleteExpiredItems(Inventory** arrayPtr, int *size, int validEntries) {
  Inventory *tmp = malloc(validEntries * sizeof(Inventory));
  int i, tmpCount = 0;

  for (i = 0; i < validEntries - 1; i++) {
    Inventory kek = *(*arrayPtr + i);
    if (kek.date.year >= 2005) {
      *(tmp + tmpCount) = *(*arrayPtr + i);
      tmpCount++;
    }
  }

  tmp = realloc(tmp, tmpCount * sizeof(Inventory));
  *arrayPtr = tmp;
  *size = tmpCount + 1;
  return tmpCount + 1;
}

void printInventory(Inventory*  arrayPtr, int size) {
  printf("ItemNumber\tQuantity\tprice\texpiration date\n");
  int i;
  for (i = 0; i < size - 1; i++) {
    Inventory tmp = *(arrayPtr + i);
    printf("%d\t\t%d\t\t%.2f\t\t%d/%d\n", tmp.itemNumber, tmp.qtyOnHand,
           tmp.price, tmp.date.month, tmp.date.year);
  }
}

int populateArray(Inventory** arrayPtr, int *size, FILE *inputFile) {
  int index = 0;
  while (!feof(inputFile)) {
    Inventory item;
    int itemNumber, qtyOnHand, month, year;
    float price;
    fscanf(inputFile, "%d %d %f %d/%d", &itemNumber, &qtyOnHand,
           &price, &month, &year);

    item.date.month = month;
    item.date.year = year;
    item.itemNumber = itemNumber;
    item.qtyOnHand = qtyOnHand;
    item.price = price;


    /* too big */
    if (index > (*size / sizeof(Inventory) - 1)) {
      *arrayPtr = realloc(*arrayPtr, *size * 2);
      *size = *size * 2;
    }

    *(*arrayPtr + index) = item;
    index++;
  }
  return index;
}

int main(int argc, char const *argv[]) {
  if (argc != 3) {
    printf("Invalid number of parameters\n");
    return 1;
  }

  FILE *input = fopen(argv[1], "r");
  FILE *output = fopen(argv[2], "w");

  if (input == NULL) {
    printf("Invalid file as first parameter\n");
    return 2;
  }

  int size = (2 * sizeof(Inventory));
  Inventory* inv = malloc(size);

  int valid = populateArray(&inv, &size, input);

  printInventory(inv, valid);

  valid = deleteExpiredItems(&inv, &size, valid);

  printInventory(inv, valid);

  printf("size: %d\n", size);
  saveInventory(inv, size, output);

  if (output == NULL) {
    printf("invalid second parameter\n");
    return 3;
  }

  free(output);
  free(input);
  free(inv);
  return 0;
}
