#Auto cloud backup by MNA
#+228 99 00 07 62
/system scheduler
add interval=1d name="Auto Cloud Backup" on-event="/system backup cloud print;\r\
    \ndelay 3s;\r\
    \n:log info message=\"Backup : Phase 1 ---> print OK\";\r\
    \n/system backup cloud remove-file number=0;\r\
    \ndelay 2s;\r\
    \n:log info message=\"Backup : Phase 2 ---> remove OK\";\r\
    \n/system backup cloud upload-file action=create-and-upload password=123456;\r\
    \n:log info message=\"Backup : Phase 3 --->  OK\";\r\
    \n" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=nov/09/2021 start-time=01:00:00
