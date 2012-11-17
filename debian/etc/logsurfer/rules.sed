# The syslog timestamp and hostname at the beginning.
# [a-zA-Z0-9]+ can be replaced with the actual hostname.
s/\$LS_TSTAMP/[a-zA-Z_.\/]*: [a-zA-Z]{3} [ 12][0-9] [0-9]{2}:[0-9]{2}:[0-9]{2} $LS_HOSTNAME/

# Timestamp plus daemon name and pid (name is given as a parameter between parentheses)
s/\$LS_DAEMON\(([^)]+)\)/[a-zA-Z_.\/]*: [a-zA-Z]{3} [ 12][0-9] [0-9]{2}:[0-9]{2}:[0-9]{2} $LS_HOSTNAME \1\\[([1-9][0-9]+)\\]/


# Timestamp plus daemon name and pid (name is given as a parameter between parentheses).
# The first argument is a time of day regular expression. No space is allowed around the comma.
s/\$LS_DAEMON_T\(([^,]+),([^)]+)\)/[a-zA-Z_.\/]*: [a-zA-Z]{3} [ 12][0-9] \1 $LS_HOSTNAME \2\\[([1-9][0-9]+)\\]/


# ipv4 address
s/\$LS_IP4ADDR/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/g

# hostname(s) where log records come from
s/\$LS_HOSTNAME/[a-zA-Z0-9]+/g
