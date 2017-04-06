#!/bin/bash

myfunc() {
	echo "$*"	
	echo "argv: $1 $2 $3"
	echo "argc: $#"
	echo $(cal)
	echo "$(cal)"
}

myfunc a b c