#!/bin/bash
# Script: linux_info.sh
# Purpose: Display basic Linux system information

echo "=============================="
echo "     Linux System Info"
echo "=============================="

# Current Date and Time
echo -e "\n🕒 Current Date and Time:"
date

# Uptime
echo -e "\n⏱ System Uptime:"
uptime

# Logged in Users
echo -e "\n👥 Logged in Users:"
who

# Memory Usage
echo -e "\n💾 Memory Usage:"
free -h

# Disk Usage
echo -e "\n🗄 Disk Usage:"
df -h

# CPU Info
echo -e "\n🖥 CPU Info:"
lscpu | grep -E "Model name|Architecture|CPU\(s\)|Thread|MHz"

# Kernel Version
echo -e "\n🔧 Kernel Version:"
uname -r

# OS Release Info
echo -e "\n📝 OS Release Info:"
cat /etc/os-release

# Top 5 processes by memory usage
echo -e "\n📊 Top 5 Memory Consuming Processes:"
ps aux --sort=-%mem | head -n 6

# Network Info
echo -e "\n🌐 Network Info:"
ip addr show

echo -e "\n=============================="
echo "          End of Report"
echo "=============================="
