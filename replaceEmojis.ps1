# Get all items
$F = Get-ChildItem -Path "F:" -Recurse

# Replace emojis with '' via RegEx
$F | Where-Object Name -CMatch '[\uD800-\uDFFF]' | Rename-Item -NewName { $_.name -creplace '[\uD800-\uDFFF]', '' }
