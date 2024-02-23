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
//90 = ON
//92 = ON
//93 = ON

//96 = ON[status+
//97 = ON
//feb4
//102]on
//103]on CHAR IN !
//104]on
//108]on
//110]on// feb6 on track (ur naur)🔍️兔🐇️
//115]on// feb6 doesn't warn but w/e its fine on track (ur naur)🔍️兔🐇️
//📮️saw this try but re-render will fix w/e
//editorSetStatusMessage("WARNING!!! File has unsaved changes. "
         // "Press Ctrl-Q %d more times to quit.", quit_times);
         //📮️
//120]on withtime render bugs. going thru 4 completion damb the bugs💩️
//125]on enter in. still gonna redesign render'r btw from ground up 
// y am i doing this? its almost done and easy and non dependant. w/e 
// the few things that aren't working , ibet will work on 2nd go thru
// and i bet ur 2nd go thru is super fast/helpful (if u have 2 w/e) etc.
// and ur ready 2 pull nino
//125]on - writing 2 prompt is REALLY BAD (NO-writeClear will fix imsure
//page5 done

//142]on . search is sketch but im guess cuz of "writeclear()"
//page6 done
//147]on colored #'s   (somewhere somehow corrupting my 0.pro?no.erlir w/e)
/// i actually rather u dont go forward, but u tell me how its doing it.
//🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️


//🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️
//163 ] done. not checking featuers, but compiles and r in place <3

#define _DEFAULT_SOURCE
#define _BSD_SOURCE
#define _GNU_SOURCE

#include <stdarg.h>
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

#include <errno.h> // feb6 on track (ur naur)🔍️兔🐇️


#include <stdint.h>

#define QILO_VERSION "0.0.0001"
#define KILO_TAB_STOP 8
#define KILO_QUIT_TIMES 3
//#define CTRL_KEY(k) ((k) & 0x1f)

extern int stdTidBitSize_H ; 

extern int stdBufferSize_H ; 
//extern int stdKbdInOffset_H ; 
extern int stdProcTimeOffset_H ; 

extern int stdKbdBufferOffset_H;
extern int stdProcTimeOffset_H ; 
extern int stdKbdAsciiSize_H  ;

extern int stdKbdCountOffset_H;


extern int stdBlockSize_H  ;
extern int stdShiftBufferSize_H;
extern int stdProcLoopCountSize_H ;
extern int stdProcLoopCountOffset_H ;
////////////////
char *stdBlockBuffer_0;
char *stdBlockBuffer_1;
char *stdBlockBuffer_2;
char *stdBlockBuffer_3;


char *stdShiftBuffer_0;
char *stdAsciiBuffer_0;
char *stdAsciiBuffer_1;
char *stdProcCountString_0;
char *asciiString;

int externStringInit(){
stdBlockBuffer_0 = malloc(stdBlockSize_H );
stdBlockBuffer_1 = malloc(stdBlockSize_H );
stdBlockBuffer_2 = malloc(stdBlockSize_H );
stdBlockBuffer_3 = malloc(stdBlockSize_H );
stdShiftBuffer_0 = malloc(stdShiftBufferSize_H);
stdAsciiBuffer_0 = malloc(stdKbdAsciiSize_H);
stdAsciiBuffer_1 = malloc(stdKbdAsciiSize_H);
stdProcCountString_0 = malloc(stdProcLoopCountSize_H);

asciiString = malloc(stdKbdAsciiSize_H);
}
/////////



 char countingChars[64] ;

//extern char buffer0_H[409600000];  // u dont wanna clobber the buffer thats ignorant
//extern char buffer_H[409600000];  
int fd ; 
//char* fileName = "tid]????.pro";
char* filename[64]; 
char* filename2[64];
char* filename3[64]; 
char* filename4[64]; 
char* filename5[64]; 
///
char* filename6[64]; 
////////////
char tidStripped[32];


 char txt[4] = ".pro"; 
 char *tidLocation;
int tidIndex; 
//🚦️
//🚸️//////////////////////////////////🚸️
enum editorHighlight {
  HL_NORMAL = 0,
    HL_COMMENT,
     HL_MLCOMMENT,
    HL_KEYWORD1,
  HL_KEYWORD2,
    HL_STRING,
  HL_NUMBER,
  HL_MATCH
};
///
#define HL_HIGHLIGHT_NUMBERS (1<<0)
#define HL_HIGHLIGHT_STRINGS (1<<1)
//
struct editorSyntax {
  char *filetype;
  char **filematch;
   char **keywords;
  char *singleline_comment_start;
   char *multiline_comment_start;
  char *multiline_comment_end;
  int flags;
};
//

