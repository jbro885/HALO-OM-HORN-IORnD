//🖨️
//do we really need this!?!? (its a metaphor
// if u wanna pull it from a socket next it would be a diff pro
//finish this first pls
//🖨️

//step 59
//step 65 ; feb3 18:03
//step 66]ON
//step 67]ON
//step 68]ON
//step 69]ON

//73? = ON
//76? = ON
//77? = ON (write clearn needed but ... bug4kilo?

//79? = ON (pre tabs)

//81? = ON
//83? = ON[ FIXED ARTIFAX!!!🤯️
//86? = ON[
//89? = ON[tabs on...
#define _DEFAULT_SOURCE
#define _BSD_SOURCE
#define _GNU_SOURCE

#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h>

 #include <time.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

#include <unistd.h>
//#include <termios.h> doesn't help "cntrl-c fx" ignore for now? 
// is it the macro program

#include <sys/ioctl.h>

#include <termios.h>
#include <sys/types.h>

#define QILO_VERSION "0.0.0001"
#define KILO_TAB_STOP 8
//#define CTRL_KEY(k) ((k) & 0x1f)

extern int stdTidBitSize_H ; 
extern int stdBlockSize_H  ;
extern int stdBufferSize_H ; 
extern int stdKbdInOffset_H ; 
//extern char buffer0_H[409600000];  // u dont wanna clobber the buffer thats ignorant
//extern char buffer_H[409600000];  
int fd ; 
//char* fileName = "tid]????.pro";
char* filename[64]; 
//char buffer[409600000];
char buffer[409600000];
char buffer2[409600000]; 
char buffer3[409600000];
char buffer4[409600000]; 
//char buffer2[409600000]; 
char tidStripped[32];


 char txt[4] = ".pro"; 
 char *tidLocation;
int tidIndex; 
//🚦️
//🚸️//////////////////////////////////🚸️



typedef struct erow {
  int size;
  int rsize;
  char *chars;
  char *render;
} erow;

//struct termios orig_termios;
struct editorConfig {
  int cx, cy;
    int rx;
  int rowoff;
   int coloff;
  int screenrows;
  int screencols;
  int numrows;
  erow *row;
  struct termios orig_termios; //🪆️
 // this termios doesn't need 2 be in here, thats the WHOLE 
 // cause of confusion with this struct so... 
 // otherwise, we can keep these structs cuz otherwise ez 2 grok 
 // and u may see structs in wild and its good 2 be comfy. 
 // after all we do a bit of "code solsucking" and its modular xo
 // not like i have 2 make new structs if we dont want <3 
 // anyways if its really a problem refactor after. we have speed now  🪆️
};
////////
struct editorConfig E;



struct abuf {
  char *b;
  int len;
};
#define ABUF_INIT {NULL, 0}

void abAppend(struct abuf *ab, const char *s, int len) {
  char *new = realloc(ab->b, ab->len + len);
  if (new == NULL) return;
  memcpy(&new[ab->len], s, len);
  ab->b = new;
  ab->len += len;
}
void abFree(struct abuf *ab) {
  free(ab->b);
}


/////

void die(const char *s) {
  write(STDOUT_FILENO, "\x1b[2J", 4);
  write(STDOUT_FILENO, "\x1b[H", 3);
  ///////


writeClear();
  //printf("buffer2= %s \n",buffer2);
  printf("re-inq\n");
   ///////
  
  
  perror(s);
  exit(1);
}

int writeClear(){

//char emty[8] = "00000000" ;
char emty[32] = "00000000000000000000000000000000" ;
       write2Position(stdKbdInOffset_H , buffer, buffer2 , emty , 32, stdBlockSize_H);
        fd = open(filename, O_RDWR | O_TRUNC , 0777); //if i dont TRUNC appends


write(fd, buffer2 ,stdBlockSize_H); //
close(fd);
}

//////25


