
#!/bin/bash
A=-1
# everything between $( and ) in the next
# line is a subshell. The increment is lost.
echo $( ((A++)); echo $A )
echo $A



<< note

*   let or (( )) is used for increment or decrement
*   A subshell is basically a new shell just to run a desired program. A subshell can access the global variables set by the 'parent shell' but not the local variables. Any changes made by a    subshell to a global variable is not passed to the parent shell.
note
