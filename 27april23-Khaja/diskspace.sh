#!/bin/bash
tempfile="/tmp/available.$$"
trap "rm -f $tempfile" EXIT

cat << 'EOF' > $tempfile    
    { sum += $4 }
END { mb = sun/1024
      gb = mb/1024
      printf "%.of MB (%.2fGB) of available diskspace\n", mb, gb
    }
EOF

df -k | awk -f $tempfile
exit 0