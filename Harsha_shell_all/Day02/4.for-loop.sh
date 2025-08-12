#!/bin/bash
ITEMS1=$@
#echo $ITEMS
for ITEM in $ITEMS1; do
    #echo $ITEM
    command -v $ITEM >>/dev/null
    if [ $? -eq 0 ]; then
        echo "$ITEM Is Already Installed"
    else
        echo "$ITEM is not installed"
    fi
done
echo ""
echo ""

for ITEM in $*; do
    #echo $ITEM
    command -v $ITEM >>/dev/null
    if [ $? -eq 0 ]; then
        echo "$ITEM Is Already Installed"
    else
        echo "$ITEM is not installed"
    fi
done

echo ""
echo ""
echo 'Testing "$*" with quotes...'
#Enclosing the variable $* with double quotes means all arguments will be treated as a single string jointly.
for ITEM in "$*"; do
    #echo $ITEM
    command -v $ITEM >>/dev/null
    if [ $? -eq 0 ]; then
        echo "$ITEM Is Already Installed"
    else
        echo "$ITEM is not installed"
    fi
done
