# Exploitation

## MetaSploit

Most famous external databases:
 * https://www.rapid7.com/db/
 * https://www.exploit-db.com/
 * https://0day.today/webapps
 * https://github.com/BuffaloWill/oxml_xxe
 * https://www.securityfocus.com/vulnerabilities
 * https://vuldb.com/es/

If is this the first time that MetaSploit is launched you need to start PostgreSQL:
 * `service postgresql start`
 
Check port open at 5432
 * `netstat -antp`

Then we need to create the MetaSploit database in the PostgreSQL data base:
 * `msfdb init`
 
Launch the console:
 * `msfconsole`

With help we can see all the commands that we can execute:
 * `help`

Check database status:
 * `db_status`

Import a scan, it can be from Nmap:
 * `db_import /home/nmap_scan.xml`

With host we can check all the imported hosts, showing OS, ip, MAC, hostname:
 * `hosts`

With service you can see the services that had the hosts imported:
 * `services`
 * `services -p 21`
 * `services -S ms-sql`

To look after a exploit or auxiliary you can use search for services or CVE or popupar names given:
 * `search ftp`
 * `search MS17-010`
 * `search vsftpd 2.3`

With searchsploit is for look after external exploits:
 * `searchsploit vsftpd`

To set a 