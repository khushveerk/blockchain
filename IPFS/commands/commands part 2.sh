Assignment 5: 
Perform encryption and privacy on IPFS through command line.  
IPFS privacy and encryption
1.	echo "Hello, IPFS!" > myfile.txt
2.	ipfs add myfile.txt
3.	openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -salt -in myfile.txt -out myfile_encrypted.txt -pass pass:yourpassword
4.	ipfs add myfile_encrypted.txt
5.	cat myfile_encrypted.txt
6.	openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -in myfile_encrypted.txt -out decrypted_file.txt -pass pass:yourpassword
7.	cat decrypted_file.txt
8.	ipfs add decrypted_file.txt
