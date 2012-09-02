                    # use B reg for n
        LDIA  0     # use A reg for sum
        LDB   0x40  # read n from switches
        ANDIB 0x0F  # mask least significant nibble
LOOP:   JBZ   DONE  # jump to end if done
        ADDIA 10    # increment sum
        SUBIB 1     # decrement n
        JMP   LOOP  # iterate
DONE:   STA   0x41  # display sum

# define IN * (0x40)
# define OUT *(0x41)

# main() {
#    int n;
#    int sum = 0;
#
#    n = IN & 0x0f;
#
#    while( n != 0 ) {
#        sum += 10;
#        n--;
#    }
#    OUT = sum;
# }    

