/**
 * Lab09 Solution File - simple client for echo server
 * @author <your name here>
 * @author <your name here>
 */
 
#include <arpa/inet.h>
#include <dirent.h>
#include <errno.h>
#include <netdb.h>
#include <signal.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>


#define DEFAULTPORT 5555   /* Default port for socket connection */
#define MAX_STRING_LEN 100 /* Maximum length of string to echo */


int client_opt_verbose;     // print diagnostics when 1


/* usage - print description of command arguments */
void 
usage()
{
  fprintf(stderr, "Usage: client [-u] [-v] -h <server> [-p <port>]\n");
  fprintf(stderr, "-u for usage\n");
  fprintf(stderr, "-v for verbose mode\n");
  fprintf(stderr, "-h for server name\n");
  fprintf(stderr, "-p for server port\n");
  exit(1);
}


void
die_with_error(char *error_message)
{
  perror(error_message);
  exit(1);
}


/* resolve_name - convert a host name to an IP address */
unsigned long 
resolve_name (char name[])
{
  struct hostent *host;

  if ((host=gethostbyname(name)) == NULL) {
    fprintf(stderr, "gethostbyname() failed");
    exit(1);
  }

  return *((unsigned long *)host->h_addr_list[0]);
}


int
main(int argc, char *argv[])
{
  int sock;                         /* Socket  */
  unsigned short serv_port;         /* Server port */
  extern char *optarg;              /* option argument value */
  struct sockaddr_in serv_addr;     /* Server address */
  char *serv_name;                  /* Server host name */

  int ch;

  client_opt_verbose = 0;
  serv_port = DEFAULTPORT;

  /* Parse command line arguments */
  if (argc < 2) {
    usage();
  }

  while ((ch=getopt(argc, argv, "h:p:uv")) != -1) {
    switch (ch) {
    case 'h':
      serv_name = optarg;
      printf("Using server %s\n", serv_name);
      break;

    case 'p':
      serv_port = atoi(optarg);
      printf("Using port %d\n", serv_port);
      break;

    case 'v':
      client_opt_verbose = 1;
      break;
      
    case 'u':
      usage();
      break;
      
    default:
      usage();
      break;
      
    }
  }


  /* TODO: Create a TCP socket */
  int soc = socket(AF_INET, SOCK_STREAM, 0);



  /* Construct local address structure */
  memset(&serv_addr, 0, sizeof(serv_addr));       /* Zero out structure */
  serv_addr.sin_family = AF_INET;                 /* Internet address family */
  serv_addr.sin_addr.s_addr = resolve_name(serv_name); /* Server address */
  serv_addr.sin_port = htons(serv_port);          /* Local port */
  
  if (client_opt_verbose > 0) {
    printf("Handling client %s\n", inet_ntoa(serv_addr.sin_addr));
  }


  /* TODO: Connect to server socket */
	if(connect(soc, (struct sockaddr*) &serv_addr, sizeof(serv_addr))){
		printf("%s\n", "error connecting to server");
		exit(-1);
	}



  for (;;) { /* run until user enters "." to quit. */
    char input_string[MAX_STRING_LEN];
    char received_string[MAX_STRING_LEN];
    int received_bytes = 0;
    
    /* Prompt user for string to echo and read in the string.
     *  String may have spaces.
     */
    printf("\n\nEnter the string(\".\" to quit):");
    fgets(input_string, MAX_STRING_LEN, stdin);
		input_string[strlen(input_string)-1] = '\0';
    if (input_string[0] == '.') {
      if (client_opt_verbose > 0) {
        fprintf(stderr, " Quitting ....\n");
      }
      break;
    }

    if (client_opt_verbose > 0) {
      fprintf(stderr, " The string to send is %s ....\n", input_string);
    }


    /* TODO: Send string to server */
	if(send(soc, &input_string, MAX_STRING_LEN, 0) != MAX_STRING_LEN)
		printf("%s\n", "weird amount of data sent");



    /* TODO: Block until message received from the server */
	if(recv(soc, &received_string, MAX_STRING_LEN, 0) != MAX_STRING_LEN)
		printf("%s\n", "weird amount of data received");













    /* Print the received string. */
    fprintf(stdout, "%s", received_string);
	         
  }


  /* TODO: Close socket */
	close(soc);

}
