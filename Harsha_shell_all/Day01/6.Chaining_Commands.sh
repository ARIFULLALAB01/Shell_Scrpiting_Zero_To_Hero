## Chaining Commands

# If the first command is successful, then the second command will run.
ls -al && free -h

# If the first command fails, then the second command will run.
ls -al || free -h

# Run the command in the background even the connection is lost.
ping -c 30 www.google.com &

# Run first command in the background and second command in the foreground.
ping -c 30 www.google.com &
free -h

# Pipe the output of the first command to the second command.
cat /var/log/auth.log | grep -i 'Accepted publickey'

grep = Regular Expression and Print >Grab

export AWS_ACCESS_KEY_ID=AKIAI4KJ4J4J4J4J4J4
export AWS_SECRET_ACCESS_KEY=ASDSADASDASDDASDS
export AWS_DEFAULT_REGION=us-east-1
