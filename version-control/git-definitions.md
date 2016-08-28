# Git Definitions

##Instructions:##
Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a workflow that allows users to collaborate on a project in an organized way, which is especially important with complex software projects (and most are complex).  Users can work on features separately, then add their work to the "main" project.  They can also update the code context of their feature at any point.  Version control marks changes made to a project on a timeline, allowing users to revert to previous versions easily.  This makes it much easier to identify the source of bugs during development.

* What is a branch and why would you use one?
A branch is a copy of the project code that is separated from the original copy.  There can be both remote branches of the remote code, as well as local branches of the local code.  A branch of the project code can be modified without changing the project code, although it is intended to be merged with the project code at some point in order to add a feature or make changes.  Branches are used to create breakpoints in code development, allowing for organized and (hopefully) easy to understand revisions to the project as well as allowing for "undoing" unwanted/broken revisions.

* What is a commit? What makes a good commit message?
A commit is a revision that has been "acknowledged" by git as having been added to the branch.  A good commit is articulate and specific.

* What is a merge conflict?
A merge conflict is the exception that occurs when two commits have been merged into the project that modify the same lines of code in a way that confuses git and requires human review (Ex: one commit deletes a line and another commit modifies the line).