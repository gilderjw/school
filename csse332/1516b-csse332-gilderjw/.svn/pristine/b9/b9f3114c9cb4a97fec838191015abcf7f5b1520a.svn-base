/* This is where you implement the core solution.
   by Jim Gildersleeve and Brian Suchy, 1-10-16
*/
#include "./signals.h"

void signalHandler(int t) {
  char c[50] = "ps -u ";
  char d[50] = "kill -usr1 ";
  char *pid = malloc(10 * sizeof(char));
  switch (t) {
  case SIGINT:
    printf("duces brah\n");
    exit(2);
    break;
  case SIGALRM:
    system("echo -n \"\\007\"");
    printf("beep\n");
    alarm(5);
    break;
  case SIGQUIT:
    sprintf(c, "%s %s ", c, name);
    printf("%s\n", c);
    system(c);
    printf("quit\n");
    break;
  case SIGUSR1:
    printf("Enter process to kill\n");
    scanf("%s", pid);
    sprintf(d, "%s %s", d, pid);
    printf("%s\n", d);
    system(d);
    break;
  }
  free(pid);
}

int main(int argc, char const *argv[]) {
  if (argc != 2) {
    printf("Need 1 parameter\n");
    return 1;
  }
  name = argv[1];

  printf("program is on yo\n");

  signal(SIGINT, &signalHandler);
  signal(SIGALRM, &signalHandler);
  signal(SIGQUIT, &signalHandler);
  signal(SIGUSR1, &signalHandler);

  alarm(5);
  while (1) {
  }
  return 0;
}
