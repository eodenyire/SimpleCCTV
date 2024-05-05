# PowerShell script to transfer captured images to a remote Linux server using SCP

# Set the local path where captured images are stored
$LocalPath = "C:\Users\Emmanuel Odenyire\OneDrive\Pictures\Camera Roll"

# Set the remote server connection details
$RemoteServer = "10.34.6.19"
$Username = "eodenyire"
$Password = "eodenyire@1034619WebCam"
$RemotePath = "/eodenyire/home/webcam"

# Set the interval in seconds
$Interval = 60  # 1 minute

# Infinite loop to continuously transfer images
while ($true) {
    # Get the list of image files in the local directory
    $ImageFiles = Get-ChildItem -Path $LocalPath -Filter "*.jpg"
    
    # Iterate over each image file and transfer it to the remote server
    foreach ($ImageFile in $ImageFiles) {
        # Use WinSCP or another SCP client to transfer the image file to the remote server
        # Replace this command with the actual SCP command
        # For example: scp $ImageFile.FullName "$Username:$Password@$RemoteServer:$RemotePath/"
    }
    
    # Sleep for the specified interval before transferring the next batch of images
    Start-Sleep -Seconds $Interval
}
