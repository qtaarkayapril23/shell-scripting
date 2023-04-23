#!/bin/bash

ls -ltr #It is failure, so it will not excute further

if 
  [ $? -ne 0 ]; then
      echo "Previous command is failure"
      exit 1
fi

ls -ltr

if 
  [ $? -ne 0 ]; then
      echo "Previous command is failure"
      exit 1
fi

echo "Program is Success"