| Notes: performs A-B
|	 AddIn high is for addition, low is for subtraction
|	 For single bit test (ie: here) the subtraction output is only truly correct when Cin high (Two's complement)
|	 For subtraction, output is in Two's complement

stepsize 50

w A B Cin AddIn AddOut Cout sum
vector in AddIn A B Cin 
set in 0000
s
path Cout
set in 0001
s
path Cout
set in 0010
s
path Cout
set in 0011
s
path Cout
set in 0100
s
path Cout
set in 0101
s
path Cout
set in 0110
s
path Cout
set in 0111
s
path Cout
set in 1000
s
path Cout
set in 1001
s
path Cout
set in 1010
s
path Cout
set in 1011
s
path Cout
set in 1100
s
path Cout
set in 1101
s
path Cout
set in 1110
s
path Cout
set in 1111
s
path Cout
|analyzer addUnitTwo_0/Cout addUnitThree_0/Sum addUnitTwo_0/A addUnitOne_0/B addUnitTwo_0/Cin addUnitOne_0/AddIn addUnitOne_0 AddOut

analyzer Cout Sum A B Cin AddIn AddOut
