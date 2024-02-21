Change directory (cd):
[Student@localhost /]$ cd ..     /* is current working Directory*/
Student@localhost
 [Student@localhost /]$ cd /   /* change directory to root directory*/

 [LabExam@ISELAB1 local]$ cd ~ /*~(Tilde) takes you back to the home directory*/


[LabExam@ISELAB1 ~]$ cd -  /*switching between present and previous directories or (-)hyphen will take you to the last directory which you have worked on
*/
/home/LabExam





[Student@localhost /]$ cd /usr/local /*Using Absolute Path, We give entire path details here.*/



[Student@localhost lib]$ cd /usr/local /* Change Directory Again*/

[Student@localhost local]$ cd lib /*Using Relative Path, We give only the sub directory name to which we need to change*/

Present working directory(pwd):
[Student@localhost lib]$ pwd  /*Present Working Directory, Prints the full path to the current Working Directory*/

 Output :/usr/local/lib

Ls command: listing files and directories
[Student@localhost local]$ ls  /*Lists the files and Directories under the current working directory

Output:
bin  etc  games  include  lib  libexec  sbin  share  src

[Student@localhost local]$ ls -t    /*List in the order of last modification time*/

Output:
share  bin  etc  games  include  lib  libexec  sbin  src

[Student@localhost local]$ ls -l  /* List all the files, Directories and their modes, number of links,owner of the file, file size, modified date and time and file name*/

total 36


Output:
drwxr-xr-x. 2 root root 4096 Oct  1  2009 bin
drwxr-xr-x. 2 root root 4096 Oct  1  2009 etc
drwxr-xr-x. 2 root root 4096 Oct  1  2009 games

[Student@localhost local]$ ls -a  /*Lists all entries including hidden files*/
.  ..  bin  etc  games  include  lib  libexec  sbin  share  src

Single dot represents hidden directory, double dot represents the parent of the hidden directory

[Student@localhost local]$ ls -d  /*Lists the directory files instead of the contents, here there are no contents.

Output:
.

[Student@localhost local]$ ls -p  /*Puts slash at the end of each directory*/
bin/  etc/  games/  include/  lib/  libexec/  sbin/  share/  src/


[Student@localhost local]$ ls -u  /* Lists in the order of last access time*/
lib  src  games  include  libexec  sbin  share  etc  bin


[Student@localhost local]$ ls -i  /*display inode information*/
2752577 bin  2752579 games    2752581 lib      2752583 sbin   2752607 src
2752578 etc  2752580 include  2752582 libexec  2752584 share


Each file has an inode and is identified by an inode number (i-number) in the file system where it resides. inodes provide important information on files such as user and group ownership, access mode (read, write, execute permissions) and type.

Combining ls options:
[LabExam@ISELAB1 local]$ ls -la
total 44
drwxr-xr-x. 11 root root 4096 Jul  7  2015 .
drwxr-xr-x. 14 root root 4096 Aug  4  2015 ..
drwxr-xr-x.  2 root root 4096 Oct  1  2009 bin
drwxr-xr-x.  2 root root 4096 Oct  1  2009 etc
drwxr-xr-x.  2 root root 4096 Oct  1  2009 games
drwxr-xr-x.  2 root root 4096 Oct  1  2009 include


[LabExam@ISELAB1 local]$ ls -l -a
total 44
drwxr-xr-x. 11 root root 4096 Jul  7  2015 .
drwxr-xr-x. 14 root root 4096 Aug  4  2015 ..
drwxr-xr-x.  2 root root 4096 Oct  1  2009 bin
drwxr-xr-x.  2 root root 4096 Oct  1  2009 etc
drwxr-xr-x.  2 root root 4096 Oct  1  2009 games
drwxr-xr-x.  5 root root 4096 Jul  7  2015 share
drwxr-xr-x.  2 root root 4096 Oct  1  2009 src



Echo command:

[Student@localhost local]$ echo haii   /*Echo is for printing*/

Vi editor:
Output:
Haii
[LabExam@ISELAB1 ~]$ vi dg.sh  /*creating new file using vi editor*/










Cat command:
1. Concatenation:
[LabExam@ISELAB1 ~]$ cat dg.sh td.sh  /* If there are two files, we can concatenate the contents of those two files by using cat command. */
ffhghngh
hjhjjj
fgfgff
hghgh

[LabExam@ISELAB1 ~]$ cat dg.sh
ffhghngh
hjhjjj

[LabExam@ISELAB1 ~]$ cat td.sh
fgfgff
hghgh

2. Creation of new file:
[LabExam@ISELAB1 ~]$ cat > l.txt  /* creating new file on the terminal page*/
this is a beutiful world

3. Displaying contents of file:
[LabExam@ISELAB1 ~]$ cat l.txt  /*displays contents of a file*/
this is a beutiful world

Options with cat command:
[LabExam@ISELAB1 ~]$ cat -n song.txt  /*numbering lines */

     1	i am a student
     2	
     3	

[UNIXLAB@localhost~]$ cat -b t.txt
     1	i am a student


	
[LabExam@ISELAB1 ~]$ cat -e test.sh  /*puts a $ at the end of each line*/

hello everyone, how do you do?$
Hey, am fine.$
How's your training going on?$

