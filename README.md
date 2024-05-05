# Home CCTV Camera Project

## Overview
This project aims to set up a simple CCTV camera system using a Windows 10 machine equipped with a camera. The system captures images at regular intervals, transfers them to a remote Linux server, and sends email notifications with the captured images attached.

## Author
This project was created by Emmanuel Odenyire Anyira, a student at ALX Software Engineering Program.

## Installation and Configuration
### Set up the Windows Machine
1. Install and configure camera software to capture images and save them to `C:\Users\Emmanuel Odenyire\OneDrive\Pictures\Camera Roll`.
2. Install WinSCP for secure file transfer.

### Set up the Remote Linux Server
Ensure that the remote Linux server is accessible and configured to receive files via SCP.

## Scripts
### 1. Capture Images
- **Script Name:** `capture_images.ps1`
- **Description:** PowerShell script to capture images from the camera at regular intervals.
- **Interval:** Captures an image every 5 minutes.
- **Storage:** Saves captured images to `C:\Users\Emmanuel Odenyire\OneDrive\Pictures\Camera Roll`.

### 2. Transfer Images to Remote Server
- **Script Name:** `transfer_images.ps1`
- **Description:** PowerShell script to transfer captured images to a remote Linux server using SCP.
- **Interval:** Transfers images to the remote server every 1 minute after capture.
- **Destination:** Images are stored in `/eodenyire/home/webcam` directory on the remote server.

### 3. Send Email Notifications
- **Script Name:** `send_email.ps1`
- **Description:** PowerShell script to send email notifications with captured images attached.
- **Recipient:** Sends notifications to `eodenyire@gmail.com`.
- **Content:** Notifies about the captured images and their successful transfer to the remote server.

## Usage
1. Run the `capture_images.ps1` script on the Windows machine to start capturing images.
2. Run the `transfer_images.ps1` script to transfer captured images to the remote server.
3. Run the `send_email.ps1` script to send email notifications with captured images attached.

## Dependencies
- PowerShell
- WinSCP

## Support
For any inquiries or issues, please contact Emmanuel Odenyire Anyira via email at eodenyire@gmail.com.
