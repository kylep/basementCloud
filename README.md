# basementCloud
Standalone private cloud for my personal development projects.
Built to be deployed on a beefy single 2U supermicro server.

# Requirements
* Ubuntu 16.4
* Lots of RAM. Maybe 16gb min, never tested with less than 32
* At least one big storage disk. More are better
* Actually having reason to own a private cloud.

# Installation
I really liked how rapid7 let you install the whole metasploit framework with
a single curl command. So, I copied their approach, at least for step 1.

... Yeah security, etc... read the installer first if you care. At least Github
has HTTPS.

As root on your ubuntu server, have internet access, and run this:
```
curl https://raw.githubusercontent.com/kylep/basementCloud/master/install.sh \
  > basementCloud.sh && chmod 755 basementCloud.sh  && ./basementCloud.sh
```
