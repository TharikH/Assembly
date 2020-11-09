    START
        CLEAR    S
        CLEAR    T
        LDB      #3
.BUBBLE SORT
ILOOP   CLEAR    A
        CLEAR    X
        STA      FLAG
JLOOP   LDT      NUMBER,X
        ADDR     B,X
        LDA      NUMBER,X
        COMPR    A,T
        JGT      NOTIF
        SUBR     B,X
        STA      NUMBER,X
        ADDR     B,X
        STT      NUMBER,X
        LDA      #1
        STA      FLAG
NOTIF   LDA      #300
        SUBR     S,A
        SUBR     B,A
        COMPR    X,A
        JLT      JLOOP
        CLEAR    A
        COMP     FLAG
        JEQ      CONT
        ADDR     B,S
        RMO      S,A
        COMP     #297
        JLT      ILOOP
CONT    RSUB

NUMBER  RESW     100
FLAG    RESW     1
        END
