#!/bin/bash
tempfile="/tmp/available.$$"
trap "rm -f $tempfile" EXIT

cat << 'EOF' > $tempfile    
    { sum += $4 }
END {
    mb = sun/1024
    gb = mb/1024
    printf "%.of MB (%GB) of available diskspace\n", gb
}
EOF

df -k | awk -f $tempfile
exit 0
