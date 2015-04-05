stepsize 50
settle 10
w RST CLK CLKLD REGOUT REGIN
| first will set to zero, do a CLK cycle to check not loading, then load
print START
l REGIN
l CLK
l CLKLD
l RST
s
path REGOUT
h CLK
s
path REGOUT
l CLK
s
path REGOUT
h CLKLD
h CLK
s
path REGOUT
l CLK
l CLKLD
s
path REGOUT
h CLK
s
path REGOUT
l CLK
s
path REGOUT
h CLKLD
h CLK
h REGIN
s
path REGOUT
l CLK
l CLKLD
s
path REGOUT
l REGIN
h CLK
s
path REGOUT
l CLK
s
path REGOUT
|test reset, keep input steady and keep clocking in a 1 input
print RESETTEST
h CLK
h CLKLD
h REGIN
s
l CLK
l CLKLD
s
path REGOUT
h RST
s
path REGOUT
h CLK
h CLKLD
s
path REGOUT
l CLK
l CLKLD
s
path REGOUT
h CLK
h CLKLD
s
path REGOUT
l CLK
l CLKLD
s
path REGOUT
l RST
h CLK
h CLKLD
s
path REGOUT
l CLK
l CLKLD
s
path REGOUT
