stepsize 1000
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
w clk reset start state sign quotient remainder qmuxout rmuxout divregout sumout add

|w  rmuxout qmuxout divregout quotient remainder SB0 SB1 sign start reset clk 
|sum0 sum1 sum2 sum3 sum4 sum5 sum6 divregout0 divregout1 divregout2 divregout3 divregout4 divregout5 divregout6 divregout7
|clkload nextsb1 nextsb0
settle 10

l start
h clk 
h reset
s
l reset
s
l clk
s

| Set up vectors
print "load dividend/divisor"
set divisorin 0000011
set dividendin 00010000


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

print "17 cycles"
| Now, wait 17 cycles

s
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
h clk
s
l clk
s
h clk
s
l clk
s
print "extra cycles"
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
h clk
s
l clk
s

| Print out results

w remainder quotient
s
exit