///
int getWindowSize(int *rows, int *cols) {
  struct winsize ws;
  if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) == -1 || ws.ws_col == 0) {
    return -1;
  } else {
    *cols = ws.ws_col;
    *rows = ws.ws_row;
    return 0;
  }
}

///
int editorRowCxToRx(erow *row, int cx) {
  int rx = 0;
  int j;
  for (j = 0; j < cx; j++) {
    if (row->chars[j] == '\t')
      rx += (KILO_TAB_STOP - 1) - (rx % KILO_TAB_STOP);
    rx++;
  }
  return rx;
}
///
void editorUpdateRow(erow *row) {
  int tabs = 0;
  int j;
  for (j = 0; j < row->size; j++)
    if (row->chars[j] == '\t') tabs++;
  free(row->render);
  row->render = malloc(row->size + tabs*7 + 1);
  int idx = 0;
  for (j = 0; j < row->size; j++) {
    if (row->chars[j] == '\t') {
      row->render[idx++] = ' ';
      while (idx % 8 != 0) row->render[idx++] = ' ';
    } else {
      row->render[idx++] = row->chars[j];
    }
  }
  row->render[idx] = '\0';
  row->rsize = idx;
}
///
void editorAppendRow(char *s, size_t len) {
  E.row = realloc(E.row, sizeof(erow) * (E.numrows + 1));
  int at = E.numrows;
  E.row[at].size = len;
  E.row[at].chars = malloc(len + 1);
  memcpy(E.row[at].chars, s, len);
  E.row[at].chars[len] = '\0';
  
  
    E.row[at].rsize = 0;
  E.row[at].render = NULL;
  editorUpdateRow(&E.row[at]);
  
  
  E.numrows++;
}
///////////
void editorOpen(char *filename) {
  FILE *fp = fopen(filename, "r");
  if (!fp) die("fopen");
  char *line = NULL;
  size_t linecap = 0;
  ssize_t linelen;
  linelen = getline(&line, &linecap, fp);
 // if (linelen != -1) {
  while ((linelen = getline(&line, &linecap, fp)) != -1) {
    while (linelen > 0 && (line[linelen - 1] == '\n' ||
                           line[linelen - 1] == '\r'))
      linelen--;
    editorAppendRow(line, linelen);
  }
  free(line);
  fclose(fp);
}
///
void editorScroll() {
  E.rx = 0;
  if (E.cy < E.numrows) {
    E.rx = editorRowCxToRx(&E.row[E.cy], E.cx);
  }
  if (E.cy < E.rowoff) {
    E.rowoff = E.cy;
  }
  if (E.cy >= E.rowoff + E.screenrows) {
    E.rowoff = E.cy - E.screenrows + 1;
  }
  if (E.rx < E.coloff) {
    E.coloff = E.rx;
  }
  if (E.rx >= E.coloff + E.screencols) {
    E.coloff = E.rx - E.screencols + 1;
  }
}
///////----------------------
void editorDrawRows(struct abuf *ab) {
  int y;
  for (y = 0; y < E.screenrows; y++) {
     int filerow = y + E.rowoff;
    if (filerow >= E.numrows) {
          if (E.numrows == 0 && y == E.screenrows / 3) {
      char welcome[80];
      int welcomelen = snprintf(welcome, sizeof(welcome),
        "Qilo editor -- version %s", QILO_VERSION);
      if (welcomelen > E.screencols) welcomelen = E.screencols;
      int padding = (E.screencols - welcomelen) / 2;
      if (padding) {
        abAppend(ab, "~", 1);
        padding--;
      }
      while (padding--) abAppend(ab, " ", 1);
      abAppend(ab, welcome, welcomelen);
    } else {
      abAppend(ab, "~", 1);
    }
    }else {
      int len = E.row[filerow].rsize - E.coloff;
      if (len < 0) len = 0;
      if (len > E.screencols) len = E.screencols;
      abAppend(ab, &E.row[filerow].render[E.coloff], len);
    }
    
    /////////
    abAppend(ab, "\x1b[K", 3);
    if (y < E.screenrows - 1) {
      abAppend(ab, "\r\n", 2);
    }
  }
}

