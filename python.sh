#!/usr/bin/env bash

brew install python2

# This formula installs a python2 executable to /usr/local/bin.
# If you wish to have this formula's python executable in your PATH then add
# the following to ~/.zshrc:
#   export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Pip and setuptools have been installed. To update them
#   pip2 install --upgrade pip setuptools

# You can install Python packages with
#   pip2 install <package>

pip2 install pyyaml
