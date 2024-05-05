#!/bin/bash
# Bash script to send email notifications with captured images attached

# Set the recipient email address
Recipient="eodenyire@gmail.com"

# Set the path to the directory containing captured images
ImagePath="/home/emmanuel/Pictures/CameraRoll"

# Set the interval in seconds
Interval=60  # 1 minute

# Infinite loop to continuously send email notifications
while true; do
    # Get the list of image files in the directory
    ImageFiles=$(ls "$ImagePath"/*.jpg)
    
    # Check if there are new image files
    if [ -n "$ImageFiles" ]; then
        # Compose the email message
        Subject="New Images Captured"
        Body="New images have been captured from the home CCTV camera."
        Attachments="$ImageFiles"
        
        # Send the email notification with attachments
        echo "$Body" | mail -s "$Subject" -A "$Attachments" "$Recipient"
    fi
    
    # Sleep for the specified interval before checking for new images
    sleep $Interval
done
