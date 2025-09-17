@echo off
title Repo Launcher

:menu
cls
echo ============================
echo   Choose a repository
echo ============================
echo 1. UBL
echo 2. CII
echo 3. SCI
echo 4. PEPPOL UBL (reg)
echo 5. PEPPOL SCI
echo 6. SCI lib
echo 7. Facturx
echo 8. CDAR
echo 9. FR extension
echo 10. PEPPOL extension
echo x. Exit
echo.
set /p choice=Enter number: 

if "%choice%"=="x" exit

:asktype
echo.
echo Do you want to open:
echo 1. Repository
echo 2. Pull Request
set /p type=Enter number: 
echo.

REM Define URLs for each repo
if "%choice%"=="1" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-ubl/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-ubl/pullrequestcreate?sourceRef=&targetRef=main&sourceRepositoryId=b159b9e1-e2b3-4311-be8d-2128bf3c6db2&targetRepositoryId=b159b9e1-e2b3-4311-be8d-2128bf3c6db2
)

if "%choice%"=="2" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-cii/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-cii/pullrequestcreate?sourceRef=&targetRef=main&sourceRepositoryId=b4251889-518e-4288-abdf-73a6f9497319&targetRepositoryId=b4251889-518e-4288-abdf-73a6f9497319
)

if "%choice%"=="3" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-sci/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-sci/pullrequestcreate?sourceRef=feature/MRW-600-sci-additional-mappers-adjustments-and-corrections&targetRef=main&sourceRepositoryId=e94c15c5-58e4-4913-8aa9-3eca43978a2d&targetRepositoryId=e94c15c5-58e4-4913-8aa9-3eca43978a2d
)

if "%choice%"=="4" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-regulated-peppol/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-regulated-peppol/pullrequestcreate?sourceRef=feature/NETS-874&targetRef=main&sourceRepositoryId=3379f6f0-918a-4605-81e8-1e62e19ddc85&targetRepositoryId=3379f6f0-918a-4605-81e8-1e62e19ddc85
)

if "%choice%"=="5" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-sci-peppol/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-sci-peppol/pullrequestcreate?sourceRef=main&targetRef=main&sourceRepositoryId=c80a4e94-43ce-4eaa-bd3d-8aaf7d3f726b&targetRepositoryId=c80a4e94-43ce-4eaa-bd3d-8aaf7d3f726b
)

if "%choice%"=="6" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network Libraries/_git/cn-library-mapper-fr-cii-plugin/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network Libraries/_git/cn-library-mapper-fr-cii-plugin/pullrequestcreate?sourceRef=main&targetRef=main&sourceRepositoryId=a19fd4c8-a95d-40fa-a0d1-2d99be23dcd7&targetRepositoryId=a19fd4c8-a95d-40fa-a0d1-2d99be23dcd7
)

if "%choice%"=="7" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-facturx/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-facturx/pullrequestcreate?sourceRef=main&targetRef=main&sourceRepositoryId=7b19a5cf-e108-4d6c-a6db-76b256a5d9b6&targetRepositoryId=7b19a5cf-e108-4d6c-a6db-76b256a5d9b6
)

if "%choice%"=="8" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-regulated-arm/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-service-documents-mapper-fr-regulated-arm/pullrequestcreate?sourceRef=main&targetRef=main&sourceRepositoryId=f8bd3804-6446-4e17-8886-932a9e731e1c&targetRepositoryId=f8bd3804-6446-4e17-8886-932a9e731e1c
)

if "%choice%"=="9" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-extension-networks-fr/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-extension-networks-fr/pullrequestcreate?sourceRef=main&targetRef=main&sourceRepositoryId=a81bb8c5-8ed9-40ef-ae55-42cd71454507&targetRepositoryId=a81bb8c5-8ed9-40ef-ae55-42cd71454507
)

if "%choice%"=="10" (
    set repoURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-extension-networks-peppol/branches
    set prURL=https://dev.azure.com/SovosGvatEMEA/Sovos - Compliance Network/_git/cn-extension-networks-peppol/pullrequestcreate?sourceRef=main&targetRef=main&sourceRepositoryId=51b1c8ae-fca7-4f7a-844d-3b7e2bdee12c&targetRepositoryId=51b1c8ae-fca7-4f7a-844d-3b7e2bdee12c
)

REM Open based on type
if "%type%"=="1" start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 1" "%repoURL%"
if "%type%"=="2" start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 1" "%prURL%"

goto menu
