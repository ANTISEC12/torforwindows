@echo off
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
color 0A 
echo  + + + + + + + + + + + + + +
echo "    _   _    _______  _       __________________ _______  _______  _______      "
echo "   ( ) ( )  (  ___  )( (    /|\__   __/\__   __/(  ____ \(  ____ \(  ____ \     "
echo "  _| |_| |_ | (   ) ||  \  ( |   ) (      ) (   | (    \/| (    \/| (    \/     "
echo " (_   _   _)| (___) ||   \ | |   | |      | |   | (_____ | (__    | |           "
echo "  _| (_) |_ |  ___  || (\ \) |   | |      | |   (_____  )|  __)   | |           "
echo " (_   _   _)| (   ) || | \   |   | |      | |         ) || (      | |           "
echo "   | | | |  | )   ( || )  \  |   | |   ___) (___/\____) || (____/\| (____/\     "
echo "   (_) (_)  |/     \||/    )_)   )_(   \_______/\_______)(_______/(_______/     "
echo "    Please read the README.md file first, to see how it works!!!                "
echo "	* the latest release only at: https://gitlab.com/antisec/torforwindows   "
echo "	* gitlab.com/antisec  | github.com/antisec12 | telegram.org/A_SECURITY   "
echo "	* https://soroushsharing.gitlab.io/"
echo  + + + + + + + + + + + + + +
pause
echo " +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+   +-+ +-+ +-+ +-+ +-+ +-+ +-+"
echo " |S| |t| |a| |r| |t| |i| |n| |g|   |P| |r| |i| |v| |o| |x| |y|" 
echo " +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+   +-+ +-+ +-+ +-+ +-+ +-+ +-+"
start /wait "demo" CMD /c privoxy.cmd &
echo done.
echo  + + + + + + + + + + + + + +
pause
echo "  _____ ___  ____                                                               "
echo " |_   _/ _ \|  _ \                                                              "
echo "   | || | | | |_) |                                                             "
echo "   | || |_| |  _ <                                                              "
echo "   |_| \___/|_| \_\                                                             "
echo "  ____  ____  ___ __     ___    ______   __   ___  _   _ _     ___ _   _ _____  "
echo " |  _ \|  _ \|_ _|\ \   / / \  / ___\ \ / /  / _ \| \ | | |   |_ _| \ | | ____| "
echo " | |_) | |_) || |  \ \ / / _ \| |    \ V /  | | | |  \| | |    | ||  \| |  _|   "
echo " |  __/|  _ < | |   \ V / ___ | |___  | |   | |_| | |\  | |___ | || |\  | |___  "
echo " |_|   |_| \_|___|   \_/_/   \_\____| |_|    \___/|_| \_|_____|___|_| \_|_____| "
echo "                                                                                "
echo + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
cd Tor
if "%~1" neq "_start_" (
  
  tor -f torrc
   else  taskkill /f /t /im privoxy.exe /im obfs4proxy.exe /im tor.exe
  )

 
