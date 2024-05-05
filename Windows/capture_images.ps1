# PowerShell script to capture images from the camera at regular intervals

# Set the path to save captured images
$ImagePath = "C:\Users\Emmanuel Odenyire\OneDrive\Pictures\Camera Roll"

# Set the interval in seconds
$Interval = 300  # 5 minutes

# Infinite loop to continuously capture images
while ($true) {
    # Get the current timestamp for the image filename
    $Timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    
    # Capture an image using the camera software and save it to the specified path
    # Replace this command with the actual command to capture an image
    # For example: camera_capture_command -output "$ImagePath\$Timestamp.jpg"
    
    # Sleep for the specified interval before capturing the next image
    Start-Sleep -Seconds $Interval
}
