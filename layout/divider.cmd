|quotient is now reading values from shifter (puttin qregin test points connected shifter out to reg input bc wasnt connected before?) 
|quotient lags by one cycle...



stepsize 1000
settle 10
vector divisorin divisorin_{6:0}
vector dividendin dividendin_{7:0}
vector remainder remainder_{6:0}
vector quotient quotient_{7:0}

vector divregout divregout{7:0}
vector validregs valid validregs{8:0}
vector sel sel{1:0}
vector rmuxout rmuxout{7:0}
vector qmuxout qmuxout{7:0}
vector state SB{1:0}
vector sumout sign sum{6:0}
vector qregin qregin{7:0}
vector rregin rregin{7:0}

|smlogic related: clk reset start state add shift sel inbit load
w clk reset start state sign add quotient remainder qregin qmuxout rregin rmuxout divregout sumout
| valid shift inbit validregs

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
l clk
l reset
s

| Set up vectors
print "load dividend/divisor"
set divisorin 0000011
set dividendin 00010000


h start
s
h clk
s
l start
s
l clk
s

print "17 cycles"
| Now, wait 17 cycles


h clk
s
l clk
s
h clk
s
l clk
s
h clk
s
l clk
s
| repeat h clk s l clk s 14 times


| Print out results

w remainder quotient
s
tcap
exit

