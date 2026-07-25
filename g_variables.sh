#!/bin/bash
total=100   #global variable

showTotal() {
  local total=50 #local variable
  echo "Total inside function: $total"
}

echo "Total outside function: $total"
showTotal