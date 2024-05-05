# CCTV Camera Project (Ubuntu Version)

## Overview
This project sets up a CCTV (Closed Circuit Television) camera system using a Ubuntu machine. It continuously captures images from the camera at regular intervals, transfers the images to a remote Linux server, and sends email notifications with the captured images attached.

## Requirements
- Ubuntu machine with camera capabilities
- Secure Shell (SSH) access to a remote Linux server
- Mail Transfer Agent (MTA) configured on the Ubuntu machine for sending emails

## Setup

### 1. Capture Images
- Use the `capture_images.sh` script to continuously capture images from the camera at regular intervals (default: every 5 minutes).
- Adjust the script to set the desired image capture interval and the path to save captured images.

### 2. Transfer Images to Remote Server
- Use the `transfer_images.sh` script to transfer captured images to a remote Linux server using SCP (Secure Copy Protocol).
- Configure the script with the remote server connection details, including the IP address, username, password, and remote directory path.

### 3. Send Email Notifications
- Use the `send_email.sh` script to send email notifications with captured images attached.
- Configure the recipient email address and the path to the directory containing captured images.
- Ensure that a Mail Transfer Agent (MTA) is configured on the Ubuntu machine to send emails.

## Usage
1. Make the scripts executable:
   ```bash
   chmod +x capture_images.sh transfer_images.sh send_email.sh
2. Run each script in separate terminal windows or as background processes.
3. Monitor the camera system by checking the remote server for transferred images and email notifications.

Notes
Customize the scripts and paths according to your specific setup and requirements.
Ensure proper security measures are in place, especially when transferring images over the network or sending emails.

Author
Emmanuel Odenyire Anyira - ALX Software Engineering Student
For any questions or issues, please contact Emmanuel Odenyire Anyira at eodenyire@gmail.com.
