
#!/bin/bash                                                                     

echo 'This will act as your Client: '
echo 'Note: the connection will time out if idle for 10 seconds!'
read -p 'Pick a port you want to coonnect with: ' portPicked

echo 'Enter the message you would like to send: '
nc -w 10 localhost "${portPicked}" 

echo 'Done. . .'
