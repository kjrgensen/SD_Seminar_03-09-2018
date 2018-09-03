Set-ExecutionPolicy RemoteSigned
Import-Module 'C:\Program Files\Microsoft Dynamics NAV\110\Service\NavAdmintool.ps1'
Sync-NAVApp -ServerInstance DynamicsNAV110 -Path '.\SuperUser Demo_SD Seminar_1.0.0.0.app'