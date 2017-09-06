/* This is where you implement the core solution.
   by <Jim Gildersleeve and Brian Suchy>, <1-6-16>
*/
#include "./threads.h"
int buffer[MAX_N_SIZE][MAX_BUFFER_SIZE];
/* other global variable instantiations can go here */

/* Uses a brute force method of sorting the input list. */
void BruteForceSort(int inputList[], int inputLength) {
  int i, j, temp;
  for (i = 0; i < inputLength; i++) {
    for (j = i + 1; j < inputLength; j++) {
      if (inputList[j] < inputList[i]) {
        temp = inputList[j];
        inputList[j] = inputList[i];
        inputList[i] = temp;
      }
    }
  }
}

/* Uses the bubble sort method of sorting the input list. */
void BubbleSort(int inputList[], int inputLength) {
  char sorted = 0;
  int i, temp;
  while (!sorted) {
    sorted = 1;
    for (i = 1; i < inputLength; i++) {
      if (inputList[i] < inputList[i - 1]) {
        sorted = 0;
        temp = inputList[i - 1];
        inputList[i - 1] = inputList[i];
        inputList[i] = temp;
      }
    }
  }
}

/* Sudo merges two arrays.  Instead of having two arrays as input, it
 * merges positions in the overall array by reording data.  This saves
 * space. */
void Merge(int *array, int left, int mid, int right) {
  int tempArray[MAX_BUFFER_SIZE];
  int pos = 0, lpos = left, rpos = mid + 1;
  while (lpos <= mid && rpos <= right) {
    if (array[lpos] < array[rpos]) {
      tempArray[pos++] = array[lpos++];
    } else {
      tempArray[pos++] = array[rpos++];
    }
  }
  while (lpos <= mid)  tempArray[pos++] = array[lpos++];
  while (rpos <= right)tempArray[pos++] = array[rpos++];
  int iter;
  for (iter = 0; iter < pos; iter++) {
    array[iter + left] = tempArray[iter];
  }
  return;
}

/* Divides an array into halfs to merge together in order. */
void MergeSort(int *array, int left, int right) {
  int mid = (left + right) / 2;
  if (left < right) {
    MergeSort(array, left, mid);
    MergeSort(array, mid + 1, right);
    Merge(array, left, mid, right);
  }
}

/* Merges the sorted files into an output file using the two
 * dimensional output buffer */
void MergeAndOutputBuffer(char* outputFile) {
  FILE *outFile = fopen(outputFile, "w");
  if (outFile == NULL) {
    fprintf(stderr, "Unable to open the file %s\n", outputFile);
    exit(2);
  }
  int i;
  int64_t j;
  int indexes[MAX_N_SIZE], maxIndexes[MAX_N_SIZE];
  for (i = 0; i < n; i++) {
    for (j = 0; buffer[i][j] > 0; j++) {
    }
    maxIndexes[i] = j;
    indexes[i] = 0;
  }
  int smallIndex;
  j = 0;
  while (1) {
    smallIndex = -1;
    for (i = 0; i < n; i++) {
      if (indexes[i] < maxIndexes[i]) {
        smallIndex = i;
        break;
      }
    }
    if (smallIndex == -1) {
      break;
    }
    for (i = 1; i < n; i++) {
      if ((indexes[i] < maxIndexes[i]) &&
          (buffer[i][indexes[i]] < buffer[smallIndex][indexes[smallIndex]])) {
        smallIndex = i;
      }
    }
    fprintf(outFile, "%d\n", buffer[smallIndex][indexes[smallIndex]]);
    fflush(outFile);
    indexes[smallIndex]++;
    j++;
  }
  fclose(outFile);
}

void *bubbleSort(void *param) {
  struct timeval start, end;
  gettimeofday(&start, NULL);

  SortParam* params = (SortParam*) param;
  BubbleSort(params->inputList, params->size);

  gettimeofday(&end, NULL);
  int64_t endi =  1000000 * end.tv_sec + end.tv_usec;
  int64_t starti =  1000000 * start.tv_sec + start.tv_usec;
  printf("Time for bubbleSort at id %d= %"PRId64" microseconds.\n", params->id,
         endi - starti);
  runtimes[params->id] = endi - starti;
  pthread_exit(NULL);
}
void *bruteForceSort(void *param) {
  SortParam* params = (SortParam*) param;


  struct timeval start, end;
  gettimeofday(&start, NULL);


  BruteForceSort(params->inputList, params->size);

  gettimeofday(&end, NULL);
  int64_t endi =  1000000 * end.tv_sec + end.tv_usec;
  int64_t starti =  1000000 * start.tv_sec + start.tv_usec;
  printf("Time for bruteforceSort at id %d = %"PRId64" microseconds\n",
         params->id, endi - starti);


  runtimes[params->id] = endi - starti;
  pthread_exit(NULL);
}

void *mergeSort(void * param) {
  MergeParams* params = (MergeParams*) param;


  struct timeval start, end;
  gettimeofday(&start, NULL);


  MergeSort(params->array, params->left, params->right);

  gettimeofday(&end, NULL);
  int64_t endi =  1000000 * end.tv_sec + end.tv_usec;
  int64_t starti =  1000000 * start.tv_sec + start.tv_usec;
  printf("Time for merge at id %d= %"PRId64" microseconds.\n", params->id,
         endi - starti);
  runtimes[params->id] = endi - starti;
  pthread_exit(NULL);
}

