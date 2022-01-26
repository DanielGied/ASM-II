
    ORG    $1000
START:                  

    LEA health, A2  ;LEA of health into A2
    MOVE A2, D1   ;Moves a2 into d1
    ADD #5, D1      ;Add 5 to d1    
    SUB #5, D1      ;Subtracts 5 from d1
    MULU #2, D1     ;Multiply value in D1 by 2 and store in D1
    DIVU #2, D1     ;Divide value in D1 by 2 and store in D1

    SIMHALT             

health dc.b $10

    END    START        


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
