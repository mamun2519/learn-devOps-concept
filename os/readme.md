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

![Screenshot from 2024-08-24 22-20-56.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/ef9c962e-3b4b-4ceb-adf7-9db20221cb08/ab036ac5-9edc-4d7f-a8df-4087cea2682a/Screenshot_from_2024-08-24_22-20-56.png)

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
  - **another standard way crate file** ⇒ echo “writing file” >> fileName
  - **file content see** ⇒ cat fileName
  - **file top content see** ⇒ head fileName
  - **file button content see** ⇒ tail fileName
  - **file delete** ⇒ rm fileName
  - f**ile copy** ⇒ cp copyFil Name PasteFileName
  - f**ile rename** ⇒ mv fileName reNameFileName
