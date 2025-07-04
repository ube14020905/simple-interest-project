#!/bin/bash

# ---------------------------------------------
# Simple Interest Calculator - Enhanced Version
# Author: ubedulla Shaik
# ---------------------------------------------

# Function to validate positive numeric input
is_valid_number() {
  [[ "$1" =~ ^[0-9]+([.][0-9]+)?$ ]]
}

# Function to calculate simple interest
calculate_si() {
  echo -e "\n\033[1;36mSimple Interest Calculator\033[0m"
  echo "----------------------------------"

  # Prompt for Principal
  while true; do
    read -p "Enter Principal amount (₹): " principal
    if is_valid_number "$principal"; then break
    else echo -e "\033[0;31mInvalid input! Please enter a positive number.\033[0m"
    fi
  done

  # Prompt for Rate
  while true; do
    read -p "Enter Rate of Interest (%): " rate
    if is_valid_number "$rate"; then break
    else echo -e "\033[0;31mInvalid input! Please enter a positive number.\033[0m"
    fi
  done

  # Prompt for Time
  while true; do
    read -p "Enter Time (in years): " time
    if is_valid_number "$time"; then break
    else echo -e "\033[0;31mInvalid input! Please enter a positive number.\033[0m"
    fi
  done

  # Calculate Simple Interest
  si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

  # Display result
  echo -e "\n\033[1;32mSimple Interest = ₹$si\033[0m"
}

# -----------------------------
# Main Program Loop
# -----------------------------
while true; do
  calculate_si

  echo
  read -p "Would you like to calculate again? (y/n): " again
  case "$again" in
    [yY]) continue ;;
    [nN]) echo -e "\n\033[1;34mThank you for using the Simple Interest Calculator!\033[0m"; break ;;
    *) echo -e "\033[0;33mInvalid choice. Exiting.\033[0m"; break ;;
  esac
done
