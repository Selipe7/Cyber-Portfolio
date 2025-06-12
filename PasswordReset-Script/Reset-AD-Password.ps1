Import-Module ActiveDirectory

param(
    [string]$username,
    [string]$newPassword
)

try {
    Set-ADAccountPassword -Identity $username -NewPassword (ConvertTo-SecureString -AsPlainText $newPassword -Force) -Reset
    Set-ADUser -Identity $username -ChangePasswordAtLogon $true
    Write-Host "Password reset successfully for $username"
}
catch {
    Write-Error "Failed to reset password for $username. Error: $_"
}
