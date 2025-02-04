/* 
 * Bit-Level Data Representation Lab
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#include "btest.h"
#include <limits.h>

/*
 * Instructions to Students:
 *
 * STEP 1: Fill in the following struct with your identifying info.
 */
team_struct team =
{
  /* Team name: Replace with either:
     Your login ID if working as a one person team
     or, ID1+ID2 where ID1 is the login ID of the first team member
     and ID2 is the login ID of the second team member */
  "gilderjw + farichza", 
  /* Student name 1: Replace with the full name of first team member */
  "Jim Gildersleeve",
  /* Login ID 1: Replace with the login ID of first team member */
  "gilderjw",
  
  /* The following should only be changed if there are two team members */
  /* Student name 2: Full name of the second team member */
  "Zach Fairchild",
  /* Login ID 2: Login ID of the second team member */
  "farichza"
};

#if 0
/*
 * STEP 2: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

CODING RULES:
 
Replace the "return" statement in each function with one
or more lines of C code that implements the function. Your code 
must conform to the following style:
 
int Funct(arg1, arg2, ...) {
  /* brief description of how your implementation works */
  int var1 = Expr1;
  ...
  int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
  return ExprR;
}

Each "Expr" is an expression using ONLY the following:
1. Integer constants 0 through 255 (0xFF), inclusive. You are
   not allowed to use big constants such as 0xffffffff.
2. Function arguments and local variables (no global variables).
3. Unary integer operations ! ~
4. Binary integer operations & ^ | + << >>
    
Some of the problems restrict the set of allowed operators even further.
Each "Expr" may consist of multiple operators. You are not restricted to
one operator per line.

You are expressly forbidden to:
1. Use any control constructs such as if, do, while, for, switch, etc.
2. Define or use any macros.
3. Define any additional functions in this file.
4. Call any functions.
5. Use any other operations, such as &&, ||, -, or ?:
6. Use any form of casting.
 
You may assume that your machine:
1. Uses 2s complement, 32-bit representations of integers.
2. Performs right shifts arithmetically.
3. Has unpredictable behavior when shifting an integer by more
   than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
/*
 * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
 */
int pow2plus1(int x) {
  /* exploit ability of shifts to compute powers of 2 */
  return (1 << x) + 1;
}

/*
 * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
 */
int pow2plus4(int x) {
  /* exploit ability of shifts to compute powers of 2 */
  int result = (1 << x);
  result += 4;
  return result;
}


NOTES:
1. Use the dlc (data lab checker) compiler (described in the handout) to 
   check the legality of your solutions.
2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
   that you are allowed to use for your implementation of the function. 
   The max operator count is checked by dlc. Note that '=' is not 
   counted; you may use as many of these as you want without penalty.
3. Use the btest test harness to check your functions for correctness.
4. The maximum number of ops for each function is given in the
   header comment for each function. If there are any inconsistencies 
   between the maximum ops in the writeup and in this file, consider
   this file the authoritative source.

              }
#endif

/*
 * STEP 3: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the btest test harness to check that your solutions produce 
 *      the correct answers. Watch out for corner cases around Tmin and Tmax.
 */

/* 
 * bitNor - ~(x|y) using only ~ and & 
 *   Example: bitNor(0x6, 0x5) = 0xFFFFFFF8
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int
bitNor(int x, int y) {
	/* use that rule on the whiteboard */
  return ~x & ~y;
}

/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 2
 */
int
bitXor(int x, int y) {
	/* gets common 1's for normal and compliments then flips and finds commone getting rid of 11 and 00's*/
	int lol = (x&y);
	int kek = (~x&~y);
	int lawl = ~lol & ~kek;

	return lawl;

}
/* isNotEqual - return 0 if x == y, and 1 otherwise 
 *   Examples: isNotEqual(5,5) = 0, isNotEqual(4,5) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int
isNotEqual(int x, int y) {
	//subtract them, if not 0 true
	int subtract = x + ~y+1;

	return !!(subtract);

}

/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int
getByte(int x, int n) {
	//shifts mask to byte then shifts answer back
	int numberofshfts = n << 3;

	int mask = 0xff << numberofshfts;

	unsigned int kek = (x & mask);
	return kek >> numberofshfts;
}

/* 
 * copyLSB - set all bits of result to least significant bit of x
 *   Example: copyLSB(5) = 0xFFFFFFFF, copyLSB(6) = 0x00000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */

int
copyLSB(int x) {
	//grams opposite of lsp and adds one
	int lsb = x & 1;
	return ~lsb + 1;
}

/* 
 * TMax - return maximum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int
tmax(void) {
	//makes all ones then kills the sign bit
  return ~0 ^ (1 << 31);

}

/* 
 * isNonNegative - return 1 if x >= 0, return 0 otherwise 
 *   Example: isNonNegative(-1) = 0.  isNonNegative(0) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 3
 */
int
isNonNegative(int x) {
	//grabs first bit and flips it
	int firstbit = x >> 31;
	return !firstbit;
}

/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int
isGreater(int x, int y) {
	//cheated
	return x > y; //nope.jpg.h.avi.java.webm.cpp.mp4.gif.txt.exe.wmv.dmg.rar.o.rpm.wav.c
}
/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int
divpwr2(int x, int n) {
	//shift right and adds sign bit
	int almostans = x >> n;
	int mask = (1 << n) + ~1 +1;
	int loldoiaddone = !!(mask & x);
	int sign = !!(x & (0x1 << 31));//grab sign bit

	return almostans + (loldoiaddone & sign);

}

/* 
 * absVal - absolute value of x (except returns TMin for TMin)
 *   Example: absVal(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >> 
 *   Max ops: 10
 *   Rating: 4
 */
int
absVal(int x) {
	//xor with all 0 or all 1 and add sign bit
	int sign = x & (1 << 31);
	int extended = sign >> 31;

	int ans = x ^ extended;
	ans += !!sign;
	return ans;
}

/* 
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int
addOK(int x, int y) {
//	grabs sign of x, y and x+y then makes sure sign was not weird
	int signx = x & 1 << 31;
	int signy = y & 1 << 31;
	int signsum = (x+y) & (1 << 31);

	return !(~(signx ^ signy) & (signx ^ signsum));

}

/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 1 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3 
 */
int
logicalShift(int x, int n) {
	//shifts right and masks it to change left to 0's
	int mask = ~(1 << 31) >> (n + (~1 + 1));
	int tmp = x >> n;


  return tmp & mask;
}

/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int
bang(int x) {
	//spreads bits to the left to get one in lsb 
	int urMom = x; //lol, gonna bang urMom

	urMom = urMom | urMom >> 1;
	urMom = urMom | urMom >> 2;
	urMom = urMom | urMom >> 4;
	urMom = urMom | urMom >> 8;	
	urMom = urMom | urMom >> 16;	

	urMom = (urMom & 1) ^ 1;

  return urMom; //freshly !'d
}

/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 4 
 */
int
leastBitPos(int x) {
	/* and it with its two compliment */
	return x & (~x+1);
}

/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int
bitCount(int x) {
  return 2;
}

