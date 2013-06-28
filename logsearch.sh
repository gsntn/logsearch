#How to use this shell
#logsearch.sh logFile smtpServer toEmail fromEmail
grep -i '^ERROR' $1

if [[ $? -eq 0 ]] ; then
	mailsend -f $4 -smtp $2  -t $3 -sub "Log file: $1 with error(s)" -attach "$1"
fi

