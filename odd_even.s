         START
         CLEAR    B
         CLEAR    X
         CLEAR    S
         CLEAR    T
         CLEAR    A
    
LOOP     LDA      NUMBER,X
         RMO      A,B
         DIV      #2
         MUL      #2
         COMPR    A,B
         JEQ      EVENLOOP
         RMO      T,A
         ADD      #1
         RMO      A,T
         J        CONT
EVENLOOP RMO     S,A
         ADD      #1
         RMO      A,S
CONT     RMO      X,A
         ADD      #3
         RMO      A,X
         COMP     #300
         JLT      LOOP
         STT      ODDCOUNT
         STS      EVNCOUNT
         RSUB

NUMBER   RESW     100
EVNCOUNT RESW     1
ODDCOUNT RESW     1
         END
