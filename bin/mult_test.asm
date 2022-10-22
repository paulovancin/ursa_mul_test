
mult_test.o:     file format elf32-littleriscv


Disassembly of section .text.mult_test:

00000000 <mult_test>:
#include <libc.h>

#define MUL *CPU_COUNTER_MUL
#define ARITH *CPU_COUNTER_ARITH

void mult_test(int argc, char **argv) {
   0:	fe010113          	addi	sp,sp,-32
   4:	01412423          	sw	s4,8(sp)
    int x;
    MUL = 0;
   8:	00000a37          	lui	s4,0x0
void mult_test(int argc, char **argv) {
   c:	01312623          	sw	s3,12(sp)
    MUL = 0;
  10:	000a2703          	lw	a4,0(s4) # 0 <mult_test>
    ARITH = 0;
  14:	000009b7          	lui	s3,0x0
  18:	0009a783          	lw	a5,0(s3) # 0 <mult_test>
void mult_test(int argc, char **argv) {
  1c:	00912a23          	sw	s1,20(sp)
  20:	00112e23          	sw	ra,28(sp)
  24:	00812c23          	sw	s0,24(sp)
  28:	01212823          	sw	s2,16(sp)
    MUL = 0;
  2c:	00072023          	sw	zero,0(a4)
    ARITH = 0;
  30:	00a00493          	li	s1,10
  34:	0007a023          	sw	zero,0(a5)

00000038 <.L2>:
    for(int i = 0; i < 10; i++){
      x += random() * random() * random();
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.L2>

00000040 <.LVL2>:
  40:	00050413          	mv	s0,a0
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL2+0x4>

0000004c <.LVL3>:
  4c:	02a40433          	mul	s0,s0,a0
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL3+0x4>

00000058 <.LVL4>:
    for(int i = 0; i < 10; i++){
  58:	fff48493          	addi	s1,s1,-1

0000005c <.LVL5>:
      x += random() * random() * random();
  5c:	02a40433          	mul	s0,s0,a0
  60:	00890933          	add	s2,s2,s0

00000064 <.LVL6>:
    for(int i = 0; i < 10; i++){
  64:	fc049ae3          	bnez	s1,38 <.L2>

00000068 <.LBE2>:
    }

    int aux = MUL;
  68:	000a2683          	lw	a3,0(s4)
    int aux2 = ARITH;
  6c:	0009a703          	lw	a4,0(s3)
    printf("CPU: aux=%u, %d, %u, %u, %d\n", aux, x, MUL, ARITH, aux2);
  70:	00000537          	lui	a0,0x0
    int aux = MUL;
  74:	0006a583          	lw	a1,0(a3)

00000078 <.LVL7>:
    int aux2 = ARITH;
  78:	00072783          	lw	a5,0(a4)

0000007c <.LVL8>:
    printf("CPU: aux=%u, %d, %u, %u, %d\n", aux, x, MUL, ARITH, aux2);
  7c:	0006a683          	lw	a3,0(a3)
  80:	00072703          	lw	a4,0(a4)
  84:	00090613          	mv	a2,s2
  88:	00050513          	mv	a0,a0
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.LVL8+0x10>

00000094 <.LVL9>:
    printf("-------------------\n");

}
  94:	01812403          	lw	s0,24(sp)
  98:	01c12083          	lw	ra,28(sp)
  9c:	01412483          	lw	s1,20(sp)
  a0:	01012903          	lw	s2,16(sp)

000000a4 <.LVL10>:
  a4:	00c12983          	lw	s3,12(sp)
  a8:	00812a03          	lw	s4,8(sp)
    printf("-------------------\n");
  ac:	00000537          	lui	a0,0x0
  b0:	00050513          	mv	a0,a0
}
  b4:	02010113          	addi	sp,sp,32
    printf("-------------------\n");
  b8:	00000317          	auipc	t1,0x0
  bc:	00030067          	jr	t1 # b8 <.LVL10+0x14>
