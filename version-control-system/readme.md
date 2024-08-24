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

### Git Forking

What is Forking

⇒ A fork is **a** new repository that shares code and visibility settings with the original “upstream” repository.

⇒ Forks are often used to iterate on ideas or changes before they are proposed back to the upstream repository, such as in open source projects or when a user does not have write access to the upstream repository.

### Open A Pull Request

1. Find a project you want to contribute to.
2. Fork it.
3. Clone it to your local system.
4. Make a new branch.
5. Make your changes.
6. Push it back to your repo.
7. Click the Compare & pull request button.
8. Click Create pull request to open a new pull request.

### Git Pull Vs Git Rebase

- Git Pull ⇒ Fetch and merge (Creates a new merge commit )
- git rebase ⇒ it replays your local commits one by one on top of the remote
- changes ⇒ This can load to a liner commit history without an extra merge commit

### Reset a git commit

- git reset -head <commit>
- git reset Head - [int]

### Git Reflog

⇒ Git reflog is **an isolated store used to maintain an accurate running history of modifications made to your repository's HEAD pointer**

### Git cherry-pick

⇒ git cherry-pick is **a powerful command that enables arbitrary Git commits to be picked by reference and appended to the current working HEAD**.

⇒ git cherry-pick <commit-hash>

### Git Stash

⇒ The git stash command **takes your uncommitted changes (both staged and unstaged), saves them away for later use, and then reverts them from your working copy**

⇒ command => git Stash and git stash pop
