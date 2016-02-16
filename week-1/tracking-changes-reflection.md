## How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes developers' lives easier by allowing developers to see all versions of a file leading up to the most recent one. By tracking and adding changes, developers can revert back to a previous version of a file in case of an error, and trace back the steps that were taken before the error occurred.
## What is a commit?
A commit is a "save point" for a file. Each commit denotes a different version of the same file.
## What are the best practices for commit messages?
Commit messages should be detailed and describe thoroughly each change that was made since the last commit. They should also be written in the imperative, like commands.
## What does the HEAD^ argument mean?
The HEAD^ argument refers to the commit immediately preceding the commit you are currently working on.
## What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages of a git change are staged, committed, and merged. To stage a file, you use the git add command. To commit a file, you use the git commit command, adding a commit message. To merge the file, you pull those committed changes from your remote repository, then merge the changes into your feature branch, and push your feature branch to your remote fork.
## Write a handy cheatsheet of the commands you need to commit your changes.
git checkout -b [branch-name]: create a new branch off the master, and navigate to it
git add [filename]: stages [filename] for committing
git commit -m "commit message": commits the staged files
## What is a pull request and how do you create and merge one?
A pull request is a way to merge code from a feature branch into the master branch. You create a pull request by pushing your committed changes to GitHub, then selecting the "compare & pull request" button, filling in the title and description of the changes made, and clicking the "create pull request" button.
## Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because it is a best practice to keep the master "clean." When working with teams, you want to allow each team member to work separately in their own feature branch, rather than making their changes directly to the master, which can be confusing when there are multiple users working on the same code.