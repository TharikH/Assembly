START
         LDB      #3
         CLEAR    S
         CLEAR    X
         CLEAR    T
         CLEAR    A

        
LOOP     LDA      NUMBER,X
         COMP     #0
         JEQ      CONT
         COMP     #0
         JGT      POS
         RMO      S,A
         ADD      #1
         RMO      A,S
         J        CONT
POS      RMO      T,A
         ADD      #1
         RMO      A,T
CON      ADDR     B,X
         RMO      X,A
         COMP     #300
         JLT      LOOP
         STT      POSCOUNT
         STS      NEGCOUNT
         RSUB

NUMBER   RESW     100
POSCOUNT RESW     1
NEGCOUNT RESW     1
         END