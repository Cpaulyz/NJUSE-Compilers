#ifndef MIPSH
#define MIPSH

#define REG_NUM 32
#define REG_T_START 8
#define REG_T_END 16
#include "intercode.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

typedef struct Var_t* Var;
typedef struct Resigter_* Register;

typedef struct Var_t {
	char *name;
	int reg;
	int offset;
	struct Var_t *next;
} Var_t;

typedef struct Register_ {
	char *name;
	Var_t *var;
} Register_;


void printMips(char *fileName);
void printMipsCode(InterCode interCode);

void mipsIFGOTO(InterCode code);
void mipsRETURN(InterCode code);
void mipsDEC(InterCode code);
void mipsARG(InterCode code);
void mipsPARAM(InterCode code);
void mipsCALL(InterCode code);

void initRegs(); // 初始化寄存器
void allocReg(int regIndex,Var var); // 分配寄存器给变量
char* printReg(int regIndex);
void lwReg(int regIndex,Var var); // load
void swReg(int regIndex); //store
int getReg(Operand op);
Var findVar(char *name);
void addVar(Var var);

#endif