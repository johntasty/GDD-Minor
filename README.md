# GDD-Minor
GDD Game 

Please read this document to prevent any conflicts with working in GitHub.



## Setup

### Install Git

Download [GitHub Desktop](https://desktop.github.com/)

Log in to your GitHub account, and clone this repository.

After you have cloned this repository you should have a location where you downloaded it.

This will be required for the next step.


### Install Unity
Download and install [Unity](https://unity.com/download).

Navigate to the [Unity archives](https://unity.com/releases/editor/archive), And install the version `2021.3.34`

Once you have installed the correct version open the Git clone it should look something like this `C:\..\GDD-Minor\GDD Minor`

### Build the project
Once you have managed to get the Unity project open try and see if the project builds by clicking the green play button.

## How-to GitHub
### Commit/Push
Read through [this](https://docs.github.com/en/desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project-in-github-desktop) document, for the basic explanation to use GitHub desktop.

### Branching
GitHub uses something called branches, it is a way to seperate code/changes to the project in a way that allows people to work in their own space. And merge this together on a later date. This is done to make sure that all the different changes can be merged together in the least headache inducing way. 

If you want to create for example a new feature in the project you would start by creating a new branch. If you work for the Lilac team you would first select the lilac branch in GitHub desktop. Once you have selected that branch you will do a pull, this will make sure you are using the most recent version of this branch. Once that is done you will click on create new branch. This branch should have a clear name explaining what feature this will be adding. You can now start creating this feature in unity, make sure to commit to your branch often so you can go "back in time" if something goes wrong. 

### PR

Once you are done with your feature in your own branch, you can reach out to your tech senior in your team who will be able to create a pull request for you and check if the quality of the code/feature is up to standard. Once he approves it will be merged into your teams branch (hopefully without issues!).

### Pull
To make sure your codebase/project is up to date always make sure to click fetch once you enter a branch that you don't work on alone.

## Preventing issues
### :warning: Working within unity
Setting up file system to avoid conflicts.
-Only work within your team file.
-Anything you want to add to the project, create a file with your name under the respective file in your team and only work within that file.
-Scenes that are not under your name in your team file should not be touched on.
Naming convention TODO.
