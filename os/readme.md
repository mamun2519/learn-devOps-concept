### Basic Of Os

⇒ An operating system (os) is system software that act as an intermediary between computer hardware and user applications. it manages and controls hardware resources, provides services to software applications, and allows users to interact with the computer.

### Core Functionality

- Process Management
- Memory Management
- File System Management
- Devices Management
- User Interface

### Unix (Key Features)

- Unix introduced the concept of a multi-user and multi-tasking operating system, allowing multiple users to run multiple users to run multiple processes concurrently.
- It Provides a hierarchical file system with directory files organized in a tree-like structure.
- Unix systems have a command line interface (CLI) that allows users to interact with the system using text base commands.

### Linux file system

⇒ Os store and manage data on disk or partitions using a structure called filesSytem.

⇒ FileSystem includes files, directories and its related permissions.

![Screenshot from 2024-08-24 22-20-56.png](https://i.ibb.co/F0vJx6R/Screenshot-from-2024-08-24-22-20-56.png)

### Types of File System

- ext3
- ext4
- XFS [ubunto, debain, fedora, centOs, redhat]
- BtrFs (B-tree Fs)
- Fat

### How To Check Your Linux File System? (Command)

- lsblk -f
- df -Th
- cat etc/fstab

### XFS VS EXT4

- XFS ⇒ Optimized for large file and volumes, offering superior performance and scalibilty
- EXT4 ⇒ Performs well across various file sizes but is less efficient with extremely large files.

### FileSystem Structure

1. **/ (root) Directory:** The Linux FilesStyem starts at the root directory, denoted by a single slash (/) from which all other files and directories branch out.
2. /**bin**: Contains essential user binaries (executables), such as common commands like ls, cp , etc
3. /**etc**: Holder system configuration files.
   1. **Ex**: User, Network, Services, system APPs
4. /**home**: contains the personal directories of all users
5. /**root**: The home directory for the root user (administered)
6. /**var**: where variable data such as logs and database are stored.
7. /**tmp**: Temporary files created by system and users.
8. /**boot**: Holdes files needed for system boot up, including the Linx kernel, an initial RAM disk image, and bootloader configuration.
9. /**dev**: this directory contains device files which represent and provide access to hardware devices such as hard drives, sound dives, etc.
10. /**lib**, /**lib64**: These directories contain essential shared libraries and kernel modules that are needed to boot the file system and run the commands in the root filesystem. the /.lin64 directory exists on systems that support 64-bit applications.
11. /**media**: This is the mount point for removable media such as USB, Drives, CD_ROms, etc. When these drives are mounted, typically, directly corresponding to their mount points are created within /media

### Files Directories Create Update

- **Directory Command**
  - **create directory** ⇒ mkdir fileName
  - **change directory** ⇒ cd
  - **remove file directory** ⇒ rm -r derectoryName
  - **rename directory** ⇒ mv directoyName reName
  - **copy director**y ⇒ cp -r copyfileName pastFileName
- **File Command**
  - **create fil**e ⇒ touch fileName
  - **another way to create file** ⇒ vim fileName
  - **vim save file** => :wq
  - **another standard way crate file** ⇒ echo “writing file” >> fileName
  - **file content see** ⇒ cat fileName
  - **file top content see** ⇒ head fileName
  - **file button content see** ⇒ tail fileName
  - **file delete** ⇒ rm fileName
  - f**ile copy** ⇒ cp copyFil Name PasteFileName
  - f**ile rename** ⇒ mv fileName reNameFileName

### What are links?

⇒ A connection between a file name and actual data on the disk.

⇒ we can call it a shortcut.
EX: cat dayOne/myInfo ⇒ ln -s dayOne/myInfo myAddress

### Types of link

- Hard Link
- Soft Link

### Soft Link

⇒ Link will be removed if original file is deleted or remove
⇒ **a special type of file that serves as a reference to another file or directory**

⇒ One File crate multiple references. if change main file then change automatic all file

- command ⇒ ln -s directoryName reference directoryName
  - EX: ln -s ../name.txt newname.txt

note: if you delete the original file, then delete all reference/links files automatically.

### Hard Link

⇒ A Hard link is **a powerful feature of the Linux file system that can be used to create multiple references to a single file**.
⇒ Deleting, renaming, or removing the original file will not effect the link.

- command ⇒ ln ../hardLinkFileName NewFileName
- file i node see command ⇒ ls i fileName

note: if you delete the hard link file then do not delete all reference files automatically.

### **Linux Distrory and System Information**

⇒ “uname” - returns system information about the current system in UNIX-Like Os.

⇒ in linux OS, “/etc/os-realse” contains information about the Os distro on the linux system.

⇒ to retrieve the distribution name and version, we can use the following commands,

- $ grep -oP ‘
- uname -v
- uname -p

![Screenshot from 2024-08-25 22-04-57.png](https://i.ibb.co/cXqC6kb/Screenshot-from-2024-08-25-22-04-57.png)

### **Environment Variable**

⇒ In the Linux operating system, environment variables are **essential components that enable users to store and access information across various processes and user sessions**.
⇒ Allows you to store data in memory that can be easily accessed by any program or script running form the shell.
⇒ Store information about the sell session and the working environment.

⇒ ex: VAR_NAME=VALUE

- command
  - How To See the Existing env variable?
    - Command ⇒ printenv
    - env
  - How do we see a specific ENV variable?
    - printenv Home
    - echo $Home
  - Delete Env Varible
    - unset VariableName
  - see all global env variable ⇒ env
  - investment variable pint ⇒ echo $variableName
  - set env variable ⇒ export Myname=Mamun
  - set global env variable ⇒ nano - /.bashrc
  - reload shall ⇒ source -/.bashrc
- There are two environment variable types in the bash shell.

  - Global variables
  - local Variables ⇒ its available only shell

- How To create local user defined variables that are visible within your shell process.

  - MY_VAR=Hello
  - echo $MY_VAR

- f the local variable is set to main env use this command
  - export VAR_Name=VaLUE
- Set the Env variable permanently for a user.
  - Edit -/.profile (ubuntu)
  - then apply the current shell ⇒ source -/.bash_profile
- Set the Env variable permanent for all users
  - Edit /etc/profile
  - And Set variables
    - export MYVAR=Value
    - source /etc/profile

### **User Account Management**

**UserAdd:**

- create a new user account
  - **usage ⇒** sudo useradd username
  - **check more info** ⇒ id username
  - **usage option** ⇒ sudo useradd -g <group_name> -s /bin/bash -c “description” -m -d /home/<user_name> <user_name>

**addUser**

- a higher-level utility for creating user accounts with interactive promts.
- **usage** ⇒ sudo adduser username

**usermod**:

- Modifies user account properties, such as username, home directory, or group membership.
  - **usage** ⇒ sudo usermod [option] username
  - modify group or name ⇒ usermod -G <group_name> <user_name>
  - to change the default group ⇒ usermod -g <group_name> <user_name>

**password**:

- Allows users to change their password.
- **usage** ⇒ passed [username] (for the current user) or sudo passed [userName] (for another user)

**userdel**:

- Delete a user account.
  - **Usage**: sudo userdel username
  - **will remove the home directory** ⇒ userdel -r username
  - **force delete even if the user is logged in** ⇒ userdel -f username
- Note: check all users ⇒ cat /etc/passwd

### **Linux Basic Commands (Group)**

**groupadd**:

- creates a new group.
- **usage** ⇒ sudo groupadd [option] groupname

**groupmod**:

- Modifies group properties, such as the group name.
- **usage** ⇒ sudo groupmd [option] groupname

  **groupdel**:

- Delete a grup
- **usage** ⇒ sudo groupdel groupname
- Note: Check Group command ⇒ cat etc/group

**All Important files**

- /etc/passwrd
- etc/group
- /etc/shadow

### **Linux File Permission (ownerShip $ Permission)**

- How to check permission for a file? - command ⇒ #ls -ltr
  **chown**:

- changes the owner of a file directory
- example ⇒ sudo chown newowner:gorupName fileName

- **Each permission set can contain four basic representations:**

  - **“r”** means that the file is **readable.**
  - **“w”** means that the file is **writable.**
  - **“x”** means that the file is **executable.** (you can run it as a program)
  - **“-”** means **“nothing”.** (more specifically, the permission for that slot in the set has not been granted).

- Permission Type -rw-r—r—

  - -rw- Its means ⇒ User Permissions
  - r— it's means ⇒ Group permissions
  - r— Other permissions

- How do you modify the permissions of a file?

  - #chmod a+rwx file.text
    - u mean user
    - g mean gorup
    - o mean other
    - a mean all

- Recursively updates the file permissions

  - command chmod -R u+x myDir
    **chmod**:

- Modifies file and directory permissions.
- Uses a numeric or symbol mode to specific permission.
- example ⇒ chmod [option] [permissions] [file(s)/directory]
- Note: check file permission ⇒ ls -l fileName.

### **Linux Package manager**

- **APT (Advanced Package Tool):** Debian, Ubuntu, and their derivatives.
  - **Install Package** ⇒ sudo apt install packgeName
  - **Remove Package** ⇒ sudo apt remove packageName
  - **Search package** ⇒ apt search packageName
  - apt —help
- **DPKG:** Debian and Ubuntu.
  - **Install Package** ⇒ sudo dpkg -i packgeName
- **RPM:** (Red Hat Package manager): Red Hat Enterprise Linux (RHEL), CentOS, Fedora, and their derivatives.
- **Pacman:** Arch Linex and its derivatives.

### **Linux Basic commands – Text processing**

- **uniq**
  - Purpose: remove or display duplicate lines in a file.
  - command ⇒ **uniq <fileName>**
- **cut**
  - Purpose: Extract specific columns and fields from the line of texts.
  - command ⇒ extract only the usernames form **“/etc/passwd” $cut -d: -f 1 /etc/password**
- **diff**
  - Purpose: Compare and find differences between files
  - command ⇒ **$ diff file1 file2**
- **grep**
  - Purpose: A powerful versatile text-processing and regular expression tool.
  - command ⇒ to find all lines containing the word “error” in the system log file $ grep “error” /var/log/syslog
- **awk**
  - Purpose: “Another versatile text-processing tool
- find
  - Purpose: Searches for files and directories on criteria
  - command ⇒ find - -type d -name “exmplae
- sed

  - Purpose: Its allows us to manipulate and transform text data using regular expressions and pattern matching.
  - command ⇒ sed -i “s/john deo/

  **AWK More Command**

- text-specific column print
  - awk ‘{print $2 (2 means column name)}’ fileName
- Last Column print
  - awk ‘{print $NF} fileName

### **Linux Process**

- pstree
  - Purpose: To display processes in a tree view.
  - command ⇒ pstree
- top
  - Purpose: To continuously monitor and list processes in real-time.
  - command ⇒ $ htop

### Linux Pipe

Piping in Linux is the process of taking the output (usually text) of one command and using it as the input for another command

- $ command1 | command2
- example ⇒ echo -e “apple/file” sort > text.text

### SSH

SSH (Secure Shell) is a network protocol that provides secure access to remote systems over an unsecured network.

- SSH uses public-key cryptography to authenticate users and establish secure connections.
- example ⇒ ssh username#hostname_or_IP

### **Systemctl**

systemctl is a command-line utility and service manager used in modern Linux distribution that adheres to the system init system.

- systemctl is used to manage system services, examine service status, enable or disable services at boot, and perform another system-relatated task
