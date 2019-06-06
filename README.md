#  shelltools repo 
Used to store and spread to the world my little piece of code.

## pourcent
As far as i often trade crypto currencies by hand on Poloniex, im used a lot bc to compute the estimate % of gain or loss of an operation. I also automated this operation in a little bc script called 'pourcent'

## increase\_weight 
little script i wrote to slowly increase crush weigh of newly osd for CEPH, when you are adding new servers into your cluster and want to avoid heavy load of data restructuration.

## generate-ssh-config
Little Awk script to generate an ssh config file from Ansible inventory
It create a file in /tmp and you need to copy it into your .ssh folder 
```
$ generate-ssh-config ansible-infra/inventories/*/hosts.ini 
$ mv ~/.ssh/config{,.old}
$ cp /tmp/generated.ssh.config ~/.ssh/config
```
