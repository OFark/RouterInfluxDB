#/bin/sh

dbname="router"
dbhost="192.168.1.51:8086"
user="root"
passwd="root"

function join { local IFS="$1"; shift; echo "$*"; }

if [ $# -lt 3 ]; then
    echo "Usage: $0 \"series name\" \"columns\" \"points\""
    exit
fi

i=1
payload=''

for c in $2
do
	value=$( echo $3 | cut -d' ' -f$i )
	payload="$payload $1"
	if [ ! -z "$4" -a "$4" != " " ]
	then
		payload="$payload,$4"
	fi	
	payload="$payload $c=$value"$'\n'
	i=$((i+1))
done

curl -i -XPOST "http://$dbhost/write?db=$dbname" --data-binary "$payload"
