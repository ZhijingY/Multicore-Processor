#---------------------------------------
# test beq not taken
#---------------------------------------

    org   0x0000
    ori $2, $0, 0x5
    ori $3, $0, 0x9
    ori $4, $0, 0xFF00

    beq $2, $3, test
check:
    ori $2, $0, 0x20
    sw    $2,8($4)
    halt

test:
    ori $2, $0, 0x9
    sw    $3,8($4)
    halt

