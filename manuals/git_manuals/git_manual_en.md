# Git Manual on Windows

## Installation of Git (for Windows)

## Note: Git and GitHub are two different tools.

Git: It's a software that is already included for linux and mac models (mostly). So for Windows a previous download of this software is required. Once downloaded for the operating system of yout choice *all commands and operation of is the same for any of them (windows, mac or linux)*

**Git works as a code memory**.Having a similar operation to a game memory where as the game progresses, even if you lose a life, your process is not deleted. Mentioning that this is only local to your computer.
***Being this a version control, which records the changes made to a file or set of files over time, in order to be able to recover/maintein specific versions***.

#### Download Git:

- click: [https://git-scm.com/](https://git-scm.com/) *Note: Download a version according to your operating system*.

## First steps in Git 

For the handling of Git there are several ways but in this manual we will be visualizing only two, which will be the use of Terminal by means of Git Bash and the use of a graphical tool, as in this case it will be the use of **Visual Studio Code**.

***Note: One of the best ways to understand Git is from the terminal, since it helps to visualize the changes that are made***

## Terminal 

To start working in terminal, you have to **Git Bash**.
As a first step, to know that Git is installed correctly, we will put the commands:

- git

By just typing Git and clicking enter it has not executed any action, so it will show us a list of Git commands.
Here are some of the most commonly used commands in Git:

- git init =start a project to use Git.
- git add . =save all changes you have made.
- gitt add [filename] =saves the named file.
- git commit -m "message" =saves the changes, with a messages that should generally tell us what changes were made. 
- pwd =shows the path we are working on.
- git status =used to get a summary of the current state of the repository. It is a key tool to understand what is going on in your project and what changes you need to manage.
- ls =shows the contents of the folder we are in.
- mkdir [name] = create a folder.
- cd [name] =takes you to the iven file/folder.
- cd .. =returns you to the previous folder/file.
- clear =clear the screen of all commands that have been previously set.

As a next step, we visualize which version of Git we will be working on:

- git --version

Another way to see what version we have, is with the command:

- git --v

And this will show us the version that was installed.

We can also check what **path** Git is stored in, so we will put the command:

- where.exe git 

To continue in the correct use of Git Bash, it is necessary to configure a local user, which in this case consists of a name and email, so that these can be attributed with the changes made by the user locally an the date of when they are made.

***Note: It's reccommended that the email that is used can also be used in the Git-Hub user***.

- git config --global user.name [your name]
- git config --global user.email [your email]

Before we continue, we will check if it has been saved correclty and for that we use the command:

- git config --list

This command will help us to verify if the name and email have been saved correctly. 
Once the local user is configured, we will star working from the terminal. This with the objective of being able to visualize where our repository will be. So we will start working with following commands.

- pwd =since the first thing we want to verify is the path where we are.
- ls =here we will have a list of the directories to which we have access or in case we are already working, it shows the path in which we are.
- cd = here is to move to one of the directories/folders , so [name of the folder/directory in this case our repository will be in the documents folder].
- ls = with this command we can view the contents of that folder. 
- cd .. = when you need to return to a previous folder.
- pwd =for example as we already in [documents] this command has to show us this path.

The following can be seen in the following figures:

![pwd_y_ls](/manuals/figures/pwd_y_ls.jpg)

![cd_ls_pwd](/manuals/figures/cd_ls_pwd.png)

***Note: at this point, since you have already entered commands, you can use the arrow keys to use a previously used command***.

***Note: if we want to clear the previous commands we use the **clear** command, this doesn't affect anything that is done***

Files can also be made from the console, so we will use the command:

It's done with the **touch** command (in this case the name of the file with it's corresponding extension "hellogit_miranda.py" in this case the extension is ".py" because we want to make a python file, but it can be extension of any type of file sush as markdown ".md" )

- touch hellogit_miranda.py
- ls =there we can see that the file was created in the folder, in which we were working on. 

So we have already created a python code file, so if we check our folder, a file has already been created.

As you can see in the figure:

![touch_ls](/manuals/figures/touch_ls.png)

But as we want to have a control of the code versions we work with, we will star a **repository** in our folder, so we will put the command:

- git init:

and it will show us the following as you can see in the following figure:

“Initialized empty Git repository in C:/Users/labmodel/Documents/Hello_Git_Miranda/.git/”