void average() {
  averages bubbleAvg = {0, 0, 0}, mergeAvg = {0, 0, 0},
           bruteforceAvg = {0, 0, 0};
  int j = 0;
  for (j = 0; j < n; j++) {
    if (j < (int)(n / 3)) {
      if (bruteforceAvg.max == 0)
        bruteforceAvg.max = runtimes[j];
      if (bruteforceAvg.min == 0)
        bruteforceAvg.min = runtimes[j];

      bruteforceAvg.count++;
      if (bruteforceAvg.max < runtimes[j]) {
        bruteforceAvg.max = runtimes[j];
      }
      if (bruteforceAvg.min > runtimes[j]) {
        bruteforceAvg.min = runtimes[j];
      }
      bruteforceAvg.mean += runtimes[j];
    } else if (j < 2 * (n / 3)) {
      if (bubbleAvg.max == 0)
        bubbleAvg.max = runtimes[j];
      if (bubbleAvg.min == 0)
        bubbleAvg.min = runtimes[j];

      bubbleAvg.count++;
      if (bubbleAvg.max < runtimes[j]) {
        bubbleAvg.max = runtimes[j];
      }
      if (bruteforceAvg.min > runtimes[j]) {
        bubbleAvg.min = runtimes[j];
      }
      bubbleAvg.mean += runtimes[j];
    } else {
      if (mergeAvg.max == 0)
        mergeAvg.max = runtimes[j];
      if (mergeAvg.min == 0)
        mergeAvg.min = runtimes[j];

      mergeAvg.count++;
      if (mergeAvg.max < runtimes[j]) {
        mergeAvg.max = runtimes[j];
      }
      if (mergeAvg.min > runtimes[j]) {
        mergeAvg.min = runtimes[j];
      }
      mergeAvg.mean += runtimes[j];
    }
  }
  bruteforceAvg.mean = bruteforceAvg.mean / bruteforceAvg.count;
  bubbleAvg.mean = bubbleAvg.mean / bubbleAvg.count;
  mergeAvg.mean = mergeAvg.mean / bubbleAvg.count;

  printf("bruteForceSort max: %d, min: %d, average: %f\n",
         bruteforceAvg.max, bruteforceAvg.min, bruteforceAvg.mean);
  printf("bubbleSort max: %d, min: %d, average: %f\n",
         bubbleAvg.max, bubbleAvg.min, bubbleAvg.mean);
  printf("mergeSort max: %d, min: %d, average: %f\n",
         mergeAvg.max, mergeAvg.min, mergeAvg.mean);
}
int main(int argc, char const *argv[]) {
  if (argc != 4) {
    printf("invalid number of arguments. numberThreads inFile outFile\n");
    return 1;
  }

  char outstr[10];
  strcpy(outstr, argv[3]);
  n = atoi(argv[1]);

  FILE *inFile = fopen(argv[2], "r");
  FILE *outFile = fopen(argv[3], "w");

  if (inFile == NULL) {
    printf("invalid input file\n");
    return 2;
  }

  if (outFile == NULL) {
    printf("invalid output file\n");
    return 3;
  }

  int totalFile[MAX_BUFFER_SIZE];

  int i = 0;
  /* read the file */
  while (!feof(inFile)) {
    fscanf(inFile, "%d\n", &totalFile[i]);
    i++;
  }

  SortParam *params  = malloc(n * sizeof(SortParam));
  MergeParams *mparams = malloc(n * sizeof(MergeParams));

  pthread_t *threads = malloc(n * sizeof(pthread_t));
  int numberEntries = i / n;

  int j;
  for (j = 0; j < n; j++) {
    if (j < (int)(n / 3)) {
      (params + j)->inputList = &totalFile[j * numberEntries];
      (params + j)->size = numberEntries;
      (params + j)->id = j;
      int rc = pthread_create((threads + j), NULL, &bruteForceSort,
                              (void *) (params + j));
      if (rc) {
        printf("thread not created\n");
        return 4;
      }
    } else if (j < (2 * (int)(n / 3))) {
      (params + j)->inputList = &totalFile[(int) (j * numberEntries)];
      (params + j)->size = numberEntries;
      (params + j)->id = j;

      int rc = pthread_create((threads + j), NULL, &bubbleSort,
                              (void *) (params + j));
      if (rc) {
        printf("thread not created\n");
        return 4;
      }
    } else {
      (mparams + j)->array = &totalFile[(int) (j * numberEntries)];
      (mparams + j)->left = 0;
      (mparams + j)->right = numberEntries - 1;
      (mparams + j)->id = j;


      int rc = pthread_create((threads + j), NULL, &mergeSort,
                              (void *) (mparams + j));

      if (rc) {
        printf("thread not created\n");
        return 4;
      }
    }
  }

  for (j = 0; j < n; j++) {
    pthread_join(*(threads + j), NULL);
  }


  for (i = 0; i < n; i++) {
    for (j = 0; j < numberEntries; j++) {
      buffer[i][j] = totalFile[((int) (i * numberEntries)) + j];
    }
  }


  MergeAndOutputBuffer(outstr);

  average();

  free(params);
  free(mparams);
  free(threads);

  fclose(inFile);
  fclose(outFile);
  return 0;
}
