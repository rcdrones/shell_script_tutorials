#!/bin/bash
# Address Book
# 汉化：rcdrones

# 原作者：
# http://steve-parker.org/
# (c) Steve Parker

# 屏蔽ctrl+c，当收到terminate信号的时候，执行菜单主函数。时时刻刻能回到主菜单
trap 'do_menu' 2

. ./lib.sh

show_menu()
{
  # Called by do_menu
  
  echo -e "\n\n\n"
  
  echo "-- Address Book --"
  echo "1. List / Search"
  echo "2. Add"
  echo "3. Edit"
  echo "4. Remove"
  echo "q. Quit"
  echo -en "Enter your selection: "
}

do_menu()
{
  i=-1

  while [ "$i" != "q" ]; do
    show_menu
    read i
    
    # tr A-Z a-z 表示把A-Z的字母 翻译成 a-z， 大写转小写
    i=`echo $i | tr A-Z a-z`
    
    case "$i" in 
      "1")
	list_items
	;;
      "2")
	add_item
	;;
      "3")
	edit_item
	;;
      "4")
	remove_item
	;;
      "q")
	# Ought to confirm before quitting!
	echo "So long, and Thanks for all the Fish."
	exit 0
	;;
      *)
	echo "Unrecognised input."
	;;
    esac
  done
}

##########################################################
############ Main script starts here #####################
##########################################################

if [ ! -f $BOOK ]; then
  echo "Creating $BOOK ..."
  touch $BOOK
fi

if [ ! -r $BOOK ]; then
  echo "Error: $BOOK not readable"
  exit 1
fi

if [ ! -w $BOOK ]; then
  echo "Error: $BOOK not writeable"
  exit 2
fi

do_menu
