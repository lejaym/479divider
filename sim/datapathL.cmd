stepsize 1000
settle 10

vector reset reset1 reset2
vector clk clk1 clk2
vector resetout resetout1 resetout2
vector clkout clkout1 outclk2
vector sel sel1 sel0
vector selout sel1out sel0out

w clk reset clkld clkout resetout clkldout regin regout

print "Check divisor register with all subsequent cells floating"
set clk 11
s
set clk 00
s
set reset 11
s
set clk 11
s
set reset 00
s
set clk 00
s
set clk 11
s
set clk 00
s
set clk 11
s
h regin
s
set clk 00
s
set clk 11
s
set clk 00
s
h clkld
set clk 11
s
l clkld
set clk 00
s
set clk 11
s
set clk 00
s
l regin
set clk 11
s
set clk 00
s
h clkld
set clk 11
s
l clkld
set clk 00
s
set clk 11
s
set clk 00
s
set clk 11
s
set clk 00
s


print "Check addsub cell"
w -clkout -resetout -clkldout -clkld -regin 
w botregout cin addout add cout sum 

h add
l cin

|Pass addsub result through mux and shifter unchanged
set sel 01
l  shiftin

|Test with divisor = 0
set reset 11
set clk 11
s
set clk 00
s
set reset 00
s
set clk 11
s
set clk 00
h cin
s
set clk 11
s
set clk 00
s
l add
set clk 11
s
set clk 00
s

|Test with divisor = 1
h regin clkld
set clk 11
s
l clkld
set clk 00
s
h add
l cin
set clk 11
s
set clk 00
s

print "Check mux"
w -add -addout -cin -cout
w muxout sel selout

|Check that bottom register is feeding back on itself
s
set sel 11
set clk 11
s
set clk 00
s
set clk 11
s
set clk 00
s
|Reload bottom register with '1'
set sel 01
set clk 11
s
set clk 00
s
|Recheck register feedback
set sel 11
set clk 11
s
set clk 00
s
set clk 11
s
set clk 00
s
|Check that bottom register is always 0 (input is grounded)
set sel 10
set clk 11
s
set clk 00
s
set clk 11
s
set clk 00
s
set clk 11
s
set clk 00
s

print "Check shifter"
w -reset -selout -regout -sel
w botregin clkout resetout reset shiftin inbit

l shiftin inbit
set clk 11
s
set clk 00
s
h inbit 
set clk 11
s
set clk 00
s
h shiftin
set clk 11
s
set clk 00
s
l inbit
set clk 11
s
set clk 00
s
l shiftin
h muxout 
set clk 11
s
set clk 00
s
set reset 11
s
set reset 00
s



exit