Make Directory:(Mkdir)
[LabExam@ISELAB1 local]$ mkdir p
mkdir: cannot create directory `p': Permission denied
[LabExam@ISELAB1 local]$ cd ~
[LabExam@ISELAB1 ~]$ mkdir usp
[LabExam@ISELAB1 ~]$  cd usp  /*We were able to create new directory under home directory*/
[LabExam@ISELAB1 usp]$  mkdir unix /*making subdirectories under parent directory*/

[LabExam@ISELAB1 unix]$       

Move command:(mv)
[LabExam@ISELAB1 ~]$ mv c.txt l.txt  /* mv stands for move. mv is used to move one or more files or directories from one place to another in file system like UNIX. */
 [LabExam@ISELAB1 ~]$ cat c.txt
bash: cd: usp: No such file or directory
[LabExam@ISELAB1 ~]$ cat l.txt
aaaaa
/*moving contents from source file to destination file,source file gets removed permanently after moving*/

Option with mv command :-i
[UNIXLAB@localhost~]$ mv -i ll3.sh l.sh  /* interactive - Attempt to move contents from source to destination file, but prompt before moving to confirm*/
mv: overwrite `l.sh'? yes
[UNIXLAB@localhost~]$ cat ll3.sh
cat: ll3.sh: No such file or directory
[UNIXLAB@localhost~]$ cat l.sh
HHH
    
Moving group of files to a directory:
[LabExam@ISELAB1 ~]$mv t.txt n.txt y.txt usp /*moving group of files to a directory*/
[LabExam@ISELAB1 ~]$cd usp
[LabExam@ISELAB1 usp]$ls
t.txt n.txt y.txt


copy command:(cp)
 [LabExam@ISELAB1 ~]$ cp b.txt c.txt  /* cp stands for copy. This command is used to copy files or group of files or directory. It creates an exact image of a file on a disk with different file name. cp command require at least two filenames in its arguments.*/
 [LabExam@ISELAB1 ~]$ cat b.txt
hello

[LabExam@ISELAB1 ~]$ cat c.txt
hello

Option with copy command:-i
[UNIXLAB@localhost sha]$ cp -i t1.txt t2.txt /*/* interactive - Attempt to copy contents from source to destination file, but prompt before copying to confirm*/
cp: overwrite `t2.txt'? yes
[UNIXLAB@localhost sha]$ cat t1.txt
uuuuu
[UNIXLAB@localhost sha]$ cat t2.txt
uuuuu
 
Remove files : rm command
[LabExam@ISELAB1 ~]$ ls
add.sh  mul.sh  odd.sh  sub.sh b.sh
[LabExam@ISELAB1 ~]$ rm b.txt   /* If you want to delete/remove any file, then using rm command*/
[LabExam@ISELAB1 ~]$ cat b.txt
cat: b.txt: No such file or directory
[LabExam@ISELAB1 ~]$ ls
add.sh  mul.sh  odd.sh  sub.sh 


[UNIXLAB@localhost sha]$ ls
add.sh  mul.sh  odd.sh  sub.sh
[UNIXLAB@localhost sha]$ rm *    /*removing all files from current working directory*/
[UNIXLAB@localhost sha]$ ls
[UNIXLAB@localhost ~]$ ls
21745.sh   a.txt      gokul     new file    p77.cv     p.txt
aa.sh      boi.py     goutham   oddeven.sh  p.cpp      Public
a.awk      b.sh       harshit1  p1.sh       Pictures   qq.sh
aayush     b.sh~      hell      p22.c       pogram.sh  sandesh

[UNIXLAB@localhost ~]$ rm -r * /*removing all files and directories from current working directory*/
[UNIXLAB@localhost ~]$ ls


[LabExam@ISELAB1 ~]$ rm a.txt l.txt  /* Deleting/Removing multiple files using rm command*/
[LabExam@ISELAB1 ~]$ cat a.txt
cat: a.txt: No such file or directory
[LabExam@ISELAB1 ~]$ cat l.txt
cat: l.txt: No such file or directory

rm command with option:
[LabExam@ISELAB1 ~]$rm  -i t.txt /*interactive - Attempt to remove file in the working directory, but  prompt before each file to confirm*/
rm: remove `t2.txt'? yes
[LabExam@ISELAB1 ~]$cat t.txt
cat: t.txt: No such file or directory
 [LabExam@ISELAB1 ~]$ mkdir usp  /*create a directory*/

Remove directory:(rmdir)
[LabExam@ISELAB1 ~]$ rmdir usp  /*Remove a directory*/
[LabExam@ISELAB1 ~]$ cd usp
bash: cd: usp: No such file or directory

Date command:(date)
[UNIXLAB@localhost~]$  date  /*display date and time*/
Thu Nov 22 15:11:53 IST 2018

Process status:(ps)
[UNIXLAB@localhost~]$ ps   /*display process details*/
  PID TTY          TIME CMD
 2354 pts/0    00:00:00 bash
 2637 pts/0    00:00:00 cat
 2640 pts/0    00:00:00 cat
10033 pts/0    00:00:00 cat
10034 pts/0    00:00:00 cat
10040 pts/0    00:00:00 ps
