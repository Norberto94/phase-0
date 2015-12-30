How does tracking and adding changes make developers' lives easier?

Tracking changes makes developers' lives easier because it allows them to keep track not only of milestones in their work, but also of the thinking behind the change and the resources used to make the change. This makes understanding someone else's work much easier.

What is a commit?

A commit is a "snapshot" of a file. It is a save file of your work at a particular stage, so it can be thought of as a milestone of your work.

What are the best practices for commit messages?

Commit messages should be specific and go into a fair degree of detail. They should also include information on the resources used to make the changes. And they are ideally written using the imperative form. 

What does the HEAD^ argument mean?

HEAD refers to the commit you are currently on, HEAD^ is the last commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
 
 The first stage is to track a change, once a change is tracked we are able to commit it. After a change has benn commited it is ready to be pushed into the origin. So the three stages are tracked -> commited -> pushed. We track a file with the commands "git add" + filename. We commit with "git commit" + filename and finally we push with "git push origin" + filename.

Write a handy cheatsheet of the commands you need to commit your changes?

git add (tracks file)
git pull (to check if you're up to date with the remote repo)
git commit

What is a pull request and how do you create and merge one?

A pull request is a petition to merge the changes made in a fork into the orginal. Afer you have pushed a commit a green bar with the text "compare and pull request" will appear on Github. Click it and make sure the base work and branch to be merged are compatible and indeed what you desire to do. Add comments and a title and when you are done click on "create pull request" on the bottom. Now  simply click on "merge pull request". Confirm one last time that you are sure you want to follow through with the merge by clicking "confirm merge". You might want to delete the newly merged branch to keep your repository clean from unecessary bulk.

Why are pull requests preferred when working with teams?

They allow us to review and revert our code in case something goes wrong. We can also use pull requests to have someone else check the changes we want to merge with the origin, minimizing the chance that bugs slip by. 