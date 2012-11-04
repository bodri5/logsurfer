# The syslog timestamp and hostname at the beginning.
# [a-zA-Z0-9]+ can be replaced with the actual hostname.
s/$LS_TSTAMP/[a-zA-Z]{3} [ 12][0-9] [0-9]{2}:[0-9]{2}:[0-9]{2} [a-zA-Z0-9]+/

# ipv4 address
s/$LS_IP4ADDR/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/g