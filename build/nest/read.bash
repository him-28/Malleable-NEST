#!/bin/bash

# Create dummy input
for i in $(seq 1 40) ; do echo $i >> input-file.txt ; done

# Create new file handle 5
exec 5< input-file.txt

# Now you can use "<&5" to read from this file
while read line1 <&5 ; do
        read line2 <&5
        read line3 <&5
        read line4 <&5

        echo "Four lines: $line1 $line2 $line3 $line4"
done

# Close file handle 5
exec 5<&-
