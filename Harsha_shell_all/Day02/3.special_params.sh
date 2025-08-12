#$? - Exit code of last command
#$@ & $* - All arguments passed to the script with spaces as separators.
#"$*" - All arguments passed to the script as a single string.
#$# - Number of arguments passed to the script.
#$$ - Process ID of the current shell.
#!/bin/bash
command -v terraform
if [ $? -eq 0 ]; then
    echo "Terraform Is Already Installed"
else
    echo "Terraform is not installed"
fi

command -v $1 >>/dev/null
if [ $? -eq 0 ]; then
    echo "$1 Is Already Installed"
else
    echo "$1 is not installed"
fi
