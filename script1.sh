#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name]
# Course: Open Source Software

STUDENT_NAME="Rishav Mandal"
SOFTWARE_CHOICE="Python"

# System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep -w "PRETTY_NAME" | cut -d '"' -f 2)
DATE_TIME=$(date)

# Display
echo "============================================="
echo " The Open Source Audit "
echo "============================================="
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "---------------------------------------------"
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Date   : $DATE_TIME"
echo "---------------------------------------------"
echo "License Note: This OS operates under open-source licenses like the GPL."
echo "My chosen software, $SOFTWARE_CHOICE, uses the permissive PSF License."
echo "============================================="