typedef struct erow {
  int idx;
  int size;
  int rsize;
  char *chars;
  char *render;
  unsigned char *hl;
  int hl_open_comment;
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
    int dirty;
  char *filename;
    char statusmsg[80];
  time_t statusmsg_time;
   struct editorSyntax *syntax;
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
//158
char *C_HL_extensions[] = { ".c", ".h", ".cpp", NULL };
//
char *C_HL_keywords[] = {
  "switch", "if", "while", "for", "break", "continue", "return", "else",
  "struct", "union", "typedef", "static", "enum", "class", "case",
  "int|", "long|", "double|", "float|", "char|", "unsigned|", "signed|",
  "void|", NULL
};
///
struct editorSyntax HLDB[] = {
  {
    "c",
    C_HL_extensions,
      C_HL_keywords,
    "//", "/*", "*/",
    HL_HIGHLIGHT_NUMBERS | HL_HIGHLIGHT_STRINGS
  },
};

///

#define HLDB_ENTRIES (sizeof(HLDB) / sizeof(HLDB[0]))

/*** prototypes ***/
void editorSetStatusMessage(const char *fmt, ...);
void editorRefreshScreen(); // this is a prototype?
char *editorPrompt(char *prompt, void (*callback)(char *, int));



struct abuf {
  char *b;
  int len;
};
#define ABUF_INIT {NULL, 0}

int is_separator(int c) {
  return isspace(c) || c == '\0' || strchr(",.()+-/*=~%<>[];", c) != NULL;
}

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

}
///
int writeClear_off(){

//char emty[8] = "00000000" ;
char emty[32] = "00000000000000000000000000000000" ;
     //  write2Position(stdKbdBufferOffset_H , buffer, buffer2 , emty , 32, stdBlockSize_H);
        write2Position_0000(stdKbdBufferOffset_H,stdBlockBuffer_0,emty,32);
       
        fd = open(filename, O_RDWR | O_TRUNC , 0777); //if i dont TRUNC appends


write(fd, stdBlockBuffer_0 ,stdBlockSize_H); //
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

///
void editorUpdateSyntax(erow *row) {
  row->hl = realloc(row->hl, row->rsize);
  memset(row->hl, HL_NORMAL, row->rsize);
  if (E.syntax == NULL) return;
  
    char **keywords = E.syntax->keywords;
  char *scs = E.syntax->singleline_comment_start;
  char *mcs = E.syntax->multiline_comment_start;
  char *mce = E.syntax->multiline_comment_end;
  int scs_len = scs ? strlen(scs) : 0;
  int mcs_len = mcs ? strlen(mcs) : 0;
  int mce_len = mce ? strlen(mce) : 0;
  
  int prev_sep = 1;
  int in_string = 0;
    int in_comment = (row->idx > 0 && E.row[row->idx - 1].hl_open_comment);
    //
  int i = 0;
  while (i < row->rsize) {
    char c = row->render[i];
    unsigned char prev_hl = (i > 0) ? row->hl[i - 1] : HL_NORMAL;
    
    
    //
    
    if (scs_len && !in_string && !in_comment) {
      if (!strncmp(&row->render[i], scs, scs_len)) {
        memset(&row->hl[i], HL_COMMENT, row->rsize - i);
        break;
      }
    }
    //
        if (mcs_len && mce_len && !in_string) {
      if (in_comment) {
        row->hl[i] = HL_MLCOMMENT;
        if (!strncmp(&row->render[i], mce, mce_len)) {
          memset(&row->hl[i], HL_MLCOMMENT, mce_len);
          i += mce_len;
          in_comment = 0;
          prev_sep = 1;
          continue;
        } else {
          i++;
          continue;
        }
      } else if (!strncmp(&row->render[i], mcs, mcs_len)) {
        memset(&row->hl[i], HL_MLCOMMENT, mcs_len);
        i += mcs_len;
        in_comment = 1;
        continue;
      }
    }
    ///
    
    if (E.syntax->flags & HL_HIGHLIGHT_STRINGS) {
      if (in_string) {
        row->hl[i] = HL_STRING;
        if (c == '\\' && i + 1 < row->rsize) {
          row->hl[i + 1] = HL_STRING;
          i += 2;
          continue;
        }
        if (c == in_string) in_string = 0;
        i++;
        prev_sep = 1;
        continue;
      } else {
        if (c == '"' || c == '\'') {
          in_string = c;
          row->hl[i] = HL_STRING;
          i++;
          continue;
        }
      }
    }
    if (E.syntax->flags & HL_HIGHLIGHT_NUMBERS) {
      if ((isdigit(c) && (prev_sep || prev_hl == HL_NUMBER)) ||
          (c == '.' && prev_hl == HL_NUMBER)) {
        row->hl[i] = HL_NUMBER;
        i++;
        prev_sep = 0;
        continue;
      }
    }
    //174
        if (prev_sep) {
      int j;
      for (j = 0; keywords[j]; j++) {
        int klen = strlen(keywords[j]);
        int kw2 = keywords[j][klen - 1] == '|';
        if (kw2) klen--;
        if (!strncmp(&row->render[i], keywords[j], klen) &&
            is_separator(row->render[i + klen])) {
          memset(&row->hl[i], kw2 ? HL_KEYWORD2 : HL_KEYWORD1, klen);
          i += klen;
          break;
        }
      }
      if (keywords[j] != NULL) {
        prev_sep = 0;
        continue;
      }
    }
    //174 (they just keep  dumping code lol w/e i have states 
    
    
    
    prev_sep = is_separator(c);
    i++;
  }
  
    int changed = (row->hl_open_comment != in_comment);
  row->hl_open_comment = in_comment;
  if (changed && row->idx + 1 < E.numrows)
    editorUpdateSyntax(&E.row[row->idx + 1]);
}

///
int editorSyntaxToColor(int hl) {
  switch (hl) {
     case HL_COMMENT: return 36;
       
    case HL_MLCOMMENT: return 36;
    case HL_KEYWORD1: return 33;
    case HL_KEYWORD2: return 32;
    case HL_STRING: return 35;
    case HL_NUMBER: return 31;
    case HL_MATCH: return 34;
    default: return 37;
  }
}
///
void editorSelectSyntaxHighlight() {
  E.syntax = NULL;
  if (E.filename == NULL) return;
  char *ext = strrchr(E.filename, '.');
  for (unsigned int j = 0; j < HLDB_ENTRIES; j++) {
    struct editorSyntax *s = &HLDB[j];
    unsigned int i = 0;
    while (s->filematch[i]) { 
      int is_ext = (s->filematch[i][0] == '.');
      if ((is_ext && ext && !strcmp(ext, s->filematch[i])) ||
          (!is_ext && strstr(E.filename, s->filematch[i]))) {
        E.syntax = s;
        return;
        
          int filerow;
        for (filerow = 0; filerow < E.numrows; filerow++) {
          editorUpdateSyntax(&E.row[filerow]);
        }
      }
      i++;
    }
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
int editorRowRxToCx(erow *row, int rx) {
  int cur_rx = 0;
  int cx;
  for (cx = 0; cx < row->size; cx++) {
    if (row->chars[cx] == '\t')
      cur_rx += (KILO_TAB_STOP - 1) - (cur_rx % KILO_TAB_STOP);
    cur_rx++;
    if (cur_rx > rx) return cx;
  }
  return cx;
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
  
   editorUpdateSyntax(row);
}
///
void editorInsertRow(int at, char *s, size_t len) {
  if (at < 0 || at > E.numrows) return;
  E.row = realloc(E.row, sizeof(erow) * (E.numrows + 1));
  memmove(&E.row[at + 1], &E.row[at], sizeof(erow) * (E.numrows - at));
  
  //
   for (int j = at + 1; j <= E.numrows; j++) E.row[j].idx++;
  //
  
    E.row[at].idx = at;

  E.row[at].size = len;
  E.row[at].chars = malloc(len + 1);
  memcpy(E.row[at].chars, s, len);
  E.row[at].chars[len] = '\0';
  
  
  E.row[at].rsize = 0;
  E.row[at].render = NULL;
  E.row[at].hl = NULL;
  
   E.row[at].hl_open_comment = 0;
  
  editorUpdateRow(&E.row[at]);
  
  
  E.numrows++;
    E.dirty++;
}

////
void editorFreeRow(erow *row) {
  free(row->render);
  free(row->chars);
   free(row->hl);
}
void editorDelRow(int at) {
  if (at < 0 || at >= E.numrows) return;
  editorFreeRow(&E.row[at]);
  memmove(&E.row[at], &E.row[at + 1], sizeof(erow) * (E.numrows - at - 1));
  
    for (int j = at; j < E.numrows - 1; j++) E.row[j].idx--;
  E.numrows--;
  E.dirty++;
}

/////////////////////////
void editorRowInsertChar(erow *row, int at, int c) {
  if (at < 0 || at > row->size) at = row->size;
  row->chars = realloc(row->chars, row->size + 2);
  memmove(&row->chars[at + 1], &row->chars[at], row->size - at + 1);
  row->size++;
  row->chars[at] = c;
  editorUpdateRow(row);
  E.dirty++;
 // writeClear();
}
///
void editorRowAppendString(erow *row, char *s, size_t len) {
  row->chars = realloc(row->chars, row->size + len + 1);
  memcpy(&row->chars[row->size], s, len);
  row->size += len;
  row->chars[row->size] = '\0';
  editorUpdateRow(row);
  E.dirty++;
}
///
void editorRowDelChar(erow *row, int at) {
  if (at < 0 || at >= row->size) return;
  memmove(&row->chars[at], &row->chars[at + 1], row->size - at);
  row->size--;
  editorUpdateRow(row);
  E.dirty++;
}

/////////////------------
void editorInsertChar(int c) {
  if (E.cy == E.numrows) {
      editorInsertRow(E.numrows, "", 0);
  }
  editorRowInsertChar(&E.row[E.cy], E.cx, c);
  E.cx++;
  
  writeClear();
}
///
void editorInsertNewline() {
  if (E.cx == 0) {
    editorInsertRow(E.cy, "", 0);
  } else {
    erow *row = &E.row[E.cy];
    editorInsertRow(E.cy + 1, &row->chars[E.cx], row->size - E.cx);
    row = &E.row[E.cy];
    row->size = E.cx;
    row->chars[row->size] = '\0';
    editorUpdateRow(row);
  }
  E.cy++;
  E.cx = 0;
  writeClear();
}
////
void editorDelChar() {
  if (E.cy == E.numrows) return;
  if (E.cx == 0 && E.cy == 0) return;
  erow *row = &E.row[E.cy];
  if (E.cx > 0) {
    editorRowDelChar(row, E.cx - 1);
    E.cx--;
  } else {
    E.cx = E.row[E.cy - 1].size;
    editorRowAppendString(&E.row[E.cy - 1], row->chars, row->size);
    editorDelRow(E.cy);
    E.cy--;
  }
}
////////////🧙🏽‍♂️️🧙🏻️
int editorRowsToBinary(){

}
//////////🪄️(only used for save? , we need 2 hijack buffer and swap 2 ascci and add len
//the fadct that its in a "struct" makes it harder 2 "take out 2 debug/ microswap..."
//🦈️cav= we have "plain-kilo" we can debug this on, "g3t-gud" and come back
//will bring row2bin() with us from "plain"🦈️
////////////🧙🏽‍♂️️🧙🏻️


char *editorRowsToString(int *buflen) {
  int totlen = 0;
  int j;
  for (j = 0; j < E.numrows; j++)
    totlen += E.row[j].size + 1;
  *buflen = totlen;
  char *buf = malloc(totlen);
  char *p = buf;
  for (j = 0; j < E.numrows; j++) {
    memcpy(p, E.row[j].chars, E.row[j].size);
    p += E.row[j].size;
    *p = '\n';
    p++;
  }
  return buf;
}
///////////
void editorOpen_FD(char *filename_arg3) {

fd = open(filename_arg3, O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, stdBlockBuffer_2, stdBlockSize_H);
close(fd); 
}

///////////////---------------------


void editorOpen(char *filename) {
  free(E.filename);
  E.filename = strdup(filename);
  
    editorSelectSyntaxHighlight();

  FILE *fp = fopen(filename, "r");
  if (!fp) die("fopen");

  char *line = NULL;
  size_t linecap = 0;
  ssize_t linelen;
  while ((linelen = getline(&line, &linecap, fp)) != -1) {
    while (linelen > 0 && (line[linelen - 1] == '\n' ||
                           line[linelen - 1] == '\r'))
      linelen--;
    editorInsertRow(E.numrows, line, linelen);
  }
  free(line);
  fclose(fp);
  E.dirty = 0;
}
///////=================================
///////🪄️(only used for save? , we need 2 hijack buffer and swap 2 ascci and add len
//the fadct that its in a "struct" makes it harder 2 "take out 2 debug/ microswap..."
//🦈️cav= we have "plain-kilo" we can debug this on, "g3t-gud" and come back
//will bring row2bin() with us from "plain"🦈️
////////////🧙🏽‍♂️️🧙🏻️

/*** file i/o ***/

/////////////////////
///🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
void asc2bin_editorSave_bugged() {
//️❤️‍🩹️🕵‍♂️️🔍️
//im going 2 try writing mem 2 position first.]2.21.24
//️❤️‍🩹️🕵‍♂️️🔍️
// this is nt much different 📂️, the magic happens in 🪄️"editorRowsToString()"
// which actually just loads buffer, we need 2 hijack it. 
  int len;
  char *buf = editorRowsToString(&len); // RETURNS "P"🐧️
  //////
  int len2 = len * 16; 
  char *buf2 = malloc(len2);
  
  //🔨️ *stack smashing , causes seg fault 
 std_RowArrayConvert(buf,len,buf2);
 //🔨️ 
 // exit(64);
 
  int fd = open(filename6, O_RDWR |O_APPEND, 777);
  
  int bitsRead = read(fd, stdBlockBuffer_3, stdBlockSize_H);
close(fd); 



write2Position_0000(0,stdBlockBuffer_3,buf2,len2); 
   
   
  
  /*
  if (fd != -1) {
    if (ftruncate(fd, len) != -1) {
      if (write(fd, buf, len) == len) {
        close(fd);
        free(buf);
        E.dirty = 0;
        editorSetStatusMessage("%d binary?bytes written to disk", len);
        return;
      }
    }
    close(fd);
  }
  free(buf);
  editorSetStatusMessage("Can't save! I/O error: %s", strerror(errno));


*/

 


  fd = open(filename, O_RDWR | O_TRUNC , 0777); //if i dont TRUNC appends


write(fd, stdBlockBuffer_3 ,stdBlockSize_H); //
close(fd);

 editorSetStatusMessage("%d bytes written to disk_FD", len2);
 free(buf);
  free(buf2);
}
// \n= 0000000001011100 0000000001101110 (as text , ie its ok)
///🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
////////////
//🐞️________________________

void editorSave_asc2bin() {
// this is nt much different 📂️, the magic happens in 🪄️"editorRowsToString()"
// which actually just loads buffer, we need 2 hijack it. 
  int len;
  char *buf = editorRowsToString(&len); // RETURNS "P"🐧️
  //////
  int len2 = len * 16; 
  char *buf2 = malloc(len2);
  
  std_RowArrayConvert(buf,len,buf2);
  
  //🤯️can just convert the "BUF" here ! instead of deep in a fx! 
 //char *buf = editorRowsToBinary(&len); //🦆️ BIN "P"
 /////////////
  int fd = open(filename5, O_RDWR | O_CREAT, 777);
  /*
  if (fd != -1) {
    if (ftruncate(fd, len) != -1) {
      if (write(fd, buf, len) == len) {
        close(fd);
        free(buf);
        E.dirty = 0;
        editorSetStatusMessage("%d binary?bytes written to disk", len);
        return;
      }
    }
    close(fd);
  }
  free(buf);
  editorSetStatusMessage("Can't save! I/O error: %s", strerror(errno));


*/
write(fd, buf2 ,len2); //
close(fd); 

 editorSetStatusMessage("%d bytes written to disk_FD", len2);
 free(buf);
  free(buf2);
}
///////
void editorSave() {
  if (E.filename == NULL) {
 E.filename = editorPrompt("Save as: %s (ESC to cancel)", NULL);
    if (E.filename == NULL) {
      editorSetStatusMessage("Save aborted");
      return;
    }
        editorSelectSyntaxHighlight();
  }
  int len;
  char *buf = editorRowsToString(&len);
  int fd = open(E.filename, O_RDWR | O_CREAT, 0644);
  if (fd != -1) {
    if (ftruncate(fd, len) != -1) {
      if (write(fd, buf, len) == len) {
        close(fd);
        free(buf);
        E.dirty = 0;
        editorSetStatusMessage("%d bytes written to disk", len);
        return;
      }
    }
    close(fd);
  }
  free(buf);
  editorSetStatusMessage("Can't save! I/O error: %s", strerror(errno));
}

///////////////
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

///
void editorFindCallback(char *query, int key) {
 static int last_match = -1;
  static int direction = 1;
  
  //152 (should have been labling especially large updates
   static int saved_hl_line;
  static char *saved_hl = NULL;
  if (saved_hl) {
    memcpy(E.row[saved_hl_line].hl, saved_hl, E.row[saved_hl_line].rsize);
    free(saved_hl);
    saved_hl = NULL;
  }
  //
  
  
  if (key == 6 || key == 27) {//if (key == '\r' || key == '\x1b') {
    last_match = -1;
    direction = 1;
    return;
    // //129 left-a, 130 right-d ,132 up-w, 131 down-s 
  } else if (key == 130 || key == 131) {
    direction = 1;
  } else if (key == 129 || key == 132) {
    direction = -1;
  } else {
    last_match = -1;
    direction = 1;
  }
  if (last_match == -1) direction = 1;
  int current = last_match;
  int i;
  for (i = 0; i < E.numrows; i++) {
    current += direction;
    if (current == -1) current = E.numrows - 1;
    else if (current == E.numrows) current = 0;
    erow *row = &E.row[current];
    char *match = strstr(row->render, query);
    if (match) {
      last_match = current;
      E.cy = current;
      E.cx = editorRowRxToCx(row, match - row->render);
      E.rowoff = E.numrows;
      //152
         saved_hl_line = current;
      saved_hl = malloc(row->rsize);
      memcpy(saved_hl, row->hl, row->rsize);
      
       memset(&row->hl[match - row->render], HL_MATCH, strlen(query));
      break;
     
    }
  }
}
///
void editorFind() {
  int saved_cx = E.cx;
  int saved_cy = E.cy;
  int saved_coloff = E.coloff;
  int saved_rowoff = E.rowoff;
  char *query = editorPrompt("Search: %s (ESC to cancel)", editorFindCallback);
  if (query) {
    free(query);
  } else {
    E.cx = saved_cx;
    E.cy = saved_cy;
    E.coloff = saved_coloff;
    E.rowoff = saved_rowoff;
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
    char *c = &E.row[filerow].render[E.coloff];
    unsigned char *hl = &E.row[filerow].hl[E.coloff];
     int current_color = -1;
      int j;
      for (j = 0; j < len; j++) {
           if (iscntrl(c[j])) {
          char sym = (c[j] <= 26) ? '@' + c[j] : '?';
          abAppend(ab, "\x1b[7m", 4);
          abAppend(ab, &sym, 1);
          abAppend(ab, "\x1b[m", 3);
          //
             if (current_color != -1) {
            char buf[16];
            int clen = snprintf(buf, sizeof(buf), "\x1b[%dm", current_color);
            abAppend(ab, buf, clen);
          }
          //
        } else if (hl[j] == HL_NORMAL) {
         if (current_color != -1) {
            abAppend(ab, "\x1b[39m", 5);
            current_color = -1;
          }
          abAppend(ab, &c[j], 1);
        } else {
          int color = editorSyntaxToColor(hl[j]);
          if (color != current_color) {
            current_color = color;
            char buf[16];
            int clen = snprintf(buf, sizeof(buf), "\x1b[%dm", color);
            abAppend(ab, buf, clen);
          }
          abAppend(ab, &c[j], 1);
        }
      }
      abAppend(ab, "\x1b[39m", 5);
    }
    
    /////////
    abAppend(ab, "\x1b[K", 3);
 //   if (y < E.screenrows - 1) {
      abAppend(ab, "\r\n", 2);
  //  }
  }
}

////////
char *editorPrompt(char *prompt, void (*callback)(char *, int)) {
  size_t bufsize = 128;
  char *buf = malloc(bufsize);
  size_t buflen = 0;
  buf[0] = '\0';
  while (1) {
    editorSetStatusMessage(prompt, buf);
    editorRefreshScreen();
    int c = editorReadKey();
    if (c == 8 || c == 127) { 
    //c == DEL_KEY || c == CTRL_KEY('h') || c == BACKSPACE
      if (buflen != 0) buf[--buflen] = '\0';
    } else if (c == 27) {  
    //'\x1b' (will probably read as x1b or 27 tbh <3 
      editorSetStatusMessage("");
        if (callback) callback(buf, c);
      free(buf);
      return NULL;
    } else if (c == 13) {
    //'\r'
      if (buflen != 0) {
        editorSetStatusMessage("");
           if (callback) callback(buf, c);
        return buf;
      }
    } else if (!iscntrl(c) && c < 128) {
      if (buflen == bufsize - 1) {
        bufsize *= 2;
        buf = realloc(buf, bufsize);
      }
      buf[buflen++] = c;
      buf[buflen] = '\0';
    }
        if (callback) callback(buf, c);
    writeClear();
  }
}
////

void editorMoveCursor(int key) {
//printf("keyBoardValue = %d",key);

 erow *row = (E.cy >= E.numrows) ? NULL : &E.row[E.cy];
  switch (key) {
    
  
      //129left-a, 130right-d ,132up-w, 131down-s 
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

char stdCommentString_0[64];
int stdCommentInt_0 ; 
int stdCommentInt_1 ; 
int stdCommentInt_2 ; 

void editorDrawStatusBar_0(struct abuf *ab) {
  abAppend(ab, "\x1b[7m", 4);
  char status[80], rstatus[80];
  //int len = snprintf(status, sizeof(status), "%s","editorDrawStatusBar_0 : dump comments here pls");
  
 // strcpy(stdCommentString_0,"editorDrawStatusBar_0 comment");
  //stdCommentInt_0 = 911;
  //stdCommentInt_0 = 22;
   int len = snprintf(status, sizeof(status), "%s : %d, %d @= %d",
   stdCommentString_0,stdCommentInt_0, stdCommentInt_1,stdCommentInt_2);
   /*
    E.filename ? E.filename : "[No Name]", E.numrows,
    E.dirty ? "(modified)" : "");
    */
  
//    E.filename ? E.filename : "[No Name]", E.numrows,
//"editorDrawStatusBar_0", "E.numrows", //E.numrows,
//E.dirty ? "(modified)" : "");
  int rlen = snprintf(rstatus, sizeof(rstatus), "%s | %d/%d",
  //
    E.syntax ? E.syntax->filetype : "no ft", E.cy + 1, E.numrows);
  if (len > E.screencols) len = E.screencols;
  abAppend(ab, status, len);
  while (len < E.screencols) {
    if (E.screencols - len == rlen) {
      abAppend(ab, rstatus, rlen);
      break;
    } else {
      abAppend(ab, " ", 1);
      len++;
    }
  }
  abAppend(ab, "\x1b[m", 3);
   abAppend(ab, "\r\n", 2);
  
}
//
void editorDrawStatusBar(struct abuf *ab) {
  abAppend(ab, "\x1b[7m", 4);
  char status[80], rstatus[80];
  int len = snprintf(status, sizeof(status), "%.20s - %d lines %s",
    E.filename ? E.filename : "[No Name]", E.numrows,
    E.dirty ? "(modified)" : "");
  int rlen = snprintf(rstatus, sizeof(rstatus), "%s | %d/%d",
    E.syntax ? E.syntax->filetype : "no ft", E.cy + 1, E.numrows);
  if (len > E.screencols) len = E.screencols;
  abAppend(ab, status, len);
  while (len < E.screencols) {
    if (E.screencols - len == rlen) {
      abAppend(ab, rstatus, rlen);
      break;
    } else {
      abAppend(ab, " ", 1);
      len++;
    }
  }
  abAppend(ab, "\x1b[m", 3);
   abAppend(ab, "\r\n", 2);
  
}
/////
void editorDrawMessageBar(struct abuf *ab) {
  abAppend(ab, "\x1b[K", 3);
  int msglen = strlen(E.statusmsg);
  if (msglen > E.screencols) msglen = E.screencols;
  if (msglen && time(NULL) - E.statusmsg_time < 5)
    abAppend(ab, E.statusmsg, msglen);
}
///////////
void editorRefreshScreen() {

  editorScroll();
  
  struct abuf ab = ABUF_INIT;
  abAppend(&ab, "\x1b[?25l", 6);
  abAppend(&ab, "\x1b[H", 3);
  editorDrawRows(&ab);
    editorDrawStatusBar_0(&ab);
    //editorDrawStatusBar(&ab);
      editorDrawMessageBar(&ab);
  char buf[32];
snprintf(buf, sizeof(buf), "\x1b[%d;%dH", (E.cy - E.rowoff) + 1,
                                             (E.rx - E.coloff) + 1);
  abAppend(&ab, buf, strlen(buf));
  abAppend(&ab, "\x1b[?25h", 6);
  write(STDOUT_FILENO, ab.b, ab.len);
  abFree(&ab);
}
///
void editorSetStatusMessage(const char *fmt, ...) {
  va_list ap;
  va_start(ap, fmt);
  vsnprintf(E.statusmsg, sizeof(E.statusmsg), fmt, ap);
  va_end(ap);
  E.statusmsg_time = time(NULL);
}

///

int editorProcessKeypress(int keyBoardValue){

  //https://www.physics.udel.edu/~watson/scen103/ascii.html  
   
static int quit_times = KILO_QUIT_TIMES;
 switch (keyBoardValue) {
    case 17 :
   
   // i haven't gotten this 2 work for some reason 
   // skipping for now...w/e
       if (E.dirty && quit_times > 0) {
        editorSetStatusMessage("WARNING!!! File has unsaved changes. "
          "Press Ctrl-Q %d more times to quit.", quit_times);
          
        quit_times--;
        //break;
        return;
      }
     //quit_times = KILO_QUIT_TIMES;
     die("read"); // replaced with       write(STDOUT_FILENO, "\x1b[H", 3);exit(0);
     
     break;
    
     
     case 19:
      // editorSave();
     //  asc2bin_editorSave();
       
       editorSave_asc2bin();
      break;

    case 6: s://CTRL_KEY('f'):
      editorFind();
      break;
      
          //case '\r':  //wut is this? ⁉️= '13' carriage return 
      /* TODO */
       case 10:
      editorInsertNewline();//]just added 2.20.24 2 fix loadrender of '\n'...
      case 13:
      editorInsertNewline();
      break;
      //no dupe cases < compiler...
      // case 8: //BACKSPACE: (not 127[legend..]... duno why he said that....⁉️
       case 8:  // CTRL_KEY('h'): // is also "8" hes doing contingency? also treating delete same as bs? prob 
        case 127: ///DEL_KEY: 127 is actually delete... well we/ we shall see
      /* TODO */
      if (keyBoardValue == 127) editorMoveCursor(130); // 130
      editorDelChar(); 
      break;
   
      
      case 12: // cntrl(l)
      /* TODO */
       break;
       
      case 27 : // = "escape"(KEY=Esc[top-left , duh]) character (octal: \033 , hexadecimal: \x1B 
      /* TODO */
        break;
      /////============
           case 135://HOME_KEY:
      E.cx = 0;
      break;
    case 136://END_KEY:
      if (E.cy < E.numrows)
        E.cx = E.row[E.cy].size;
      break;
      ////////==========
      
        case 133: //PAGE_UP:
    case 134: //PAGE_DOWN:
      {
      
        if (keyBoardValue == 133) {
          E.cy = E.rowoff;
        } else if (keyBoardValue == 134) {
          E.cy = E.rowoff + E.screenrows - 1;
          if (E.cy > E.numrows) E.cy = E.numrows;
        }
      
      
        int times = E.screenrows;
        while (times--)
        //  editorMoveCursor(c == PAGE_UP ? ARROW_UP : ARROW_DOWN);
        editorMoveCursor(keyBoardValue == 133 ? 132 : 131);
      }
      break;
        case 129:
    case 130:
    case 131:
    case 132:
      editorMoveCursor(keyBoardValue);
      break;
     
   
 case 0 :
 /// 💲️we created "writeClear();" which enables us 2 not use redundant timer
 ///💲️(which i wouldn't have thot of ) but it sets 2 '0' so we need 2 handle that, pre default.. (wuts 0 in ascii? ) = "NULL" so it maybe ok.<3good work!
 // honestly if ur gonna do it this way long term , the speed is gonna need
 // 2 be fine tuned. therefore u may put the time reader back and remove
 // "all write clears()"
 //👨🏽‍🚀️KEEP A COUNT OF CHANGE IN "KBD 2 mem. and compare each read.. 👨🏽‍🚀️
  //👨🏽‍🚀️time (is kept, but is overkill , but honestly their the same thing)
  // //👨🏽‍🚀️but for ease of code i would do "change count first" //👨🏽‍🚀️
 break;
 
     default:
      editorInsertChar(keyBoardValue);
      
      break;
  }
   quit_times = KILO_QUIT_TIMES;
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
  E.dirty = 0;
  
    E.filename = NULL;
    
     E.statusmsg[0] = '\0';
  E.statusmsg_time = 0;
    E.syntax = NULL;
  
  if (getWindowSize(&E.screenrows, &E.screencols) == -1) die("getWindowSize");
  
  E.screenrows -= 2;
}
//--------------
 int previousTimeDec = 0 ;
  char timeString[32]; 
 int binFlipInt = 0 ; 
 // char asciiString[32]; 
 
//
/*
int editorReadKey_add(){
//printf("editorReadKey!!\n");

  fd = open(filename2, O_RDWR | O_APPEND, 0777);
  //O_APPEND | O_CREAT
    
    if(fd == -1){
        printf("\nError Opening File!!\n");
        exit(1);
    }
    else{
 
    }

  

    int bitsRead2 = read(fd, buffer3, sizeof(buffer3));
    
     close(fd);
     
      //printf("buffer3 :%s\n",buffer3);
     ////////////////////////////
     char testString[8] = "test1234";

       write2Position(stdKbdBufferOffset_H , buffer3, buffer4 , testString , 8);
       strcpy(buffer3, buffer4);
  ////////////
  
  fd = open(filename2, O_RDWR | O_TRUNC , 0777); //if i dont TRUNC appends

write(fd, buffer3 ,stdBlockSize_H); //
close(fd); 
}

/////////////////
 int editorReadKey_new(){
 
  fd = open(filename, O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, buffer, sizeof(buffer));
close(fd); 

//printf("fd closed +1 \n");
 readFrom_Position(stdProcTimeOffset_H, buffer ,timeString, sizeof(timeString));

   int currentTimeDec = bin2dec(timeString);
 ///⏰️⏰️⏰️⏰️⏰️⏰️  
 //  if(previousTimeDec < currentTimeDec){
 // this guys renderer is BAD remember? lets start over and make our own renderer
 // THAT IS TIMEWISE> (we can always finish kilo stuff if we want with more 
// control / understanding  , pre porting NINO stuff... 
//⏰️⏰️⏰️⏰️⏰️⏰️
  //wana new 1 that uses only 1 buffer not right now tho
  // and if u do , save old till 'monolith'
  readFrom_Position(stdKbdBufferOffset_H , buffer ,asciiString, stdKbdAsciiSize_H);
  
  //🇺🇲️insert into states, keep shifting. also u should be reading 4 and 
  // playing catchup . (same with wright, 
//  readFrom_Position(stdKbdBufferOffset_H  , buffer0 ,miniBuffer, 64);
  //  printf("miniBuffer0= %s \n",miniBuffer);
    
//   rotate_str_right(miniBuffer, 64,stdKbdAscii_H );
   
  // printf("miniBuffer1= %s \n",miniBuffer);
   //printf("buffer2AFTER-writee :%s\n",buffer2);
  /////////////
 fd = open(filename2, O_RDWR | O_APPEND, 0777);  

    int bitsRead2 = read(fd, buffer3, sizeof(buffer3));
    
     close(fd);
     
      //printf("buffer3 :%s\n",buffer3);
     ////////////////////////////
  //   char testString[8] = "test1234";

       write2Position(0 , buffer3, buffer4 , asciiString , stdKbdAsciiSize_H);
       strcpy(buffer3, buffer4);
  ////////////
  
  fd = open(filename2, O_RDWR | O_TRUNC , 0777); //if i dont TRUNC appends

write(fd, buffer3 ,stdBlockSize_H); //
close(fd); 

///////////////////////
  
   int c = bin2dec(asciiString);
 
 return c; 
 }
 /////////////
 */
 
  int editorReadKey(){
 
  fd = open(filename, O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, stdBlockBuffer_0, stdBlockSize_H);
close(fd); 

//printf("fd closed +1 \n");
 //readFrom_Position(stdProcTimeOffset_H, stdBlockBuffer_0 ,timeString, sizeof(timeString));

   //int currentTimeDec = bin2dec(timeString);
 ///⏰️⏰️⏰️⏰️⏰️⏰️  
  readFrom_Position(stdKbdBufferOffset_H , stdBlockBuffer_0 ,stdAsciiBuffer_0, stdKbdAsciiSize_H);

  
   int c = bin2dec(stdAsciiBuffer_0);
 
 return c; 
 }
 ///////////////
 
 //♾️
 int mainLoop(){
 // editorSetStatusMessage("HELP: Ctrl-S = save | Ctrl-Q = quit | Ctrl-F = find");



 while(1 ){
 
 int c = editorReadKey();
  editorRefreshScreen();
  
  
 strcpy(stdCommentString_0,"mainLoop()");
 
 
  stdCommentInt_0 = 66;
  stdCommentInt_1 = 77;
  stdCommentInt_2 = c ;

// exit(11);
//💎️u shouldnt need 2 run quarts but it will print same <3    
 //🏔️
//printf("kbd⌨️= %s \n ",binQuartzFlip8);
    
  
   //🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️
   editorProcessKeypress(c);
 

  usleep(100); // doesn't it READ this fast? 
   //usleep(2222000);
 
   }
 }
 //♾️
 //🔢️
long long unsigned int previousCount = 0;
  long long unsigned int currentCount = 0 ;
  long long unsigned int localDropCount = 0; 
  
  //🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️
 int newMainLoop_CountDriven(){

//  editorProcessKeypress(c);
 while(1){
// printf("in newMainLoop_CountDriven \n");
  fd = open(filename, O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, stdBlockBuffer_0, stdBlockSize_H);
close(fd); 
//https://i.4cdn.org/mu/1707981470071304.jpg
//printf("fd closed +1 \n");
 readFrom_Position(stdProcLoopCountOffset_H, stdBlockBuffer_0 , stdProcCountString_0 , stdProcLoopCountSize_H);
 

  currentCount = bin2dec(stdProcCountString_0);
  
  
 
// printf("currentCount = %d \n", currentCount);
 // printf("previousCount#0 = %d \n", previousCount);
 //🚥️🚥️🚥️🚥️🚥️
// if(currentCount > iterativeCount){
  int c = editorReadKey();
  //printf("c = %c \n",c);
  
editorRefreshScreen();


if(currentCount > previousCount ){

//if(currentCount > previousCount || currentCount > iterativeCount){ //< this one went REALLY FAST...Y? 
// it was even backspacing but , how also? (might have switched off writeClear?
//it doesnt write slow tho..  also i seem 2 be getting proper count
/// these console comments rox
  strcpy(stdCommentString_0,"current & previousCount Count ");
  stdCommentInt_0 = currentCount;
  stdCommentInt_1 = previousCount;
  stdCommentInt_2 = c;

  previousCount = currentCount; 
  
  
  //exit(91);
 //🏔️


   // are u gonna drop arrow keyes
  stdDropToProKbdMem(c);
  localDropCount++;
  //--------------------------------------------------
  retrieveKeyFromKbdMem(); // is this even doing anything? 
  			// we rather then write entire buff 2 
   
   
   //❤️‍🩹️]2.21.24 (should probably process keypress here
   // if its even a valid key (no arrow) otherwise we should return 
   // pre std_drop
   ///////////////
 //  editorProcessKeypress(c);

   //🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️

 //
  }
 //🚥️🚥️🚥️🚥️🚥️
 
 usleep(2222); // just dry counting(KEYPRSSES 2 MEM)
 }
 // we may read and write both inode counts? 
 // lets fix speed first? <Kinda> cuz u gotta. 
 // u may need 2 fix it in new renderer. so just
 // do it here after groundwork
 
 }
 //🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️🧛🏻‍♀️️
 //🎨️getting re-render@speed might get a lil rough, but 
 //🎨️its 2.12 , we have 17days till school :/
 //🎨️i think we can do it and its 'notabad'place 2 pause
  //🔢️
  //////////🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️
 
  stdDropToProKbdMem(char *c){
 
 
 //🚩️📬️🚨️🚨️🚨️🚨️🚨️🚨️🚨️🚨️
  //line 1522
 //im guessing its not reading proper filename here ] 2.21.24 
fd = open(filename3, O_RDWR | O_APPEND | O_CREAT, 0777);
 //🚩️📬️🚨️🚨️🚨️🚨️🚨️🚨️🚨️🚨️
 //🚨️🤯️its not.. then it must be the block buffer , WTF?!?
int bitsRead = read(fd, stdBlockBuffer_1, stdBlockSize_H);
 //🚨️🤯️
close(fd); 

  

char cInt2Char[1] = "0\0" ; 
 cInt2Char[0] = (char) c ;
 
// char stdTestAsciiChar = malloc(1);
 //ascii2char(c,stdTestAsciiChar ); 
 converttobinaryMalloc(c, stdAsciiBuffer_1, stdKbdAsciiSize_H); 
   
 stdAsciiBuffer_1[16] = '\0';
///
   write2Position_0000(localDropCount * stdKbdAsciiSize_H ,stdBlockBuffer_1,stdAsciiBuffer_1,stdKbdAsciiSize_H); 
   
   
     
        fd = open(filename3, O_RDWR | O_TRUNC , 0777); //if i dont TRUNC appendsstdDropToProKbdMemstdDropToProKbdMem


write(fd, stdBlockBuffer_1 ,stdBlockSize_H); //
close(fd);



//👩🏻‍🏭️i dunno wut this PROGRAM is doing , necessarily 
//👩🏻‍🏭️but i think , we can just drop mem 2 a second file
// 👩🏻‍🏭️, and render seperately anyways
     fd = open(filename5, O_RDWR | O_TRUNC| O_CREAT , 0777); //if i dont TRUNC appendsstdDropToProKbdMemstdDropToProKbdMem

stdBlockBuffer_1[stdBlockSize_H] = '\0';
write(fd, stdBlockBuffer_1 ,stdBlockSize_H); //
close(fd);



//this actually IMMEDIATELY SOLVED EVERTHING , 
// and showed 2 be writing corrupt data also , which 
// may have effected other mem..
// save this "FOUL STATE" for debug pls. (till we fix ) 
  }
  
//////////🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️🕳️
//🛅️🤳️						🛅️🤳️
//////
	int retrieveKeyFromKbdMem(){
// pick back up from drop and print NOW (remove prev print||or not w/e )
fd = open(filename3, O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, stdBlockBuffer_1, stdBlockSize_H);
close(fd); 

readFrom_Position(localDropCount * stdKbdAsciiSize_H - stdKbdAsciiSize_H  , stdBlockBuffer_1 ,stdAsciiBuffer_1, stdKbdAsciiSize_H);
//duno y i had 2 minus 1bytesize, but it works now...]2.16.24


int c = bin2dec(stdAsciiBuffer_1);
editorRefreshScreen();
 editorProcessKeypress(c);
  stdCommentInt_2 = c;
 
  strcpy(stdCommentString_0,"in retrieveKeyFromKbdMem()");

}
//🛅️🤳️						🛅️🤳️
////////////
//👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️
int retrieveKeyFromMem_STDLOAD(char *filenameArg){

char *fdBuffer = malloc(stdBlockSize_H * 2); ///999999
  printf("📖️infx: \n %s \n","hi👁️‍🗨️️");
// exit(911);

int fd = open(filenameArg, O_RDWR | O_APPEND | O_CREAT, 0777);
  read(fd, fdBuffer, stdBlockSize_H * 2);
close(fd); 

  printf("fdBuffer: \n %s \n",fdBuffer);
//  exit(911);
  //char sizedBuffer = 
int  strlenOfBuffer = strlen(fdBuffer);
printf("strlenOfBuffer %d\n",strlenOfBuffer);
 char *sizedfdBuffer = malloc(strlenOfBuffer);
 strcpy(sizedfdBuffer,fdBuffer);
 sizedfdBuffer[strlenOfBuffer] = '\0';
 int  strlenOfAsciiBuffer = strlenOfBuffer / 16;
 printf("strlenOfAsciiBuffer %d\n",strlenOfAsciiBuffer);
char *asciiBuffer = malloc(strlenOfAsciiBuffer);
////////
//🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
// its simple. if it was ascii u could just skip this line
std_binaryBuffer2Ascii(sizedfdBuffer,strlenOfAsciiBuffer,asciiBuffer);

//🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
printf("asciiBuffer: \n %s \n",asciiBuffer);
//exit(911);
asciiBuffer[strlenOfAsciiBuffer] = '\0' ;
//👁️‍🗨️️
int i ;

for(i = 0; i < strlenOfAsciiBuffer ; i++) {

//buffer1[i] = '0'; 
//😵‍💫️i think the confusion here is where 2 start
// pre or post binary conversion? 
//readFrom_Position(i * stdKbdAsciiSize_H - stdKbdAsciiSize_H  , stdBlockBuffer_1 ,stdAsciiBuffer_0, stdKbdAsciiSize_H);
//duno y i had 2 minus 1bytesize, but it works now...]2.16.24


//int c = bin2dec(stdAsciiBuffer_0);
int c = asciiBuffer[i]; 

//💌️
stdDropToProKbdMem(c);
localDropCount++;
retrieveKeyFromKbdMem();
//💌️
}
//👁️‍🗨️️
 free(fdBuffer);
 //🍒️one theory for segfault is that this is interfering
 // with  autoloop buffers? 
// externStringInit();

//  initEditor();
}
////////👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️👁️‍🗨️️📖️
///❌️🐞️✖️ was gonna be this till we "SWAPPED" ❌️🐞️✖️
///////////📂️📂️📂️📂️📂️📂️📂️📂️📂️📂️
editorOpen2Bin(char *filename) {
//🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️
//
// we dont use any of this we just read the file in however its supposed 
// 2 be read as individual "qilo keys"
//🏗️move "save_bin" into qilo and do the rest there.
// unless u can do linelen on a buffer
// u can so convert fd here then get line, cuz its more testable.
//🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️🛑️

  free(E.filename);
  E.filename = strdup(filename);

  editorSelectSyntaxHighlight();

/*
  FILE *fp = fopen(filename, "r");
  if (!fp) die("fopen");
  */
  
  char fdBuffer[99999];
  
 int fd = open(filename, O_RDWR | O_APPEND | O_CREAT, 0777);
  read(fd, fdBuffer, sizeof(fdBuffer));
close(fd); 

///
//https://c-for-dummies.com/blog/?p=1112
/////////////////////////////////////////////SUPREME
//  how to use "FD" with a "CHAR BUFFER" = not doable. 
/// u have to "DIY" 
// but u just do it line by line and store "\n" 
// EOF is just end of strlen(count);

//strok is evil . just do a while loop...
//////////////////////////////////
//char sizedBuffer = 
int  strlenOfBuffer = strlen(fdBuffer);
printf("strlenOfBuffer %d\n",strlenOfBuffer);
 char *sizedfdBuffer = malloc(strlenOfBuffer);
 strcpy(sizedfdBuffer,fdBuffer);
 sizedfdBuffer[strlenOfBuffer] = '\0';
 int  strlenOfAsciiBuffer = strlenOfBuffer / 16;
 printf("strlenOfAsciiBuffer %d\n",strlenOfAsciiBuffer);
char *asciiBuffer = malloc(strlenOfAsciiBuffer);
////////
std_binaryBuffer2Ascii(sizedfdBuffer,strlenOfAsciiBuffer,asciiBuffer);
//exit(911);

printf("asciiBuffer: \n %s \n",asciiBuffer);
asciiBuffer[strlenOfAsciiBuffer] = '\0' ;
////////
 
/*
  char *line = NULL;
  size_t linecap = 0;
  ssize_t linelen;
  while ((linelen = getline(&line, &linecap, asciiBuffer)) != -1) {
    while (linelen > 0 && (line[linelen - 1] == '\n' ||
                           line[linelen - 1] == '\r'))
      linelen--;
    editorInsertRow(E.numrows, line, linelen);
  }
  exit(911);
  free(line);
//  fclose(fp);
  E.dirty = 0;
  exit(911);
  */
}
///////////📂️📂️📂️📂️📂️📂️📂️📂️📂️📂️
////////
////////
///❌️🐞️✖️ ❌️🐞️✖️ ❌️🐞️✖️ ❌️🐞️✖️ 

//////////////////////////

int main(int argc, char* argv[]){
externStringInit();//🏌️

//atexit(atexit_fxpass ); // didnt do anything 

  initEditor();
  // editorOpen();
  
  /*
     system("./2.qil.ngn]🪶️🎨️]0002.+x 0000000000110000.pro 0000000000110001.pro 0000000000110010.pro playground.txt 0000000000110011.pro");
     */
     
     // playground is out of order, this is causing confusion
     
      if (argv[6] != NULL){ 

strcpy(filename6, argv[6]); // save file 4 now.
}else{

 }
 ///////////
  
    if (argv[5] != NULL){ 

strcpy(filename5, argv[5]); // save file 4 now.
}else{

 }
 
  
  if (argv[4] != NULL){ 

//strcpy(filename2, argv[3]);
//editorOpen(argv[4]);

//editorOpen2Bin(argv[4]); //❌️🐞️✖️
//🥈️🐞️ur probably gonna make 2 diff "LOADS
//🥈️🐞️ u want one for bin (dont have) 
//🥈️🐞️but u may also use the ascii for w/e reason? 
retrieveKeyFromMem_STDLOAD(argv[4]);//🤏️//PINCH

}else{
// switch back 2 "arg2 then arg1 after test.."
//return 0;
 }
 
   if (argv[3] != NULL){ 
// editorOpen(argv[3]);
//strcpy(filename2, argv[3]);
//editorOpen(argv[3]);
strcpy(filename3, argv[3]); //10 EMTY FOREVER? = yes... ]📧️📭️use 4 "E.buffer"
}else{
// switch back 2 "arg2 then arg1 after test.."
//return 0;
 }

//{then email <QLU}📧️
//🧠️combo of all things "save / load , "2pro.frompro"
//also i think u should turn off save/ load so not 2 get confused, 
//🔑️ u will turn off "read from 2pro. aswell...)
// when u get keys workign w/o "read from 2pro , ur good"🔑️ 
//🧠️
//👨🏻‍🏭️
// its not a bad place for the buffer mem , if u treat it like 
// the kbd-pro mem , we will stop loading from kdbpromem , drop ENTIRE BUFFER
// and reload BUFFER MEM ONLY (kbdpromem is just a log (since its not in kbd2mem)
// cuz we wanna let the process flush its own kbd mem. 
// and we could also keep kbd2mem infinite in future but its easier 2 work with 4 now
// just get workign frameworks pls. donts sweat smol stuff. 
//👩🏽‍🏫️understand E.rows , even make "non struct" and we can swap if needed
// its smoller than it looks and u want 2 have control of it anyways
// would be nice b4 school.
//👩🏽‍🏫️
//📭️Step 124 -> its renderering "1010" as a "enter keypress , NOT AS "\n"😮‍💨️
//🧐️this is gonna take some digging... u may even seperate it back and fool with it some more? 
////🧐️hell u may deconstruct it entirely w/e is fastest but then nino may not port but w/e ... 
// 👆️we can port it by individual functionally(there there), so honestly dont even think of that. 👆️
//✍️u may even write the render "FROM SCRATCH" using these concepts, then u would truly understand... //✍️
//⌚️not sure if we have time for that tho...⌚️\
//i thot there would be "\n" in buffer but its not its "1010"?(wuts that as ascii?" " but wut in buffer?!?!) wussup? 

///Step 125 : if u "read" =just above= this 
// it explains ALOT. 
//🤔️
// its more of a "single purpose renderer / ui"
//but that can change (even stayin in frame)
//🚨️
/// the real problem is when it loads "
// its not interpreting "1010" as a newline. Y?
//u dont have 2 do this 2 get buff mem 
//but it may be an ez win... (it was... 
// 📮️now the problem is . it needs 2 catchup 2 "# of readcount? b4 it will 
//render keypresses... why?
//🧠️i think the fix is 2 "inc  count at  load , and save into 
// 🧠️kbd pro mem , then u can render from kbd pro mem 
// and save back into "loaded mem (or somewhere else tbh
//and u could even read back from (somewhere else later
// maybe eazier than we thot tho <3  //🧠️
//😲️it might even "COUNT ITSELF" if u load it INTO KBD MEM ON LOAD
//unless u use sepearte mem. w/e 
//😲️
//📮️just discovered "file2 doesn't write either. 
//so somehow  , it renders "FROM MEM" but only writes during kbd
// so something really weird is going on , we need 2 clear
//off as many mem files as possible 2 diagnose

//🚨️ 
//👨🏻‍🏭️

if (argv[2] != NULL){ 
// editorOpen(argv[2]);
strcpy(filename2, argv[2]); //kbd.pro mem (not used now!⁉️)
//printf("passed arg filename2 !%s \n", filename2);
//exit(91);
}else{
// switch back 2 "arg2 then arg1 after test.."
//return 0;
 }

    if (argv[1] != NULL){ 
	 
	//printf("passed arg !%s \n", argv[1]);
	//strcpy(tidStripped, argv[1]);
	strcpy(filename, argv[1]);

	tidLocation = strstr(filename, ".pro");
	         // search for string
 }else{
	printf("no arg[1] \n");
	exit(-1);
	//strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};
//♾️
// mainLoop();
newMainLoop_CountDriven();
//♾️
////
 
free(stdBlockBuffer_0 );
free(stdBlockBuffer_1 );
free(stdBlockBuffer_2 );
free(stdBlockBuffer_3 );
free(stdShiftBuffer_0);
free(stdAsciiBuffer_0);
free(stdAsciiBuffer_1);
free(stdProcCountString_0);
///
 free(asciiString);
 printf("exiting 2.qil.ngn]🪶️🎨️]0002; sudo return = 100 \n");
    return 100; 
} 
