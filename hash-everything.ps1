Get-ChildItem C:\ -Recurse -File -Force -ea SilentlyContinue -ev errs |Get-FileHash -Algorithm SHA1
