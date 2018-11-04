
<h4>This is a manual page of torforwindows!</h4>

# Introduction
<h2>This project allows you to easily use the [TOR](https://www.torproject.org/index.html.en) software (+[Bridges](https://www.torproject.org/docs/bridges.html.en)) on your WindowsOS!</h2><br />

The project includes;
- Start.cmd (A batch file to autorun the "Tor.exe,Privoxy.exe")
- Privoxy directory that includes Privoxy program and its configuration
- Tor directory that containing the TOR software and its libraries and a torrc (tor configuration) file 
- Data directory that containing IP(v4-v6) Geolocation configuration files <br />
And a (Tor + Bridges) directory that includes;
  - Start.cmd (A batch file to autorun the "Tor.exe,Privoxy.exe")
  - Privoxy directory that includes Privoxy program and its configuration
  - Tor directory that containing the TOR software and its libraries and a torrc (Tor configuration) file + obfs4 (Binary obfs4proxy) 
  - Data directory that containing IP(v4-v6) Geolocation configuration files. 
   
# Start
To start TOR, just run the start.cmd (batch file) <br />
When the tor is starting, look for the bootstrapped and make sure the bootstrapped is = 100%.<br />
<div align="center"><a href="Tor"><img src="http://s8.picofile.com/file/8341550468/Screenshot_from_2018_11_02_08_50_04.png"></a></div> <br />
 
 `! Never close the cmd (start.cmd). If the cmd is closed, the tor closes.` <br />
If the bootstrapped does not = 100%, it means you can not connect to the Tor network!<br />
 `! At the first, check your Internet connection. If your internet connection is good? try to perss CTRL + C and run the start.cmd again to see bootstrapped = 100%.`  <br />
If the bootstrapped does not = 100% again, it means you can not connect to the Tor network without bridges. <br />
So read the [Solution](https://gitlab.com/antisec/torforwindows#solution).
# Solution
First, Press "CTRL + C" to close start.cmd (Stop Tor.exe and Privoxy.exe)! <br />
Now You should goto (Tor + bridges) directory, and run start.cmd there! To start tor with bridges, <br />
And look for the bootstrapped again to make sure the bootstrapped is = 100%.<br />
 Why Bridge? Maybe, your Internet Service Provider, block the Tor network. Bridges are unknown Tor servers, that help you to connect to the Tor network.<br />
 `! Although you can close the cmd and run the start.cmd again to see bootstrapped = 100%.`<br />
 `! If the bootstrapped does not = 100%, you should get` [Configure your torrc](https://gitlab.com/antisec/torforwindows#configure-your-torrc).<br />
If you have not been able to connect to the Tor network until now, you should try to use `new bridges` and configur your torrc.
# Configure Your Torrc 
For configur your torrc and set a new Bridge, goto `tor+bridges directory`, next goto Tor directory and open torrc with WordPad or your favorite editor.<br />
Now... you should get some new Bridges. Follow the next step, [Get Bridges](https://gitlab.com/antisec/torforwindows#get-bridges).<br />
Take the bridges and add them to the file, as shown below:
<div align="center"><a href="torrc"><img src="http://s9.picofile.com/file/8341662876/torbridges.png"></a></div> <br />

Save and close torrc. Next, goto `tor+bridges directory` and run start.cmd there.
# Get Bridges
There are two ways to get the new bridges;
 - The first way you can get bridges is by emailing [bridges@torproject.org](mailto:bridges@torproject.org).<br />
   Please be careful that you should email your email from one of the following email providers:
	- [Riseup](https://riseup.net/) 
	- [Gmail](https://mail.google.com/) 
	- [Yahoo](https://mail.yahoo.com/)
 - Secend way is visit [https://bridges.torproject.org/](https://bridges.torproject.org/options) to get some bridge.
# Use Tor Proxy 
If tor runnig correctly, you can use local network proxy on your Applications or other devices in your local network. <br />
To use this proxy on your Browser such as Firefox or Chrome, most use the SwitchyOmega.<br />
 - [SwitchyOmega](https://chrome.google.com/webstore/detail/proxy-switchyomega/padekgcemlokbadohgkifijomclgjgif) for Chrome/Chromium Browser
 - [SwitchyOmega](https://addons.mozilla.org/en-US/firefox/addon/switchyomega/) for Firefox Browser<br />
Set local proxy addresses:<br />
	- IP: `127.0.0.1` with Port: `9050`	# Socks5 proxy. This is not http or https proxy!
	- IP: `127.0.0.1` with Port: `8118`	# http/https proxy. This port is powered by [Privoxy](https://gitlab.com/antisec/torforwindows#privoxy). Privoxy forwards Socks5t on 8118!
<div align="center"><a href="switchyomega"><img src="http://s9.picofile.com/file/8341668726/omega.png"></a></div> <br />

# System Wide P	roxy
To apply System-Wide Proxy with Tor, you should to start Tor + Privoxy!!!<br /> 
If you run start.cmd, both Tor and Privoxy runs automatically.
<div align="center"><a href="SystemWide Proxy"><img src="http://s8.picofile.com/file/8293239568/Capture.PNG"></a></div> <br />

# Privoxy
[Privoxy](https://www.privoxy.org/) is a non-caching web proxy with advanced filtering capabilities for enhancing privacy,<br /> modifying web page data and HTTP headers, controlling access, and removing ads and other obnoxious Internet junk.<br />
Privoxy has a flexible configuration and can be customized to suit individual needs and tastes.<br /> It has application for both stand-alone systems and multi-user networks.<br />
`Privoxy is Free Software and licensed under the GNU GPLv2.`
