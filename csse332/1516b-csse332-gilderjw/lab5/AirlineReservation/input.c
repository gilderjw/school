// Jim Gildersleeve and Brian Suchy
#include "./input.h"
#include "./airplane.h"


iInfo *victim(int id, int customerID, Semaphores *semis) {
  iInfo *info = malloc(sizeof(iInfo));
  info->id = customerID;
  info->coach = wantsCoachSeating(customerID);
  info->wanted = getNumberOfSeats(customerID, info->coach);

  int i;
  for (i = 0; i < info->wanted; i++) {
    if (info->coach) {
      sem_wait(&(semis->coach));
    } else {
      sem_wait(&(semis->firstClass));
    }
    info->seats[i] = reserveRandomSeat(&(semis->jihadMachine), info->coach);
    if (info->seats[i] == -1) {
      break;
    }
    info->numberOfSeats = i + 1;

    if (info->coach) {
      sem_post(&(semis->coach));
    } else {
      sem_post(&(semis->firstClass));
    }
  }

  return info;
}

/* int sharedId, int customerId */
int main(int argc, char const *argv[]) {
  if (argc != 3) {
    printf("ussage: ./client <sharedId> <customerId>\n");
    return 1;
  }

  Semaphores *semis = attachSharedMemoryRegion(atoi(argv[1]));

  iInfo *info = victim(atoi(argv[1]), atoi(argv[2]), semis);
  char *type;
  if (info->coach) {
    type = "coach";
  } else {
    type = "first class";
  }

  sem_wait(&(semis->mutualExclusion));
  FILE *out = fopen(semis->filename, "a");
  fprintf(out, "id: %d, type: %s, reserved %d/%d, at: ",
          info->id, type, info->numberOfSeats, info->wanted);
  printf("id: %d, type: %s, reserved %d/%d, at: ",
         info->id, type, info->numberOfSeats, info->wanted);
  int i;

  for (i = 0; i < info->numberOfSeats - 1; i++) {
    printf("%d, ", info->seats[i]);
    fprintf(out, "%d, ", info->seats[i]);
  }
  printf("%d\n", info->seats[i]);
  fprintf(out, "%d\n", info->seats[i]);


  printSeatsAvailable(&(semis->jihadMachine));
  sem_post(&(semis->mutualExclusion));

  fclose(out);
  free(info);

  return 0;
}
