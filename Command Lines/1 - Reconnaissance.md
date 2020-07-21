# Reconnaissance

## NMAP

My classic noisy scan:
 * `nmap -v -d -A -sS -f -f -p- --script vuln 192.168.152.130 -oA output_file`


Basic with output, will create a gnmap, nmap y xml file
 * `nmap -v 192.168.152.0/24 -oA output`

TCP SYN (Stealth) starts the connection with a SYN but it does not finish with a ACK, quick and silent:
 * `nmap -sS   192.168.152.0/24`

Usefull for the first phase of scanning, it will sent a ICMP paket to all the mencioned hosts:
 * `nmap -v -sn 192.168.152.0/24`

TCP connect scan, es mas ruidoso que el anterior, da informacion basica:
 * `nmap -v -sT  192.168.152.0/24`

Info of the OS:
 * `nmap -O 192.168.152.130`

See the service and version of the host, will load 47 scripts to see the version of the services
 * `nmap -sV 192.168.152.130`

To check services and version, OS, hostname,.. Will load 147 scripts (like -sV , -O, --traceroute y -sC):
 * `nmap -A 192.168.152.130`

Ping sweep:
 * `nmap -sP 192.168.152.0/24`
  
To make a bypass in some firewalls dividing the packets in smallers ones:
 * ` nmap -sP 192.168.152.130 -f : 8 bytes`
 * `nmap -sP 192.168.152.130 -f -f: 16 bytes`
 * `nmap -sP 192.168.152.130 -mtu nª: number choosen by the user`

Very noisy but i will output lots of info. Will look all the ports: 
 * `nmap -A -v -d -p- 192.168.152.130`
 * `nmap -A -v -d -p1-65535 192.168.152.130`
 
 Those are the NSE, a script collection of different types of attacks or reconnaissances:
 * https://nmap.org/nsedoc/categories/exploit.html
 * `nmap -v -sS -sV --script auth 192.168.152.130`
 * `nmap -v --script vuln 192.168.152.130`
 * `nmap -v -d -sV -p 53,80,139,445 --script dos 192.168.152.130`
 * `nmap -v -sV -p 21,22,23,80,2121,3306,3389 --script brute 192.168.152.130`
 * `nmap -v -d -p 21,80,139,445 --script exploit 192.168.152.130`
 
 
 ## ENUM4LINUX
 
 Enum4linux is a script to make scans to linux machines, it gathers a lot of information like known usernames, workgroups, session checks..
 * https://github.com/CiscoCXSecurity/enum4linux
 * `enum4linux 192.168.152.130`
 
 
  ## NESSUS
 
 Classic Nessus, you can make local scans with the free version:
  * https://www.tenable.com/downloads/nessus?loginAttempted=true
  
  Activation code:
   * https://es-la.tenable.com/products/nessus/nessus-essentials
  
 Extract and install
  * `dpkg -i Nessus-8.9.1-debian6_amd64.deb`
  
 Start Nessus:
  * `/etc/init.d/nessusd start`
 
 Service is mounted at port:
  * `https://127.0.0.1:8834/#/`
  
 
## WHATWEB

Web recon. Is like Wappalyzer but in a commandline, shows info about pluggings, versions, headers, programing language used.. 
  * https://github.com/urbanadventurer/WhatWeb
  * `whatweb -v example.com`


## DIRB

It makes a dictionary-based attack to a website.
  * https://www.hackingarticles.in/comprehensive-guide-on-dirb-tool/
  * https://sourceforge.net/projects/dirb/
  
With the argument -w to list the possible listable directories:
  * `dirb http://example.com   -w`

If I want to use a different dicionary and output the resoult:
  * `dirb http://example.com /usr/share/dirb/wordlists/vulns/apache.txt -o output.txt`
	
Looking for a specific extension:
  * `dirb http://example.com -X .php`

If I do not want to show the pages that gives a specific response:
  * `dirb http://example.com  -N 302`
	
To put delay beetween petitions:
  * `dirb http://example.com  -z 100`
  
  
## WAFW00F

To check if the web site has firewalls or WAF
 * https://github.com/EnableSecurity/wafw00f
 * `wafw00f http://example.com`
 
 
##NIKTO

It makes analysis web of possible vulnerabilities that the web page possibily has based on the versions of the services, frameworks, pluggins..
 * https://github.com/sullo/nikto
 * `nikto -h http://192.168.152.130:80`


##OWAPS ZAP

Web scanner of the OWAPS org. Is the one that gives the most information about the machine. 
 * https://www.zaproxy.org/download/
 
Is a GUI, it only requires to execute 2 scripts
 * `chmod 744 ZAP_2_9_0_unix.sh`
 * `ZAP_2_9_0_unix.sh`
 * `zap.sh`


##JOOMSCAN

Web scan for pages based in Joombla:
 * https://github.com/rezasp/joomscan
 * `git clone https://github.com/rezasp/joomscan`
 * `cd joomscan`
 * `perl joomscan.pl -u http://example.com/`


##CMSmap

Scanning tool to the main CMS like Wordpress Joomla Druppal y Moodle:
 * https://github.com/Dionach/CMSmap
 * `cd CMSmap`
 * `pip3 install .`


##WPS SCAN

Web scan specific for the CMS Wordpress
 * https://github.com/wpscanteam/wpscan
 * `wps --url http://192.168.152.130/ -e u ap`


##DIG
Basic information about the DNS registry, like PRT (resolves a IP to a hostname) or the A registry(point to a IP):
 * `dig -x 8.8.8.8`


##DNSENUM
Perl script to enumerate DNS information of a domian and discober IPs:
 * https://github.com/fwaeytens/dnsenum
 * `dnsenum example.com`