////////

void editorMoveCursor(int key) {
//printf("keyBoardValue = %d",key);

 erow *row = (E.cy >= E.numrows) ? NULL : &E.row[E.cy];
  switch (key) {
    
  
      //left-a right-d up-w down-s 
    case 132: 
      if (E.cy != 0) {
        E.cy--;
      }
      break;//up cy--
        case 131:
           if (E.cy < E.numrows) {
        E.cy++;
      }
      break;//down cy++
      
    case 129:
      if (E.cx != 0) {
        E.cx--;
         } else if (E.cy > 0) {
        E.cy--;
        E.cx = E.row[E.cy].size;
      }
      
      break; // left  cx--
    case 130:
   if (row && E.cx < row->size) {
        E.cx++;
       } else if (row && E.cx == row->size) {
        E.cy++;
        E.cx = 0;
      }
      break;//right cx++
  }
  
  
    row = (E.cy >= E.numrows) ? NULL : &E.row[E.cy];
  int rowlen = row ? row->size : 0;
  if (E.cx > rowlen) {
    E.cx = rowlen;
  }
  
  ///⌛️🧠️⌛️🧠️⌛️🧠️⌛️🧠️
  writeClear(); // so we dont read a new move cursor!?
 ///i made this, we NEED this... unless ur reading timeblocks 2 qualify new read. which is redundant...
  ///⌛️🧠️⌛️🧠️⌛️🧠️⌛️🧠️
}
///
void editorRefreshScreen() {

  editorScroll();
  
  struct abuf ab = ABUF_INIT;
  abAppend(&ab, "\x1b[?25l", 6);
  abAppend(&ab, "\x1b[H", 3);
  editorDrawRows(&ab);
  char buf[32];
snprintf(buf, sizeof(buf), "\x1b[%d;%dH", (E.cy - E.rowoff) + 1,
                                             (E.rx - E.coloff) + 1);
  abAppend(&ab, buf, strlen(buf));
  abAppend(&ab, "\x1b[?25h", 6);
  write(STDOUT_FILENO, ab.b, ab.len);
  abFree(&ab);
}
///
int parseKey(int keyBoardValue){

 switch (keyBoardValue) {
    case 17 :
   //  printf("keyBoardValue17def = %d",keyBoardValue);
     /*
      write(STDOUT_FILENO, "\x1b[2J", 4);
      write(STDOUT_FILENO, "\x1b[H", 3);
   //https://www.physics.udel.edu/~watson/scen103/ascii.html  
     printf("keyBoardValue17 = %d",keyBoardValue);
     */
     

       die("read");
       
     // exit(0);
      break;
       case 48 :
     //  printf("keyBoardValue = %d",keyBoardValue);
      break;
      case '1' :
     //  printf("keyBoardValue = %d",keyBoardValue);
      break;
      /*
       case '3' :
       printf("keyBoardValue = %d",keyBoardValue);
       die("read");
       */
      break;
      
       case 'w':
    case 's':
    case 'a':
    case 'd':
      editorMoveCursor(keyBoardValue);
      break;
      
         case 129:
    case 130:
    case 131:
    case 132:
      editorMoveCursor(keyBoardValue);
      break;
      
        case 133: //PAGE_UP:
    case 134: //PAGE_DOWN:
      {
        int times = E.screenrows;
        while (times--)
        //  editorMoveCursor(c == PAGE_UP ? ARROW_UP : ARROW_DOWN);
        editorMoveCursor(keyBoardValue == 133 ? 132 : 131);
      }
      break;
      
          case 135://HOME_KEY:
      E.cx = 0;
      break;
    case 136://END_KEY:
      E.cx = E.screencols - 1;
      break;
   
 
  }
  
  //
}

