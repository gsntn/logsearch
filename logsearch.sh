#cat /home/ubuntu/Development/logsearch/log.txt | grep -i '^ERROR'

#grep -i '^ERROR' /home/ubuntu/Development/logsearch/log.txt
grep -i '^ERROR' $1

if [[ $? -eq 0 ]] ; then
	touch thereIsAnError.txt
fi

