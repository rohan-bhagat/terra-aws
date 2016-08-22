# terra-aws

Terraform script to generate single node hdp cluster on aws
Specify most cluster configuration variables in "variables.tf".

Instructions:

- Enable the forwarding agent config, for instance
```
$ cat ~/.ssh/config 
ForwardAgent yes
StrictHostKeyChecking no
```

- Load your keyfile to ssh-agent
```
$ eval $(ssh-agent) && ssh-add ~/.ssh/keyfile #DO THIS IN THE SAME SHELL FROM WHICH YOU RUN TERRAFORM
```
**This is still work in progress**
