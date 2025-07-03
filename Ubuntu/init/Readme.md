# Setup init
This is the first script to run on a fresh install of Ubuntu. This will perform following things -
- Update apt
- Install ansible
- Run init playbook via ansible which will do the following -
    - Install curl, git, openssh etc.
    - Setup projects folder
    - Setup ssh key and fetch Utilities repo from git.
    - Run further setup playbooks from the repo.

To run it first time, copy the contents of this folder into any directory (other than Projects) in your disk, go to the directory and then run below -
```
# This will setup ansible
chmod +x run.sh
./run.sh

# This will setup basic utilities such as ssh and fetch Utilities repo from git.
ansible-playbook playbook.yaml --ask-become-pass
```