////////////
void initEditor() {
  E.cx = 0;
  E.cy = 0;
    E.rx = 0;
  E.rowoff = 0;
    E.coloff = 0;
  E.numrows = 0;
  E.row = NULL;
  if (getWindowSize(&E.screenrows, &E.screencols) == -1) die("getWindowSize");
}
//--------------


int main(int argc, char* argv[]){

//atexit(atexit_fxpass ); // didnt do anything 

  initEditor();
  // editorOpen();

if (argv[2] != NULL){ 
 editorOpen(argv[2]);
}else{
// switch back 2 "arg2 then arg1 after test.."
return 0; }

    if (argv[1] != NULL){ 
	 
	//printf("passed arg !%s \n", argv[1]);
	//strcpy(tidStripped, argv[1]);
	strcpy(filename, argv[1]);

	tidLocation = strstr(filename, ".pro");
	         // search for string
 if (tidLocation != NULL){       
 // may not exist!
 
 printf(".pro = %s + %s \n",tidLocation,filename);
 
 /*
 tidIndex = tidLocation - argv[1] ;
 
 printf("tidloc = %d \n" , tidIndex);
 
 tidStripped[tidIndex] = '\0';
 // removeSubstr(tidStripped, ".txt");
  printf("tidStripped= %s \n",tidStripped);
*/


//



 int binFlipInt = 0 ; 
  char binQuartzFlip8[32]; 
////
 while(1 ){
 
  fd = open(filename, O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, buffer, sizeof(buffer));
close(fd); 

//printf("fd closed +1 \n");
  
  //wana new 1 that uses only 1 buffer not right now tho
  // and if u do , save old till 'monolith'
  readFrom_Position(stdKbdInOffset_H, buffer ,binQuartzFlip8, sizeof(binQuartzFlip8));
 
//💎️u shouldnt need 2 run quarts but it will print same <3    
 editorRefreshScreen(); //🏔️
//printf("kbd⌨️= %s \n ",binQuartzFlip8);
   
   int keyBoardValue = bin2dec(binQuartzFlip8);
   //🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️
   parseKey(keyBoardValue);
  
  //printf("kbd⌨️= %c , %d \n ",keyBoardValue,keyBoardValue);
      //🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️
   //📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️
   // u can now write 2 "2nd argv mem if u like
   // or u can wait till "SAVE STATE
   //or u can use argv mem "as u should" as "IN MEM"
// and "SAVE" as a final "ascii print 4 user ;) 
   
  //📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️
   // converttobinary(msCountNew, binQuartzFlip8, sizeof(binQuartzFlip8));
    
   // printf("🕛️bin= %s \n ",binQuartzFlip8);

// do we really need 2buffers? , cant we return buffer?
//printf("buffer2before-writee :%s\n",buffer2);
//write2Position(0 , buffer, buffer2 , binQuartzFlip8 , 8, stdBlockSize_H);

 //printf("buffer2AFTER-writee :%s\n",buffer2);

// fd = open(argv[1], O_RDWR | O_TRUNC | O_CREAT, 0777); //if i dont
 
 ///💡️
//no more writing 2 file, this isn't kilo
// kilo will write 2 file THEN std out
//write(STDOUT_FILENO, buffer2 , stdBlockSize_H); //
//close(fd); 

   ///
  // msCountNew++;
  // msSleep(4444);
  usleep(2000);
  // msSleep(4444);
   }

////////


 }else{
 //💣️
 // we just leave this for now, it will sort out 
 // when u get 2 it, why preoptimize (we have; it got tossed cuz bugs that have nothing 2 do with fx...
  //💣️
 printf("no .txt = use fs.txt \n");
 
 
 }
 
	 }else{
	printf("no arg \n");
	//strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};




  
 // free(buffer);
 // free(buffer2);
    return 0; 
} 
