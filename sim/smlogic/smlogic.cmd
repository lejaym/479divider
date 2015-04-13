stepsize 50
settle 10
vector sel sel1 sel0
vector SB SB1 SB0
vector nextSB nextSB1 nextSB0
w load shift inbit add sel start sign SB nextSB clk reset
vector in start sign SB1 SB0

h reset
s
h clk
s
l reset clk
s
h clk
s
l clk
s
set in 0000
h clk
s
l clk
s
set in 0001
h clk
s
l clk
s
set in 0010
h clk
s
l clk
s
set in 0011
h clk
s
l clk
s
set in 0100
h clk
s
l clk
s
set in 0101
h clk
s
l clk
s
set in 0110
h clk
s
l clk
s
set in 0111
h clk
s
l clk
s
set in 1000
h clk
s
l clk
s
set in 1001
h clk
s
l clk
s
set in 1010
h clk
s
l clk
s
set in 1011
h clk
s
l clk
s
set in 1100
h clk
s
l clk
s
set in 1101
h clk
s
l clk
s
set in 1110
h clk
s
l clk
s
set in 1111
h clk
s
l clk
s
analyzer load shift inbit add sel start sign SB nextSB clk reset

