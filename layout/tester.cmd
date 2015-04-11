stepsize 1000
settle 100
vector divisorin divisorin_{6:0}
vector dividendin dividendin_{7:0}
vector remainder remainder_{6:0}
vector quotient quotient_{7:0}

vector divregout divregout{7:0}
vector sel sel{1:0}
vector rmuxout rmuxout{7:0}
vector qmuxout qmuxout{7:0}
vector state SB{1:0}
vector sumout sign sum{6:0}

|smlogic related: clk reset start state add shift sel inbit load
w clk reset start state sign quotient remainder qmuxout rmuxout divregout sumout add valid shift inbit

|w  rmuxout qmuxout divregout quotient remainder SB0 SB1 sign start reset clk 
|sum0 sum1 sum2 sum3 sum4 sum5 sum6 divregout0 divregout1 divregout2 divregout3 divregout4 divregout5 divregout6 divregout7
|clkload nextsb1 nextsb0

| FOR ASYNC RESET, CLK MUST BE SET HI or LOW. ASYNC RESET DOES NOT WORK
| IF CLK IS X

set dividendin 00000000
set divisorin 0000000

l start
h clk
h reset
s
l reset
s
s
h clk
s
l clk
h reset
s

exit
l start
h reset
h clk
s
l clk
s
l reset
s

| Set up vectors
print "load dividend/divisor"
set divisorin 1111111
set dividendin 11111111

h start
s
h clk
s
l clk 
s
h clk
s
l clk
s
l start

exit

