
    ORG    $1000
START:                 

    LEA text, A1
    MOVE.W #2, D0        ;Number 2 in D0
    TRAP #15             ;Read string from keyboard and store at (A1)
    
    MOVE.B #5, D0        ;Number 5 in D0
    TRAP #15             ;Read single character from the keyboard into D1.B
    
    MOVE.B #8, D0        ;Number 8 in D0
    TRAP #15             ;Return time in hundredths of a second
    
    MOVE.W #41, D1
    MOVE.B #15, D1
    MOVE.B #11, D0
    TRAP #15              ;Position the cursor at ROW, COL.
    
    MOVE.B #13, D0        ;Number 13 in D0
    TRAP #15              ;Display the NULL terminated string at (A1)with CR, LF.
    
    MOVE.B #17, D0        
    TRAP #15              ;Display the NULL terminated string at (A1) and then dispay the deciaml number
    
    MOVE.B #18, D0        
    TRAP #15              ;Display the NULL terminated string at (A1) and then read a number from the keyboard
    
    MOVE.L #$042194, D1
    MOVE.B #%0101, D2
    MOVE.B #21, D0
    TRAP #15              ;Set font color of D1 and D2
    
    MOVE.B #13, D0      ;Number 13 in D0
    TRAP #15            ;Display string in a1

    SIMHALT            

text dc.b 'Please enter input to keyboard: ' ,0

    END    START      

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
