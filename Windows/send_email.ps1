# PowerShell script to send email notifications with captured images attached

# Set the recipient email address
$Recipient = "eodenyire@gmail.com"

# Set the path to the directory containing captured images
$ImagePath = "C:\Users\Emmanuel Odenyire\OneDrive\Pictures\Camera Roll"

# Set the interval in seconds
$Interval = 60  # 1 minute

# Infinite loop to continuously send email notifications
while ($true) {
    # Get the list of image files in the directory
    $ImageFiles = Get-ChildItem -Path $ImagePath -Filter "*.jpg"
    
    # Check if there are new image files
    if ($ImageFiles.Count -gt 0) {
        # Compose the email message
        $Subject = "New Images Captured"
        $Body = "New images have been captured from the home CCTV camera."
        $Attachments = $ImageFiles.FullName
        
        # Send the email notification with attachments
        Send-MailMessage -From "Home CCTV Camera <sender@example.com>" -To $Recipient -Subject $Subject -Body $Body -Attachments $Attachments -SmtpServer "smtp.example.com"
    }
    
    # Sleep for the specified interval before checking for new images
    Start-Sleep -Seconds $Interval
}
