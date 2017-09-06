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


int server_opt_verbose;     // print diagnostics when 1


void
usage()
{
  fprintf(stderr, "Usage: server [-u] [-v] [-p <port>]\n");
  fprintf(stderr, "-u for usage\n");
  fprintf(stderr, "-v for verbose mode\n");
  fprintf(stderr, "-p for server port\n");
  exit(1);
}


void
die_with_error(char *errorMessage)
{
  perror(errorMessage);
  exit(1);
}


int
main(int argc, char *argv[])
{
  int sock;                         /* Socket  */
  unsigned short serv_port;         /* Server port */
  extern char *optarg;              /* option argument value */
  int optch;                        /* option flag */
  struct sockaddr_in serv_addr;     /* Local address */

  server_opt_verbose = 0;
  serv_port = DEFAULTPORT;

  if (argc < 1) {
    usage();
  }

  while ((optch = getopt(argc, argv, "p:uv")) != -1) {
    switch (optch) {
    case 'p':
      serv_port = atoi(optarg);
      printf("Using port %d\n", serv_port);
      break;

    case 'v':
      server_opt_verbose = 1;
      break;

    case 'u':
      usage();
      break;

    default:
      usage();
    }
  }
  

  /* TODO: Create a TCP socket - the welcome socket */
  int soc = socket(AF_INET, SOCK_STREAM, 0);
  

  
  /* Construct local address structure */
  memset(&serv_addr, 0, sizeof(serv_addr));      /* Zero out structure */
  serv_addr.sin_family = AF_INET;                /* Internet address family */
  serv_addr.sin_addr.s_addr = htonl(INADDR_ANY); /* Any incoming interface */
  serv_addr.sin_port = htons(serv_port);         /* Local port */
  

  /* TODO: Bind to the local address */
 	if(bind(soc, (struct sockaddr*) &serv_addr, sizeof(serv_addr)))
 		printf("%s\n", "failure to bind, are you root?");




  /* TODO: Wait for incoming requests */  
 	if(listen(soc, 5))
 		printf("%s\n", "Failure to open listen server");

	int kek;   
  for (;;) { /* run forever */
    char received_string[MAX_STRING_LEN];
    int size;


    /* TODO: Create a client socket for an accepted connection */
 	

    /* TODO: While the client sends data:
     *        - receive the string to echo 
     *        - send the data back
     */

	int conn = accept(soc, (struct sockaddr*) &serv_addr, &kek );
    if(conn < 0){
    	printf("%s %d\n", "accept failed", errno);
    }
    int len = 2;
    while(len != 0){


		int len = recv(conn, &received_string, MAX_STRING_LEN, 0);
		
		if(len == 0){
			printf("%s\n", "they closed connection");
			close(conn);
			break;
		}


		send(conn, &received_string, len, 0);
		// 	printf("%s\n", "they closed the socket");
		// 	close(conn);
		// } else{
			printf("%s\n", received_string);
		// }



		fprintf(stdout, "%s", received_string);

	}


	







    /* TODO: Close the socket for the client */
	
  }


  /* TODO: Close the welcome socket */
  close(soc);
}
