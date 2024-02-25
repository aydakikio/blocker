# First look 
blocker is a useful tool for blocking certain websites on linux operating system. I allows you to block certain websites for all ips in `ifconfig`.
And helps you to block distractions.

# How to setup
This script based on bash shell. You can check if you are using bash or not with this commend:
> $ which bash

if output of commend is: `/usr/bin/bash` that means you are using bash. For adding a website for blocking , add `"your website"` to `websites` array in script. It will generate a block state for each ip and website in `websites` array.

