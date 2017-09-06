/* This is the shell you must fill in or replace in order to complete
   this project.  Do not forget to include your name in the initial
   comments in this file.
   Jim Gildersleeve and Brian Suchy
*/

#include "./queue.h"

void deleteQueue(Queue *Aqueue) {
  if (Aqueue->head == NULL) {
    Aqueue->tail = NULL;
    return;
  }


  Node* n = Aqueue->head;

  while (n->next != Aqueue->tail) {
    Node* tmp = n;
    n = n->next;
    free(tmp);
  }
  Aqueue->head = NULL;
  Aqueue->tail = NULL;
}

Bool enqueue(Queue *Aqueue, int processId, int arrivalTime,
             int serviceTime, int remainingTime) {
  Node* n = malloc(sizeof(Node));

  if (n == NULL) {
    return FALSE;
  }

  n->processId = processId;
  n->arrivalTime = arrivalTime;
  n->serviceTime = serviceTime;
  n->remainingTime = remainingTime;


  if (Aqueue->head == NULL) {
    Aqueue->head = n;
    Aqueue->tail = n;
    n->next = NULL;
    return TRUE;
  }

  Aqueue->tail->next = n;
  Aqueue->tail = n;
  return TRUE;
}

int printQueue(Queue Aqueue) {
  if (queueSize(Aqueue) == 0) {
    return 0;
  }

  Node *n = Aqueue.head;
  int i = 0;
  while (n->next != NULL) {
    printf("processId: %d arrivalTime %d serviceTime: %d remainingTime: %d\n",
           n->processId, n->arrivalTime, n->serviceTime, n->remainingTime);
    i++;
    n = n->next;
  }
  printf("processId: %d arrivalTime %d serviceTime: %d remainingTime: %d\n",
         n->processId, n->arrivalTime, n->serviceTime, n->remainingTime);
  return i + 1;
}

int queueSize(Queue Aqueue) {
  if (Aqueue.head == NULL) {
    return 0;
  }
  Node *n = Aqueue.head;
  int i = 0;
  while (n != NULL) {
    i++;
    n = n->next;
  }
  return i;
}

Node dequeue(Queue *Aqueue) {
  if (queueSize(*Aqueue) == 0) {
    Node n;
    n.processId = -1;
    return n;
  }
  Node ret = *(Aqueue->head);
  Node *next = Aqueue->head->next;
  free(Aqueue->head);
  Aqueue->head = next;
  if (queueSize(*Aqueue) == 0) {
    Aqueue->tail = NULL;
  }
  return ret;
}
