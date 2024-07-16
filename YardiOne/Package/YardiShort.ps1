

$ScriptFromGitHub = Invoke-WebRequest https://raw.githubusercontent.com/ChrisFDSTech/DTH/main/YardiOne/DesktopIcon_YardiOne -UseBasicParsing

if ($ScriptFromGitHub.StatusCode -eq 200) {
    # Successfully retrieved script content
    $ScriptContent = $ScriptFromGitHub.Content
    Invoke-Expression $ScriptContent
 } else {
    Write-Host "Failed to download the script. Status code: $($ScriptFromGitHub.StatusCode)"
}
