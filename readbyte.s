        START
        CLEAR    X
        LDS      #100
DEVLOOP TD       DEV
        JEQ      DEVLOOP
        RD       DEV
        STCH     RECORD,X
        TIX      S
        JLT      RLOOP
        RSUB

DEV     BYTE     X’F1’
RECORD  RESB     100
        END