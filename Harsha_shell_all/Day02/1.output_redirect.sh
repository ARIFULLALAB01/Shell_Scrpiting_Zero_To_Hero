Standard Input - 0
Standard Output - 1
Standard Error - 2

null file = >/dev/null

ls -al >/tmp/file1
bash 2.demo_std.sh 1>/tmp/file1
bash 2.demo_std.sh 2>/tmp/file1

bash 2.demo_std.sh 1>/dev/null
bash 2.demo_std.sh 2>/dev/null

#Redirect Standard Output and Standard Error to the same file. Existing data will be overwritten.
bash 2.demo_std.sh >/dev/null 2>&1

#Redirect Standard Output and Standard Error to the same file. Existing data will be appended.
bash 2.demo_std.sh >>/tmp/file1 2>&1

#Redirect Standard Output and Standard Error and print on the console, overwrite the file.
bash 2.demo_std.sh | tee /tmp/file1
bash 2.demo_std.sh 2>/dev/null | tee /tmp/file1
bash 2.demo_std.sh 1>/dev/null | tee /tmp/file1

#Redirect Standard Output and Standard Error and print on the console and append the file.
bash 2.demo_std.sh | tee -a /tmp/file1
bash 2.demo_std.sh 2>/dev/null | tee -a /tmp/file1

#Capturing IP & Port details from /var/log/auth.log
cat /var/log/auth.log | grep -i 'authenticating' | tee -a /tmp/log1
cat /tmp/log1 | cut -d ' ' -f13,15 >/tmp/ipdetails

cat /var/log/auth.log | grep -i 'authenticating' | cut -d ' ' -f13,15 >/tmp/ipdetails

bash Class-4/2.output_redirect_demo.sh 2>/tmp/hello1 | tee /tmp/hello2
