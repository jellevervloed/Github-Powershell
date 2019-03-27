$From = "jellevervloed@hotmail.nl"
$To = "jellevervloed@hotmail.nl"
$Cc = "jellevervloed@hotmail.nl"
$Attachment = "D:\Opdracht7.docx"
$Subject = "een mooi mailtje van powershell"
$Body = "een hele goede middag"
$SMTPServer = "smtp.office365.com"
$SMTPPort = "587"
Send-MailMessage -From $From -to $To -Cc $Cc -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential (Get-Credential) -Attachments $Attachment -DeliveryNotificationOption OnSuccess