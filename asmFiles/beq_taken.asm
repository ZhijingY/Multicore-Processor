#---------------------------------------
# test beq taken
#---------------------------------------

    org   0x0000
    ori $2, $0, 0x5
    ori $3, $0, 0x9
    ori $4, $0, 0x5
    ori $5, $0, 0xFF00

    beq $2, $4, test
check:
    ori $2, $0, 0x20
    halt

test:
    ori $2, $0, 0x9
    sw    $2,8($5)
    beq $2, $4, test
    beq $3, $2, check

