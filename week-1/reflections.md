## 1.1 Think About Time Reflection

For this assignment I learned about the techniques of meditation, mindfulness, the Pomodoro Technique, the Fogg Method, and timeboxing. All of these can be used to make the process of moving through Phase 0 on one's own manageable and less overwhelming. I was especially intrigued by the Pomodoro Technique, which involves breaking down time spent working on necessary tasks into 25-minute chunks, each of which is followed by a 5-minute break. It is a form of timeboxing, which describes the general process of setting a predetermined time limit for working on a necessary task, then stopping at the end of that period and reflecting on what was accomplished. In Phase 0, this will prove useful because I expect that I will encounter many challenging tasks over these next few weeks, some of which will prove frustrating. I can use timeboxing to overcome those frustration points by setting a time limit for which I will work on the task and then insisting on a hard stop at the end of that time limit, rather than continuing to spend more and more time and energy on a problem whose solution may not be immediately evident, which would only serve to frustrate me further.

My current time management strategies are informal, but they usually involve setting aside specific time after my day job to work on coding tasks, with goals usually in terms of things to check off on a to-do list ("complete two challenges") rather than time-delimited goals ("work on coding stuff for two hours"). I don't think this system is working all that well for me, as I often reach frustration points that cause me to agonize and feel helpless, and then I may lose my motivation to continue and start allowing myself to get distracted by TV or the internet. Sometimes I'll try to set up behavioral rewards ("complete these two challenges and you can go out for pizza") but it's hard to stick to them, especially when the frustration level reaches a tipping point. I will consider adopting a strategy like Pomodoro, combined with a little bit of mindfulness meditation, to help me get through Phase 0; my broader time-management strategy for Phase 0 includes breaking down the week's tasks into smaller, Pomodoro-friendly chunks and eliminating distractions by working in cafes (or the park, when the weather improves) rather than my room.

## 1.2 The Command Line Reflection

1) The shell is the user interface that allows you to enter commands in an operating system. Bash is the command-line interface (shell) for the Unix operating system.

2) The most challenging thing for me in going through this material was keeping all the different commands straight. All the memorization was definitely a barrier for me in learning how to use the command line in the past.

3) I was able to successfully use all of the commands in the command-line crash course.

4) In my opinion, the most important commands and arguments to know are the pipe (|) command and the select-string/grep command. They are useful in writing code efficiently because the pipe allows you to chain together lots of commands in more complex applications, and the select-string command allows you to easily find strings of text in your code without having to dig through the entire file.

5)

pwd prints the working (current) directory to the console.

ls lists the files in the working directory.

mv moves/renames a file.

cd changes the current directory.

../ runs a file.

touch creates a new file.

mkdir creates a new directory.

less displays the contents of a file in page-by-page format.

rmdir removes a directory.

rm removes a file.

help brings up the manual for a command.

## 1.4 Forking and Cloning Reflection

Instructions on how to create, fork, and clone a repo:

Creating: Navigate to your GitHub profile, select "new repository" from the + menu. Name your repository, select the appropriate options (access and license type), and click the "Create a Repository" button.

Forking: Navigate to the repository you want to fork, then click the "Fork" button and select the GitHub account you want to fork the repository into. Do not fork repositories into other repositories.

Cloning: Make sure you are in the correct directory using the pwd command (see above about not forking repositories into other repositories!). Navigate to your forked repository and copy the URL listed under SSH or HTTPS. Then at the command line type git clone <PASTE URL NAME HERE>. You can then run the ls command and see your new repository in the directory.

I would choose to fork rather than create a new repository if I wanted to work on that repository separately and still retain a syncable link back to the original repository. With a fork I can use GitHub to track changes and initiate pull requests to sync my changes back to the original repository (with the approval of the original repository's creator/owner).