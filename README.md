Unix Commands
--------------

passwd : Changes user password

pwd: Print current directory

cd: Change Directory

ls: Lists files in a directory

wildcards: * matches any numbers of characters: ? matches a single character

file: Prints the type of file

cat: Display the content of the file

pr: Displays the contents of a file

pg or page: Displays the contents of a file one page at a time

more: Displays the contents of a file one page at a time

clear: clear the screen

cp or copy: Copies a file

chown: Changes the owner of a file

chgrp: Changes the group of file

chmode: Changes files modes, permissions

rm: Removes a file from the systems

mv: Rename a file

mkfir: Create a directory

rmdir: Removes a directory

grep: Pattern matching

egrep: grep command for extended regular expressions

find: Locates files abd directories

>>: Appends to the end of the file

>: Redirects, creats, or overwrites a file

|: Strings commands together, known as pipe

||: Logical OR --> command1 || command2 - execute command 2 if command1 fails

&: Executes in backgrounds

&&: Logical AND - command1 && command2 - execute command2 if command1 succeed

date: Displays the system date and time

echo: Writes strings to stabdard output

sleep: Halts execution for the specified number of seconds

wc: Counts the umber of words, lines and Characters in a file

head: Views the Top of the file

tail: View the End of the file

Diff: Compares two files

sdiff: Compares two files side by side(Require 132-character display)

spell: Spell checker

lp,lpr,enq,qprt : Print a file

lpstat: ststus of system print queues

enable: Enables, or starts, a print queue

cal: Display a calender

who: Displays information about users on the system

w: Extended who commnd

whoami: Displays $LOGNAME or $USER environment parameters

who am i: Display Login name, terminal, login date/time, and where logged in 

f, finger: Display information about logged-in users, including the users .plan and .project

talk: Enables two users to have split-screen conversation

write: Display a message on a users' screen

wall: Dsiplays message on all logged-in users' screens

rwall: Display a message to all users on a remote host

rsh or remsh: Executes a command, or login, on a remote host

df: Displays filesystem statistics

ps: Displays information on currently running processes

netstat: Shows network status

vmstat: Shows virtual memory status

iostat: Shows input/output status

uname: Shows name of the current operating system, as well as machine information

sar: Report system activities

baDisplay base filename of a string parameter

man: Displays the online reference manual

su: Switches to another user, also known as super-user

cut: Writes out selected characters

awk: Programming language to parse characters

sed: Programming language for character substitution

vi: Start the VI editor

emacs: Starts the emacs editor

------------------------------------------------------------------------------------------------------------------------

Symbol Commands

------------------------------------------------------------------------------------------------------------------------

() ---> Runs the enclosed command in a sub-shell

(()) ---> Evaluates and assign value to a variable and does math in shell

$(()) ---> Evaluates the enclosed expression

[] ---> Same as "test" command

<> ---> Used for string comparision

$() ---> Command substitution

'command' ---> Command substitution

-----------------------------------------------------------------------------------------------------------------------

Hard Link

-----------------------------------------------------------------------------------------------------------------------

A Hard link is an additional name for an exiting file. It points directly to the inode (File metatdata) of the target.

Points:

1. Shares the same inode as the original file.
2. Both the original file and the hard link are treated equally—deleting one does not delete the other.
3. Cannot link directories.
4. Cannot span across different file systems or partitions.

Usecase:

Useful for creating backups or multiple access points for the same data without duplicating the file.

exp:

ln originalfile linkfile

---------------------------------------------------------------------------------------------------------------------

Soft Link 

---------------------------------------------------------------------------------------------------------------------

A soft link is a pointer to the target file's path, acting like a shortcut.

Note: 

1. Does not share the inode with the target file.
2. Deleting the original file breaks the soft link, leaving a "dangling" link.
3. Can link to directories.
4. Can span across different file systems or partitions.

Use Case: 

Useful for referencing a file or directory in another location, especially across partitions or when working with directories.

Example:

ln -s original_file soft_link


Key Difference
---------------------------------------------------------------------------------------------------
Feature				Hard Link			Soft Link
---------------------------------------------------------------------------------------------------
Reference			Points to the file's inode	Points to the file's path

Inode sharing			Shares the same inode		Has a different inode

File System			Must be on the same file	Can span across file systems.
				system

Directories			Cannot link directories		Can link directories

Effect of deletion		Deleting the original does	Deleting the original breaks the
				not effect the link. 		link.

Size				Same size as the file.		Small file containing the target
								path.
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------

Sticky Bit

--------------------------------------------------------------------------------------------------------------------------

Sticky bit is a permission setting used on Directories to restrict "deletion" or "modification of files. When sticky bit is set on directory, only the owner of the file, owner of the directory or root user can delete or modify the files within the directory. This is commonly used on directory like "/tmp" to allow shared access while preventing users from deleting each other's files.

Exp:

1. To add the sticky bit

chmod +t directory_name

drwxrwxr-t 4 jbarik jbarik 4096 Dec 10 13:55 UNIX

it denoted as "t"

2. Using numeric permissions

chmod 1777 directory_name

1 :  adds the sticky bit
777 :  ensures full permissions for the owner, group and others

3. To remove the sticky bit

chmod -t Directory_name

or numerically

chmod 0777 directory_name

4. Verify the sticky bit

ls -ld directory_name

-----------------------------------------------------------------------------------------------------------------------

Difference Between sh test.sh and ./test.sh execution 

----------------------------------------------------------------------------------------------------------------------

1. sh.test.sh

Execution : Invokes the sh command (Typically pointing to /bin/sh, which is often a linkto a POSIX-compliant shell like dash or bash)

Behaviour: The script is executed in a subshell of the shell specified by the sh command 

Shebang Ignored: The shebang (e.g., #!/bin/bash) at the top of the script is ignored. The script is executed using the sh shell regardless of the shebang.

Example:

sh test.sh

Even if the shebang specifies #!/bin/bash, the script is executed by /bin/sh.


2. ./test.sh

Execution: Executes the script as a standalone program.

Behavior: The script uses the interpreter specified in the shebang (e.g., #!/bin/bash or #!/usr/bin/env python3).

Permissions Required: The script must have execute permissions (chmod +x test.sh).

Current Shell Context: The script runs in its own process; changes to the environment (e.g., variables) will not persist in the current shell.

Example:

./test.sh

If the script contains a valid shebang, it uses that interpreter to run the script.

Key Difference

---------------------------------------------------------------------------------------------------

Feature				sh test.sh			./test.sh

---------------------------------------------------------------------------------------------------

Shebang				Ignored				Respected


Interpreter			Always /bin/sh			Depends on shebang or defaults


Execute permission		Not Required			Required	


Changes to Current shell	No(Subshell execution)		No(Separate process)


Script Debugging		Useful for ensuring POSIX	May be depend on interpreter
protability			complience

---------------------------------------------------------------------------------------------------

Example:

#!/bin/bash
echo "Hello, $SHELL"

Run: sh test.sh
o/p: Hello, /bin/bash

because the sh command uses /bin/sh as the interpreter

Run: ./test.sh
Because the shebang specifies #!/bin/bash
