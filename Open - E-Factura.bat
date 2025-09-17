@echo off
echo Launching daily tools...

start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" https://www.acesso.gov.pt/jsp/loginRedirectForm.jsp?path=painelAdquirente.action&partID=EFPF

exit
