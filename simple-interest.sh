
---

## ✅ `simple-interest.sh`
```bash
#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "--------------------------"

# Prompt user for input
read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest: " rate
read -p "Enter Time (in years): " time

# Validate numeric input
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ && "$rate" =~ ^[0-9]+([.][0-9]+)?$ && "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Invalid input. Please enter numeric values only."
  exit 1
fi

# Calculate Simple Interest
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "Simple Interest = ₹$si"
