#!/bin/bash

# Day 8: File Handling and Permissions

echo "what you want - "
echo "1) Create A File"
echo "2) Read A File"
echo "3) Write A File"
echo "4) Delete a File"
echo "5) Change file permissions"
echo "6) Exit"
read option

createFile() {
  read -p "Enter file name - " fileName
  if [ -f $fileName ]; then
    echo "file exists"
  else
    touch "$fileName"
    echo "new file created"
  fi
}

readFile() {
  read -p "Enter file name you want to read - " fileName
  if [ -f $filename ]; then
    cat $fileName
  else
    echo "no file found"
  fi
}

writeFile() {
  read -p "Enter file name you want to edit - " file
  if [ -f $file ]; then
    read -p "enter the content to write - " content
    echo $content >>$file
    echo "content written to $file"
  else
    echo "file not found"
  fi
}

deleteFile() {
  read -p "enter name of file you want to delete - " file
  if [ -f $file ]; then
    rm $file
    echo "file deleted"
  else
    echo "file not found"
  fi
}

changePermissions() {
  read -p "enter file name you want to changePermissions - " file
  if [ -f $file ]; then
    read -p "enter permisssions code - " permission
    oldPermissions=$(stat -c "%a" "$file")
    echo "Old Permissions of $file: $oldPermissions"

    chmod $permission $file
    newPermissions=$(stat -c "%a" "$file")
    echo "New Permissions of $file : $newPermissions"
  else
    echo "file not found"
  fi
}

case $option in
1) createFile ;;
2) readFile ;;
3) writeFile ;;
4) deleteFile ;;
5) changePermissions ;;
6)
  echo "Exiting..."
  break
  ;;
*) echo "Invalid option!" ;;
esac
