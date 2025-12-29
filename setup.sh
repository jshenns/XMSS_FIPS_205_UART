#!/bin/bash

# Stop script on first error
set -e

# Create virtual environment
python3 -m venv venv

# Activate the environment
# (this only affects the script, not your shell after it finishes)
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install desired packages (add or remove as needed)
pip install requests numpy

echo "✅ Virtual environment created and activated."
echo "To activate it manually later, run: source venv/bin/activate"
