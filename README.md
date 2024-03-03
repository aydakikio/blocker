# First look 
blocker is a useful tool for blocking certain websites on linux operating system. It allows you to block certain websites for all ips in `ifconfig`.

# Requirements
This script is based on bash shell. You can check if you are using bash or not with this commend:
> $ which bash

if output of commend is: `/usr/bin/bash` that means you are using bash and you can run this script.


# How to setup
For adding a website for blocking , add `"www.website address"` to `websites` array in script. It will generate a block state for each ip and website in `websites` array. Each block state will add to `/etc/hosts/` file later. 

For editing the script run this commend on terminal:

> $ nano blocker.sh

You can fill `nano` with your favourite text editor.

then you can add  websites to `websites` array in script.

> [!WARNING]
>  please don't insert websites with `https://` or `http://` prefixes. This method will not working with these prefixes.


> [!TIP]
> If your website address does not `www` prexfix  please add your website as `"www.website address   website address"` to websites array in script.

For making the script excecutable you must go to the directory that `blocker.sh` exist and  run this commend: 

> $chmod +x ./blocker.sh

For starting blocking run this commend in terminal:

> $./blocker.sh web_block

This will add your blocked websites to `/etc/hosts`. For unblocking websites run this commend in terminal:

> $./blocker.sh web_unlock

> [!WARNING]
> The `web_unlock` commend will only remove the blocked from end of file.If this commend not removing blocked states you must go to `/etc/hosts` file and remove them manually.

