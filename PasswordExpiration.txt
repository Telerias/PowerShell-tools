# Import the AD module so Get-ADUser works
import-module activedirectory

Get-ADUser -Filter * -Properties CanonicalName, GivenName, Surname, Department, EmailAddress, PasswordLastSet, LastLogonDate, Enabled, PasswordNeverExpires | select CanonicalName, GivenName, Surname, Department, EmailAddress, PasswordLastSet, LastLogonDate, Enabled, PasswordNeverExpires | export-csv "D:\Scripts\userpasswordinfo.csv"
