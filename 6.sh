#!/bin/bash

{
	echo "A first message to stderr" >&2
	echo "Grepping for fish" | grep -w fish
	echo "Hello to stdout"
	echo "Again to to stderr" >&2
} > /tmp/file-stdout 2> /tmp/file-stderr

# print content
echo "Everything in /tmp/file-stdout:"
echo -----------
cat /tmp/file-stdout
echo -----------
echo
echo "Everything in /tmp/file-stderr:"
echo -----------
cat /tmp/file-stderr
echo -----------

# cleanup
rm /tmp/file-stdout /tmp/file-stderr

<< note
syntax comment
> file Overwrite file with stdout
>> file append stdout to file
2> file Overwrite file with stderr
2>> file append stderr to file
&> file Overwrite file with stdout and stderr combined
&>> file append stdout and stderr to file
note
