# Allow running locally created scripts
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# First as admin, setup winrm for remote management.
winrm quickconfig

# Install Chocolatey DSC Module
Install-Module -Name cChoco -Force