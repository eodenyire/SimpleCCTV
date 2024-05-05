#!/bin/bash
# Bash script to transfer captured images to a remote Linux server using SCP

# Set the local path where captured images are stored
LocalPath="/home/emmanuel/Pictures/CameraRoll"

# Set the remote server connection details
RemoteServer="10.34.6.19"
Username="eodenyire"
Password="eodenyire@1034619WebCam"
RemotePath="/eodenyire/home/webcam"

# Set the interval in seconds
Interval=60  # 1 minute

# Infinite loop to continuously transfer images
while true; do
    # Get the list of image files in the local directory
    ImageFiles=$(ls "$LocalPath"/*.jpg)
    
    # Iterate over each image file and transfer it to the remote server
    for ImageFile in $ImageFiles; do
        # Use SCP to transfer the image file to the remote server
        # Replace this command with the actual SCP command
        # For example: scp "$ImageFile" "$Username:$Password@$RemoteServer:$RemotePath/"
    done
    
    # Sleep for the specified interval before transferring the next batch of images
    sleep $Interval
done