This indicates that the repository is currently started but it is empty and also the path where it is stored. Now we can work with version control.

![git_init](/manuals/figures/git_init.png)

***When working with Git, the concept of **repository** is important: it comprises the entire collection of files and folders associated with a project, along with the revision history of each file***.

*Note: We are in a working locally but it is called a master and in which we can also work by branch “branches of this same work ”*. 

We can rename this master, if we want to.

- git branch -m [name of the new master; in this case example_miranda].

Before we continue working we will display the status of our job.

- git status 
On branch example_miranda    
*indicates that it is on the master*

No commits yet *tells us that no commits have been added*.

Untracked files:  
  (use “git add <file>...” to include in what will be committed)  
        hellogit_miranda.py

**tells us that there are files but they have not been saved into the repository**.

nothing added to commit but untracked files present (use “git add” to track)

As you can see in the following figure:

![branch_y_status](/manuals/figures/branch_y_status.png)

Before saving our file we will open it from the console, to be able to work with it: 

- code= (opens our graphical tool in this case **Visual Studio Code**, if it is already previously installed)   
- code .= (opens our graphical tool in this case **Visual Studio Code**, if it is already previously installed, but with quick access to the folder that we had previously created).

Once **VSC** is open, we can run something simple like the following line.

- print (“hello everyone”)
To run that line of code (shift+enter).

As we can see in the following figure:

![ejemplo_py](/manuals/figures/ejemplo_py.png)

So to save our files we will use the command:

- git add [name of our file]  
- git add hellogit_miranda.py

If we check the status again (**Git Status** command), now it will indicate that it was added to the repository but it has no commits “no commits yet”.

**Note: If we do the command “git add . all the files that are pending or *untracked files* are saved **.

![git_add](/manuals/figures/gitt_add.png)

So for these changes to be registered it is necessary to use the command:

-git commit -m “ This message will be in quotes and seeks to be clear of what has been done *my first commit*.”

***Note: once the commit is done, it will have a unique identifier, which will allow us to identify between the n-commits that we could do in our work***.

When you want to visualize the commits that have been made, use the command:
- git log   

***Note: this tells us the unique identifier of each commit and who has made it, in this case as we are working locally, it will show our information (that we have previously configured) and also the exact date when it has been done and the message that has been committed, in this case *my first commit* ***.

As you can see in the following figure:

![commit_log](/manuals/figures/commit_log.png)


## Vscode

Visual Studio Code is a graphical tool that allows us to manage Git in a simple way.

To download VScode:  
- click on https://code.visualstudio.com/

This tool, as well as working with terminal, its purpose is the version control through a local or remote repository.

Once downloaded, we will open VScode, it is important to mention that you can work from terminal from the same application, for that we will go to the “view” section and select “terminal”, as you can see in the image.

![abrir_terminal](/manuals/figures/abrir_terminal.png)

**Note: once the terminal is open it is necessary to verify that in the upper right corner, it says ***powershell*** **.

The first step to use VSCode and Git together, is to have a folder previously destined that will be the one that we will use to make our repository, so we will open VSCode and we will make the following steps and as shown in the following figures:

- open folder   
- locate the previously selected folder

![open_folder](/manuals/figures/open_folder.png)

- click on source control (this is located in the left column)

![source_control](/manuals/figures/source_control.png)

- click on initialize repository **with this we have already started the repository in Git from VSCode**.

We will start to make a file, but we can see that the source control interface is changed, so to make a new file we will click on the **explorer** icon in the upper left column and click on **new file**, as shown in the image:

![new_file](/manuals/figures/new_file.png)

Once clicked, we will name the file (**Note: the file name goes with everything and the extension of the file type we need**).

In this case we will name our file as: [ejemplo.py] **.py is the extension for a python file**.

print("Hello)
and to save it we will make **ctrl+S**, once done that, we will go to **source control** and we will give click to our file, it must be below the section **changes** and if we give click, we will be able to see that our first changes appear to us, these of the side where they were added of green color.

![primeros_cambios](/manuals/figures/primeros_cambios.png)

So to save this change in a permanent way we need to **commit** our work and have the changes reflected in the repository (***Note: these need to be short and concise of the general changes that have been made***).

![primer_commit](/manuals/figures/primer_commit.png)

 These steps will be done every time you need to make a change and want to save it. With this you can edit and add files to your repository while keeping track of them.