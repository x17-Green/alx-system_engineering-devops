# 0x0C. Web server

### Concepts

_For this project, we expect you to look at this concept:_

- [What is a Child Process?](https://intranet.alxswe.com/concepts/110)
---

![web_server](./img/8Gu52Qv.png)

## Background Context
[![](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/Screenshot+2017-07-06+19.24.05.png)](https://www.youtube.com/watch?v=AZg4uJkEa-4&feature=youtu.be&hd=1)
> In this project, some of the tasks will be graded on 2 aspects:

1. Is your `web-01` server configured according to requirements
2. Does your answer file contain a Bash script that automatically performs commands to configure an Ubuntu machine to fit requirements (meaning without any human intervention)

For example, if I need to create a file `/tmp/test` containing the string `hello world` and modify the configuration of Nginx to listen on port `8080` instead of `80`, I can use `emacs` on my server to create the file and to modify the Nginx configuration file `/etc/nginx/sites-enabled/default`.

But my answer file would contain:

```
sylvain@ubuntu cat 88-script_example
#!/usr/bin/env bash
# Configuring a server with specification XYZ
echo hello world > /tmp/test
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default
sylvain@ubuntu
```

As you can tell, I am not using `emacs` to perform the task in my answer file. This exercise is aiming at training you on automating your work. If you can automate tasks that you do manually, you can then automate yourself out of repetitive tasks and focus your energy on something more interesting. For an [SRE](https://intranet.alxswe.com/rltoken/9I0WufjKdW3TZA2EVrGnlQ "SRE"), that comes very handy when there are hundreds or thousands of servers to manage, the work cannot be only done manually. Note that the checker will execute your script as the `root` user, you do not need to use the `sudo` command.

A good Software Engineer is a [lazy Software Engineer](https://intranet.alxswe.com/rltoken/sRY__axKNHhNW0SVmsUC_A "lazy Software Engineer"). 
![nice_try](./img/82VsYEC.jpg)

Tips: to test your answer Bash script, feel free to reproduce the checker environment:

- start a `Ubuntu 16.04` sandbox
- run your script on it
- see how it behaves
---
## Resources

**Read or watch**:

- [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works "How the web works")
- [NGINX](https://en.wikipedia.org/wiki/Nginx "Nginx")
- [How to Configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04 "How to Configure Nginx")
- [Child process concept page](https://intranet.alxswe.com/concepts/110 "Child process concept page")
- [Root and sub domain](https://landingi.com/help/domains-vs-subdomains/ "Root and sub domain")
- [HTTP requests](https://www.tutorialspoint.com/http/http_methods.htm "HTTP requests")
- [HTTP redirection](https://moz.com/learn/seo/redirection "HTTP redirection")
- [Not found HTTP response code](https://en.wikipedia.org/wiki/HTTP_404 "Not found HTTP response code")
- [Logs files on Linux](https://www.cyberciti.biz/faq/ubuntu-linux-gnome-system-log-viewer/ "Logs files on Linux")

**For reference:**

- [RFC 7231 (HTTP/1.1)](https://intranet.alxswe.com/rltoken/BGa6RrS0dnM6EdBGS_ZDUw "RFC 7231 (HTTP/1.1)")
- [RFC 7540 (HTTP/2)](https://intranet.alxswe.com/rltoken/IZ2fyYn1qNZ9RXXsg5vG1g "RFC 7540 (HTTP/2)")

**man or help**:

- `scp`
- `curl`

## Learning Objectives

At the end of this project, you are expected to be able to [explain to anyone](https://intranet.alxswe.com/rltoken/EHyxcIwPtD2SzEGRKOnT3g "explain to anyone"), **without the help of Google**:

---
### General

- What is the main role of a web server
- What is a child process
- Why web servers usually have a parent process and child processes
- What are the main HTTP requests

### DNS

- What DNS stands for
- What is DNS main role

### DNS Record Types

- `A`
- `CNAME`
- `TXT`
- `MX`
---
### Copyright - Plagiarism

- You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
- You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
- You are not allowed to publish any content of this project.
- Any form of plagiarism is strictly forbidden and will result in removal from the program.
---
## Requirements

### General

- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- A `README.md` file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass `Shellcheck` (version `0.3.7`) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what is the script doing
- You can’t use `systemctl` for restarting a process

---
## Your servers

|Name|Username|IP|State||
|---|---|---|---|---|
|493014-web-01|`ubuntu`|`100.25.140.95`|running||

---
## Tasks

### `0. `Transfer a file to your server
> Write a Bash script that transfers a file from our client to a server:

Requirements:

- Accepts 4 parameters
    1. The path to the file to be transferred
    2. The IP of the server we want to transfer the file to
    3. The username `scp` connects with
    4. The path to the SSH private key that `scp` uses
- Display `Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY` if less than 3 parameters passed
- `scp` must transfer the file to the user home directory `~/`
- Strict host key checking must be disabled when using `scp`

Example:
```
└─[$] <git:(main*)> ./0-transfer_file                                             
Usage: ./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
└─[$] <git:(main*)> ssh ubuntu@100.25.140.95 -i ~/.ssh/school 'ls ~/'

└─[$] <git:(main*)> vi extras/404.html
└─[$] <git:(main*)> ./0-transfer_file ./extras/404.html 100.25.140.95 ubuntu ~/.ssh/school
404.html                                                                                                                                                            100% 2244     5.7KB/s   00:00    
└─[$] <git:(main*)> ssh ubuntu@100.25.140.95 -i ~/.ssh/school 'ls ~/'
404.html
└─[$] <git:(main*)>
```
- Solution File: [0-transfer_file](./0-transfer_file)

---

### `1.` Install nginx web server
![meme](./img/f0f2001.jpg)
> Readme:

- [-y on apt-get command](https://askubuntu.com/questions/672892/what-does-y-mean-in-apt-get-y-install-command "-y on apt-get command")

> Web servers are the piece of software generating and serving HTML pages, let’s install one!

Requirements:

- Install `nginx` on your `web-01`
- server
- Nginx should be listening on port 80
- When querying Nginx at its root `/` with a GET request (requesting a page) using `curl`, it must return a page that contains the string `Hello World!`
- As an answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements (this script will be run on the server itself)
- You can’t use `systemctl` for restarting `nginx`

Server terminal:
```
ubuntu@493014-web-01:~$ sudo su
root@493014-web-01:/home/ubuntu# ./1-install_nginx_web_server > /dev/null 2>&1
root@493014-web-01:/home/ubuntu# curl localhost
Hello World!
root@493014-web-01:/home/ubuntu# exit
```
Local Terminal:
```
└─[$] <git:(main*)> curl 100.25.140.95
Hello World!%                            └─[$] <git:(main*)> curl -sI 100.25.140.95
HTTP/1.1 200 OK
Server: nginx/1.18.0 (Ubuntu)
Date: Sun, 09 Jun 2024 15:21:02 GMT
Content-Type: application/octet-stream
Content-Length: 12
Connection: keep-alive

└─[$] <git:(main*)> 
```
> In this example `34.198.248.145` is the IP of my `web-01` server. If you want to query the Nginx that is locally installed on your server, you can use `curl 127.0.0.1`.

If things are not going as expected, make sure to check out Nginx logs, they can be found in `/var/log/`.

**Maarten’s PRO-tip:** When you use `sudo su` on your web-01 you can become root like this to test your file:
```
└─[$] <git:(main*)> sudo su
[sudo] password for green: 
[greenhouse 0x0C-web_server]#
```
- Solution File: [1-install_nginx_web_server](./1-install_nginx_web_server)

---

### `2. `Setup a domain name
> [.TECH Domains](https://get.tech/ ".TECH Domains") is one of the top domain providers. They are known for the stability and quality of their DNS hosting solution. We partnered with .TECH Domains so that you can learn about DNS.

**YOU** can have a **free .tech domain** for 1 year by following these steps:

- Access the [tools space](https://intranet.alxswe.com/dashboards/my_tools "tools space")
- Unlock the **GitHub student pack**: WARNING - this invitation link is unique to you and can’t be reclaimed! If you have any issue, please contact [GitHub education support](https://support.github.com/request/landing "GitHub education support")
---
> Provide the domain name in your answer file.

Requirement:

- provide the domain name only (example: `foobar.tech`), no subdomain (example: `www.foobar.tech`)
- configure your DNS records with an A entry so that your root domain points to your `web-01` IP address **Warning: the propagation of your records can take time (~1-2 hours)**
- go to [your profile](https://intranet.alxswe.com/users/my_profile "your profile") and enter your domain in the `Project website url` field

Example:
```
└─[$] <git:(main*)> cat 2-setup_a_domain_name 
green-net.tech
└─[$] <git:(main*)> 
└─[$] <git:(main*)> dig green-net.info
;; communications error to 1.1.1.1#53: timed out
;; communications error to 1.1.1.1#53: timed out
;; communications error to 1.1.1.1#53: timed out

; <<>> DiG 9.18.27 <<>> green-net.info
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 9197
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;green-net.info.			IN	A

;; AUTHORITY SECTION:
info.			1800	IN	SOA	a0.info.afilias-nst.info. hostmaster.donuts.email. 1717960650 7200 900 1209600 3600

;; Query time: 170 msec
;; SERVER: 8.8.8.8#53(8.8.8.8) (UDP)
;; WHEN: Sun Jun 09 21:29:21 WAT 2024
;; MSG SIZE  rcvd: 122

└─[$] <git:(main*)> 
```
> When your domain name is setup, please verify the Registrar here: [https://whois.whoisxmlapi.com/](https://whois.whoisxmlapi.com/ "https://whois.whoisxmlapi.com/") and you must see in the JSON response: `"registrarName": "Dotserve Inc"`

- Solution File: [2-setup_a_domain_name](./2-setup_a_domain_name)

---
### `3.`Redirection
> Readme:

- [Replace a line with multiple lines with sed](https://intranet.alxswe.com/rltoken/RRP9hX3MlQdABaKZD-Y_cA "Replace a line with multiple lines with sed")

Configure your Nginx server so that `/redirect_me` is redirecting to another page.

Requirements:

- The redirection must be a “301 Moved Permanently”
- You answer file should be a Bash script containing commands to automatically configure a Ubuntu machine to respect above requirements
- Using what you did with `1-install_nginx_web_server`, write `3-redirection` so that it configures a brand new Ubuntu machine to the requirements asked in this task

Example:
```
└─[$] <git:(main*)> curl -sI 100.25.140.95/redirect_me
HTTP/1.1 301 Moved Permanently
Server: nginx/1.18.0 (Ubuntu)
Date: Tue, 11 Jun 2024 11:12:20 GMT
Content-Type: text/html
Content-Length: 178
Connection: keep-alive
Location: https://github.com/x17-green

└─[$] <git:(main*)> 
```

- Solution File: [3-redirection](./3-redirection)
---
### 4. Not found page 404
> Configure your Nginx server to have a custom 404 page that contains the string `Ceci n'est pas une page`.

Requirements:

- The page must return an HTTP 404 error code
- The page must contain the string `Ceci n'est pas une page`
- Using what you did with `3-redirection`, write `4-not_found_page_404` so that it configures a brand new Ubuntu machine to the requirements asked in this task

Example:
```
└─[$] <git:(main*)> curl -sI 100.25.140.95/xyz        
HTTP/1.1 404 Not Found
Server: nginx/1.18.0 (Ubuntu)
Date: Tue, 11 Jun 2024 11:16:09 GMT
Content-Type: text/html
Content-Length: 24
Connection: keep-alive
ETag: "66682ac2-18"

└─[$] <git:(main*)> curl 100.25.140.95/xyzfoo
Ceci n'est pas une page

└─[$] <git:(main*)> 
```
- Solution File: [4-not_found_page_404](./4-not_found_page_404)
---
### 5. Install Nginx web server (w/ Puppet)
> Time to practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 301 redirect when querying /redirect_me.

Requirements:

- Nginx should be listening on port 80
- When querying Nginx at its root `/` with a GET request (requesting a page) using `curl`, it must return a page that contains the string `Hello World!`
- The redirection must be a “301 Moved Permanently”
- Your answer file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
```

```
- Solution File: [7-puppet_install_nginx_web_server.pp](./7-puppet_install_nginx_web_server.pp)
---
#### **Repo:**
- GitHub repository: [alx-system_engineering-devops](../README.md)
- Directory: [0x0C-web_server](./README.md)