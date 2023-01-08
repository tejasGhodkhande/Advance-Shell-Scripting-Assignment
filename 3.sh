#!/bin/bash
VAR="15"

echo "data data data" | awk -v "var=$VAR" '
	var !~ /^[0-9]$/ && $2 == "data" { 
		print "Both are true" 
	}
'

<< IMP

()	change precedence
~	complement
!	negation
*/ %	multiply, divide, modulo
+ -	add, subtract
<< > >	left shift, right shift
<= >= < >	relational operators
== != =~ !~	string comparison/pattern matching
&	bitwise AND
^	bitwise exclusive OR
|	bitwise inclusive OR
&&	logical AND
||	logical OR

IMP
