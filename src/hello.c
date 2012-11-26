
#include <R.h>
#include <Rdefines.h>
#include <stdio.h>
SEXP hello() {
  Rprintf("hello, JASPAR!\n"); //solution1
  //printf("hello, JASPAR!\n"); //solution2
  return(R_NilValue);
}

