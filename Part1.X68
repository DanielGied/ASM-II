*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  

    LEA text1, A1       ;The effective address is computed and loaded into the address register A1
    MOVE #14, D0        ;Move number 14 into D0
    TRAP #15            ;Trap 15 examine instruction at D0 
    MOVE #4, D0         ;Move number 4 to D0
    TRAP #15            ;Trap 15 examine instruction at D0
    MOVE.W D1, $2000    ;Number entered from keyboard into memory location 2000
    LEA text2, A1       ;Load address of text into A1
    MOVE #14, D0        ;Move number 14 into D0
    TRAP #15            ;Trap 15 examine instruction at D0 
    MOVE #3, D0         ;Move number 3 to D0
    TRAP #15            ;Trap 15 examine instruction at D0
    SIMHALT             

text1 dc.b 'Enter your gamer points: ',0
text2 dc.b 'Your gamer points are: ',0

    END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
