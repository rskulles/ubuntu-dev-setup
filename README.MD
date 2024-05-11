# The Royz Tech Boyz Development Environment Setup Script

### Purpose

To easily reproduce a development environment on Ubuntu

### How to get
This assumes you do not have git installed already. Use the 'Download Zip' option from the green <> Code button here in the repository.

Once downloaded, extract the zip and open a terminal inside the extracted directory.

### How to run

Make sure the script is executable

`sudo chmod +x ./install.sh`

Then execute the script 

`. ./install.sh`

it should ask you to input your password for sudo commands.

### What does it run

The script will:

* Update your system
* Install `git` `golang` `build-essential` `python3-pip` `python3-virtualenv` `python3-venv` `code` `curl` `wget` 
* Install and setup `nvm` (Node Version Manager)
* Install the latest Node.js lts release
* Create a 'Projects' directory in your home folder


There is a way to graduate from being a soy dev not outlined in this readme. You will have to figure it out by reading the install script.