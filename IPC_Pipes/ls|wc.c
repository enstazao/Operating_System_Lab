#include <stdio.h>

#include <unistd.h>
// ls | wc Implementation parent will write on std output and the child will be going to read from std input
// dup2 function will replace std input with teh pfd[0] now any input you type goes to pfd[0]. or 0 file descriptor

int main(int argc, char * argv[]) {
    int pfd[2];
    pipe(pfd);
    int pid = fork();
    if (pid == 0) {
        close(pfd[1]);
        dup2(pfd[0], 0);
        close(pfd[0]);
        execlp("wc", "wc", (char *) 0);
    } else {
        close(pfd[0]);
        dup2(pfd[1], 1);
        close(pfd[1]);
        execlp("ls", "ls", (char *) 0);
    }
    return 0;
}