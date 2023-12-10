# source path of Windows background image
$sourceDirectory = "$env:APPDATA\Microsoft\Windows\Themes\CachedFiles"

# Get the count of files in the destination directory
$destinationDirectory = "$env:USERPROFILE\OneDrive\Pictures\bg-Landscape"
$fileCount = (Get-ChildItem -Path $destinationDirectory | Measure-Object).Count
Write-Host "$fileCount files in $destinationDirectory"

# Get the list of files in the directory
$fileList = Get-ChildItem -Path $sourceDirectory

if ($fileCount -gt 0) {
		# Source file path
    $sourceFileName = $fileList[0].Name
    Write-Host "Name of the first file in directory: $sourceFileName"
		$sourceFilePath = "$sourceDirectory\$sourceFileName"
		Write-Host "Full path of first file in directory: $sourceFilePath"

		# Destination file path 
		$destinationPath = "$destinationDirectory\1920x1080-${fileCount}.jpg"
		Write-Host "Destination file path: $destinationPath"
} else {
    Write-Host "No files found in the directory."
}

# Copy the file
try {
    Copy-Item -Path $sourceFilePath -Destination $destinationPath -Force
    Write-Host "${sourceFileName} copied successfully to ${destinationPath}!"
}
catch {
    Write-Host "An error occurred: $_.Exception.Message"
}
