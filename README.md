# This project is dead
I just use Kolla-Ansible now, so there's no need for my own cloud building code. 
I'm just leaving this up, for now, for reference purposes.

---


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
curl -s https://raw.githubusercontent.com/kylep/basementCloud/master/install.sh \
  > bcloud.sh && chmod 755 bcloud.sh  && ./bcloud.sh
```

Once everything is installed, you need to manually install the tmux plugins.
In tmux, type `I, that will install them. You can now use the server as usual.
