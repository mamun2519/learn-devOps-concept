### **What is VCS**

⇒ a version control system is a tool that tracks and manages changes to files, enabling collaboration and maintaining a history of modification over time.

### **What is git**

⇒ git is a version control system for tracking code changes and facilitating collaboration among developers.

### Basic git commands

- git init
- git add <file>
- git commit -m “commit message”
- git status
- git branch
- git checkout branch
- git reset
- git log
- Git branch Create ⇒ git checkout -b branch name

### Git Commit

- How to write a commit message
- What conversion do we follow
  **Convention**

⇒ use this command ⇒ git commit ⇒ write details commit

⇒ use always present tense

- set git alias
  ⇒ It helps to write shortcut git command

  example

  ⇒ git config —global [alias.co](http://alias.co) “checkout”

use commend ⇒ git co master

### Git Locally SSH Key setup

step

- first, generate a local SSH key

⇒ use this command ⇒ ssh-keygen -t rsa -b 4096 -c “email”

- Then enter when not generated SSH
- See this ssh key

⇒cd .ssh

- Then copy SSH key and go GitHub setting

⇒ visited github ⇒ SSH and GPG kays ⇒ write title or paste this key

- Check github successfully connection ⇒ ssh -T “email”

### Git Remote

- Git clone <repo>
- git remote
- git remote add <remote_name>
- git pull origin <branch>
- git fetch
- git push origin <branch>
- check remote ⇒ git remote
- git remote -v
- add new remote origin repoName
