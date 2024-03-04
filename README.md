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

### Naming conventions

All names if they are made up from multiple words will be seperated with a - instead of a space. 

<b>Scenes</b><br>
A scene that you are using to test features should be named like this {name}-testing-{feature-name}. For main scenes (scenes that are going to be in the game) it should be {name}-main and for name you will fill in a description that makes the scene easily recognizable. 

<b>Scripts</b><br>
We will follow the official C# naming conventions as stated [here](https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/identifier-names#naming-conventions)

A script should be named with a one or two word description of the feature followed by -script so for a movement controller it should be movement-controller-script.cs , this way anyone will understand what it does without having to look into the code itself.

<b>Prefabs</b><br>
Prefabs should be named the same way as scrips, make it easy to understand with as few words as possible. 

### File structure: 

<b>Scenes</b><br>
Within each team folder, when you are testing/making new features. Please create your own scene. Name this for example "Iwan test scene". This is to let everyone know this is your scene and you can do whatever you want with this scene without causing conflicts elsewhere. 

For the main scene, changes should be made by one person at a time. Only one team should be able to work on the main scene at a time.

For main scenes these will be placed outside of the team folders, keep in mind only one person/team can work on these scenes at once. 

<b>Scripts</b><br>
For the scripts for each team they will have a scripts folder, in this folder you can create new folders based on the functionality of the group of scripts. For example, Movement functionality should be in scripts/movement/movement-script.cs this way each person can work on their own functionality without running into merge conflicts. If multiple people need to work within the same script, make sure you only add new code and try to avoid changing existing code at all cost or make sure to keep in close touch with the other person who will be working within the same file. 

<b>Prefabs</b><br>
Everything you make should be turned into a prefab. For example, if you make a character and it has character controllers on him you will be able to drag and drop this character prefab in the scene without hindering the people who are changing the character prefab itself. In essense it is a reference to this prefab instead of the actual character itself. 

Prefabs should be in each of the teams their prefabs folder. Complying with the naming conventions mentioned above. 

If you have any other ideas of what should be here you can @Iwan in the discord. 
