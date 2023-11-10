//https://web.stanford.edu/class/archive/cs/cs110/cs110.1196/static/lectures/06-Execvp-Pipes-and-Interprocess-Communication/lecture-06-execvp-pipes-interprocess-communication.pdf
//+
//https://www.cs.tufts.edu/comp/21/notes/processes/processes_c.shtml

#include<stdio.h>
#include<stddef.h>


#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
#include<sys/types.h>

static const size_t kNumChildren = 5;
static size_t numDone = 0;

static void reapChild(int unused) {
waitpid(-1, NULL, 0);
numDone++ ;
}

int main(int argc, char *argv[]) {
printf("Let my five children play while I take a nap.\n");
signal(SIGCHLD, reapChild);
for (size_t kid = 1; kid <= 5; kid++) {
if (fork() == 0) {
sleep(3 * kid); // sleep emulates "play" time
printf("Child #%zu tired... returns to dad.\n", kid);

//printf("\n In child %d \n",getpid());
execl("0.hello]0001",NULL);

return 0;
}
}

// code below is a continuation of that presented on the previous slide
while (numDone < kNumChildren) {
printf("At least one child still playing, so dad nods off.\n");
sleep(5);
printf("Dad wakes up! ");
}
printf("All children accounted for. Good job, dad!\n");
return 0;
}

