# GitHub User Manual 
## This Manual works for both macOS and Windows 

GitHub is a cloud-based code hosting platform that allows the management of Git repositories. It facilitates collaboration between developers, providing tools for version control, project management and code review.

## Creating an account on **GITHUB**

1. Go to https://github.com

2. Click on "Sign up"

3. Complete the form with your username, email and password.

4. Verify your account using the email sent by GitHub.

**Note: If you use Git bash it's important that you put the same data in your GitHub account as the email so everything can be synchronized**

## Installation

GitHub doesn't requiere installation, as it's a web-based platform. However, you can install tools to interact with GitHub from your computer, such as:

1. Git (needed to use GitHub with the terminal)
Download it from https://git-scm.com/
Verify the installation with

git --version 

![git_version]

2. GitHub Desktop
Download it from https://desktop.github.com/
(allows you to manae repositories without using commands)

3. GitHub authentication from the terminal 
Generate a personal access token at https://github.com/settings/tokens if you use **https**
Use **ssh-keygen** to create an **SSH key** and add it at https://github.com/settings/keys, if you prefer **SSH authentication** 

## GitHub Execution 

### CREATING AND MANAGING REPOSITORIES 

### Creating a repository on GitHub

**Note:There are two ways to create a repository, the first way is from GitHub and the second way is from terminal**

## From GitHub 

1. Log in to GitHub

2. Click the "+" button and select "new repository"

3. Type a name for the repository and choose whether it will be public or private

4. Click on "create repository"

**Data you must provide:**
Repository name (example:my_project)
Description (optional, but recommended)

-Visibility:
Public (visible for everyone)
Private (only accessible to you and collaborators)

- **Optionals:**

README.md: Explains what the repository is about.

.gitignore: Files that Git should ignore.

License: License type of your code (MIT, GLP, etc.).

## From terminal 

1. ### Configure Git with GitHub 
- Configure the user name 

git config --global user.name "Your Name"

-Configure the email 

git config --global user.email "your email"

![git_user]

2. #### Linking your local repository with GitHub 

You need to create a folder on your PC and access it using the commands:

mkdir my_proyect   <--- *Example of how to write the name of your folder*
cd my_proyect

**mkdir: Used to create directories (folders).**
**cd:Used in the terminal to change directories**

#### Start git in the folder
We start creating the repository with the command:
git init 

**git init: A command that initializes a new Git repository in a folder**

#### Add a README.md file (optional)
We will use the command:
echo "my_project" < README.md 

**echo with "<":If you use ">" you create a file and write to it.
*Note: If the file is already exists, its content will be replaced*

#### Add the files to the repository 
git add .
git commit -m "my first commit"  <--- *Ejemplo of how to write a commit*

**git add .: Used to add all files and changes to the staging area before making a commit**
**git commit -m: Saves the changes to the repository history with a descriptive message**

3. #### Upload the project to GitHub

- Copy the repository URL to GitHub 

- Add the remote repository using the command:

git remote add origin "https://github.com/user/my_proyect.git"  <--*Example of how to put the link but its important to put it without the quotes*

-Upload the files

git branch -M main 
git push -u origin main 

**git remote add origen:Used to link a local repository to a remote repository such as GitHub**
**git branch -M main: Used to rename the current branch to "main"and set it as the principal branch of the repository**
**git push -u origin main: Used to upload changes from the local repository to remote repository (such as GitHub) and set the main branch for future "push" and "pull"**

4. ### Cloning an existing repository 

To work on an existing repository we must go to it and extract the code 

![git_clone]

5. ### Updating and maintenance 
- Upload changes 
git add .
git commit -m "Description of the change"
git push origin main 

-Donwload changes from GitHub
git pull origin main 

6. #### Download changes from GitHub 

- If you work with other contributors, you can download the most recent changes with the command:
git pull origin main 

7. #### Working with branches on GitHub 

- Create a new branch using the commands:
git branch new-branch 
git checkout new-branch 
git checkout -bnew-branch 

- Upload a new branch to GitHub 
git push -u origin new branch 

- Merge a branch with a *main*
git checkout main
git merge new-branch 
git push orgin main 

### Working as a team with GitHub

Collaborating on a repository 
If you work in a team, you can:
- **Create a "Fork"** Copy a repository to your account 
- **Clone the repository** and make changes on your machine 
- **Make a pull request** to request the merge of your changes 

#### How to create a pull request
1. Upload your changes to a new branch on GitHub
2. Go to the repository on GitHub and clik "pull request"
3. Select your branch and click on "create pull request"
4. Write a description and submit it for review

### Manage Issues and Documentation 
---> Create an Issue 
Issues allow you to report bugs or request new features:
1. Go to the issues tab on GitHub 
2. Click on "New Issue"
3. Describe the issue or suggestion 
4. Assign tags and responsable persons 

### Removing a repository on GitHub 

1. Go to **Settings** in GitHub 
2. Scroll down to the **Danger Zone** section 
3. Click **Delete this repository**