stepsize 50
settle 10
w RST CLK REGOUT REGIN
| first will set to zero, do a CLK cycle to check not loading, then load
print START
l REGIN
l CLK
l RST
s
path REGOUT
h CLK
s
l CLK
s
path REGOUT
print REGIN-TOGGLE
h REGIN
s
l REGIN
s
path REGOUT
print RESET-2CYCLE
h REGIN
h CLK
s
l CLK
s
path REGOUT
h RST
s
path REGOUT
h CLK
s
l CLK
s
path REGOUT
h CLK
s
l CLK
s
path REGOUT
| RST off then go from 1 to zero
print RST-OFF-LAST
l RST
h CLK
s
l CLK
s
path REGOUT
l REGIN
h CLK
s
l CLK
s
path REGOUT

