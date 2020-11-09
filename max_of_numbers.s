         START
         LDB      #3
         LDS      #300
         CLEAR    A
         CLEAR    T
         CLEAR    X
        
         LDT      NUMBER,X
LOOP     LDA      NUMBER,X
         COMPR    A,T
         JLT      CONTINUE
         RMO      A,T
CONTINUE ADDR     B,X
         COMPR    X,S
         JLT      LOOP
         STT      MAX
         RSUB

NUMBER   RESW     100
MAX      RESW     1
         END