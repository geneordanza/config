""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Quick Abbreviations
" Author: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Vim key mappings and abbreviations for C Language
" To avoid using abbreviation after the string -- Ctrl-v
" Note: If you want the abbreviation to only function when you're in Command
" mode, use ':cab'
""""""""""""""""""""""""""""""""""""""""""""""""

" C Language Shortcuts
"-----------------
:ab c*            char*
:ab i*            int*
:ab v*            void*
:ab f*            FILE*
:ab sizet         size_t
:ab ssizet        ssize_t
:ab file*         FILE*
:ab eof           EOF
:ab null          NULL
:ab not>          !=
:ab \0            '\0'<esc><left>
:ab 'n            '\n'<esc><left>
:ab sizeof        sizeof (<+++>)<esc>
:ab r0            return 0;<esc>
:ab r1            return 1;<esc>
:ab rnull         return NULL;<esc>
:ab e0            exit (0);<esc>
:ab e1            exit (1);<esc>
":ab {_ {<enter><enter>}<esc><Up><Up><Up><cr>
:ab {_            {<enter>}<esc><Up><Up><Up><cr>
:ab /*            /* <+++> */<esc>
:ab if>           if (<+++> > <+++>
:ab if<           if (<+++> < <+++>
:ab ifeq          if (<+++> == <+++><esc>
:ab ifnot         if (<+++> != <+++><esc>
:ab elseif        else if (<+++>)
:ab foriloop      for (i = 0; i < <+++>; i++)<esc>
:ab dowhile       do {<cr><+++><cr>} while (<+++>);
:ab whiletrue     while (TRUE)
:ab whileeq       while (<+++> == <+++><esc>
:ab whilenot      while (<+++> != <+++>
:ab whileloop0    while (<+++>)
:ab whileloop1    while (<+++>) {<cr><+++><cr>}
:ab typestruct    typedef struct <+++> {<cr><+++><cr>} <+++>;

" Common Macros
:ab #i      #include
:ab #d      #define
:ab dtrue1  #define  TRUE  1<esc>
:ab dfalse0 #define  FALSE 0<esc>
:ab socketprotocol   #define     DEFAULT_PROTOCOL  0<esc>

" Common Header Files and Libraries
:ab stdio>  #include <stdio.h><esc>
:ab string> #include <string.h><esc>
:ab stdlib> #include <stdlib.h><esc>
:ab unistd> #include <unistd.h><esc>
:ab fcntl>  #include <fcntl.h><esc>

" Slightly-used Header Files and Libraries
:ab utmp>         #include <utmp.h><esc>
:ab pwd>          #include <pwd.h><esc>
:ab dirent>       #include <dirent.h><esc>
:ab ctype>        #include <ctype.h><esc>
:ab time>         #include <time.h><esc>
:ab errno>        #include <errno.h><esc>
:ab signal>       #include <signal.h><esc>
:ab getopt>       #include <getopt.h><esc>
:ab netdb>        #include <netdb.h><esc>
:ab assert>       #include <assert.h><esc>
:ab malloch>      #include <malloc.h><esc>
:ab pthread>      #include <pthread.h><esc>
:ab inet>         #include <arpa/inet.h><esc>
:ab in>           #include <netinet/in.h><esc>
:ab stat>         #include <sys/stat.h><esc>
:ab types>        #include <sys/types.h><esc>
:ab wait>         #include <sys/wait.h><esc>
:ab socket>       #include <sys/socket.h><esc>
:ab un>           #include <sys/un.h><esc>
:ab shm>          #include <sys/shm.h><esc>
:ab ipc>          #include <sys/ipc.h><esc>
:ab mman>         #include <sys/mman.h><esc>
:ab sem>          #include <sys/sem.h><esc>
:ab uio>          #include <sys/uio.h><esc>

" Function Shortcuts
:ab imain      int main ()<cr>{<cr><+++><cr>}<esc>
:ab mainargs   int main (int argc, char** argv)<cr>{<cr><+++><cr>}<esc>
:ab vfunc      <+++> (<+++>)<cr>{<cr><+++><cr>}<esc>
:ab ifunc      int <+++> (<+++>)<cr>{<cr><+++><cr>}<esc>
:ab cfunc      char <+++> (<+++>)<cr>{<cr><+++><cr>}<esc>
:ab malloc     malloc (sizeof(<+++>));<esc>
:ab perror     perror ("<+++>");<cr>exit (EXIT_FAILURE);<esc>
:ab strerror   strerror(errno)<esc>
:ab abort      abort();<esc>
:ab sleep      sleep(<+++>);<esc>

" Low-level File I/0
:ab openio     open (<+++>, <+++>);<esc>
:ab openr      open (<+++>, O_RDONLY);<esc>
:ab openw      open (<+++>, O_WRONLY<+++>);<esc>
:ab ondelay    O_NDELAY
:ab openrw     open (<+++>, O_CREAT \| O_RDWR, <+++>);<esc>
:ab writeio    write (<+++>);<esc>
:ab readio     read (<+++>);<esc>
:ab connectio  connect (<+++>);<esc>
:ab lseek      lseek (<+++>, <+++>, SEEK_SET);<esc>


" ANSI Standard I/0 Library
:ab fopenr     fopen (<+++>, "r");<esc>
:ab fopenw     fopen (<+++>, "w");<esc>
:ab fopena     fopen (<+++>, "a");<esc>
:ab fopenr+    fopen (<+++>, "r+");<esc>
:ab fopenw+    fopen (<+++>, "w+");<esc>
:ab fopena+    fopen (<+++>, "a+");<esc>
:ab fclose     fclose (<+++>);<esc>
:ab fprintf    fprintf (<+++>, "<+++>\n", <+++>);<esc>
:ab fprintf0   fprintf (stdin, "<+++>", <+++>);<esc>
:ab fprintf1   fprintf (stdout, "<+++>\n", <+++>);<esc>
:ab fprintf2   fprintf (stderr, "<+++>\n", <+++>);<esc>
:ab fprintfsn  fprintf (<+++>, "<+++>%s\n", <+++>);<esc>
:ab fputc1     fputc (<+++>, stdin);<esc>
:ab fputc2     fputc (<+++>, stderr);<esc>
:ab printf     printf (<+++>);<esc>
:ab printfn    printf ("<+++>\n");<esc>
:ab printfn1   printf ("\n");<esc><up>
:ab printfn2   printf ("\n<+++>\n");<esc>
:ab printfns   printf ("\n<+++>%s", <+++>);<esc>
:ab printfsn   printf ("<+++>%s\n", <+++>);<esc>
:ab printfnd   printf ("\n<+++> %<+++>", <+++>);<esc>
:ab printfdn   printf ("<+++> %<+++>\n", <+++>);<esc>
:ab sprintf    sprintf (<+++>, "<+++>",<+++>);
:ab scanfd     scanf ("%d", &<+++>);<esc>
:ab scanfs     scanf ("%s", <+++>);<esc>
:ab strerror   strerror (errno)<esc>
:ab dlopen     dlopen (<+++>, RTLD_NOW);<esc>


" IPC Communication
:ab shmget1    shmget (IPC_PRIVATE, <+++>
:ab shmget2    IPC_CREAT \| IPC_EXCL \| S_IRUSR \| S_IWUSR);<esc>

" Networking and Sockets
:ab af_unix       AF_UNIX
:ab af_local      AF_LOCAL
:ab af_inet       AF_INET
:ab pf_local      PF_LOCAL
:ab pf_inet       PF_INET
:ab sock_stream   SOCK_STREAM
:ab sock_dgram    SOCK_DGRAM
:ab localsocketstream  socket(PF_LOCAL, SOCK_STREAM, DEFAULT_PROTOCOL);<esc><up>
:ab localsocketdgram   socket(PF_LOCAL, SOCK_DGRAM, DEFAULT_PROTOCOL);<esc><up>
:ab netsocketstream    socket(PF_INET, SOCK_STREAM, DEFAULT_PROTOCOL);<esc><up>
:ab netsocketdgram     socket(PF_INET, SOCK_DGRAM, DEFAULT_PROTOCOL);<esc><up>
:ab hostent*      struct hostent* <+++>
:ab in_addr*      struct in_addr* <+++>


" File Mode Flags
:ab o_rdonly   O_RDONLY
:ab o_wronly   O_WRONLY
:ab o_rdwr     O_RDWR
:ab o_append   O_APPEND
:ab o_creat    O_CREAT
:ab o_ndelay   O_NDELAY

" Signals
:ab sigchld    SIGCHLD
:ab sig_ign    SIG_IGN
:ab sigint     SIGINT
:ab sigkill    SIGKILL
:ab sighup     SIGHUP
:ab sigterm    SIGTERM
:ab sigabrt    SIGABRT
:ab sigstop    SIGSTOP
:ab sigcont    SIGCONT
:ab sigusr1    SIGUSR1

" Initial READ/WRITE/EXECUTE Permission for User/Group/Others
:ab s_isdir    S_ISDIR
:ab s_isreg    S_ISREG
:ab s_ischr    S_ISCHR
:ab s_isblk    S_ISBLK
:ab s_irusr    S_IRUSR
:ab s_iwusr    S_IWUSR
:ab s_ixusr    S_IXUSR
:ab s_irgrp    S_IRGRP
:ab s_iwgrp    S_IWGRP
:ab s_ixgrp    S_IXGRP
:ab s_iroth    S_IROTH
:ab s_iwoth    S_IWOTH
:ab s_ixoth    S_IXOTH

" Process and Threads
:ab pidt          pid_t
:ab pthreadt      pthread_t
:ab ptkeyt        pthread_key_t
:ab ptcreate      pthread_create (&<+++>, NULL, <+++>, <+++>);<esc>
:ab ptcnull       pthread_create (&<+++>, NULL, <+++>, NULL);<esc>
:ab ptjoin        pthread_join (<+++>, &<+++>);<esc>
:ab ptjnull       pthread_join (<+++>, NULL);<esc>
:ab ptmutex       pthread_mutex_t
:ab ptminit       pthread_mutex_t <+++> = PTHREAD_MUTEX_INITIALIZER;<esc>
:ab ptmlock       pthread_mutex_lock (&<+++>);<esc>
:ab ptmunlock     pthread_mutex_unlock (&<+++>);<esc>
:ab ptcondt       pthread_cond_t
:ab ptcinit       pthread_cond_t <+++> = PTHREAD_COND_INITIALIZER;<esc>
:ab ptcsignal     pthread_cond_signal (&<+++>);<esc>
:ab ptcwait       pthread_cond_wait (&<+++>, &<+++>);<esc>
:ab ptself        pthread_self ();<esc>
:ab ptgets        pthread_getspecific (<+++>);<esc>
:ab ptsets        pthread_setspecific (<+++>);<esc>
:ab ptkcreate     pthread_key_create (&<+++>);<esc>
:ab semt          sem_t
:ab seminit       sem_init (&<+++>);<esc>
:ab semwait       sem_wait (&<+++>);<esc>
:ab sempost       sem_post (&<+++>);<esc>



" Datatype definitions
:ab cahr char
:ab flot float
:ab flote float
:ab stng string
:ab strng string

" Miscellaneous shortcuts
:ab sockaddr_un   struct sockaddr_un <+++>
:ab sockaddr_in   struct sockaddr_in <+++>
:ab sockaddr*     struct sockaddr* <+++>
