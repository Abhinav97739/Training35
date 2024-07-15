## Git Project 
### Objective:
We will work on a project involving a simple website. Practice various Git concepts including branching, merging, handling merge conflicts, rebasing, pulling, versioning, and rolling back changes.


### Install Git
Ensure that git is in our system

To check the version of Git 
```bash
git --version
```
### Set Up Git
Configuring Git username and email
```bash
git config --global user.name "XXXX"
git config --global user.email "XXXX.email@example.com"
```
### Create a GitHub Repository
Go to GitHub and create a new repository named website-project.
Clone the repository to our local machine:
```bash
git clone https://github.com/our-username/website-project.git
```

### Initialize the Project:
Navigate to the project directory:
```bash
cd website-project
```

### Create initial project structure:
```bash
mkdir src
touch src/index.html
echo "<!DOCTYPE html><html><head><title>My Website</title></head><body><h1>Welcome to my website!</h1></body></html>" > src/index.html
```
Here's an issue if, you are using vs code then simply paste otherwise using instance or virtual machine then instead of "" use ''.

### Commit and push the initial project structure:
```bash
git add .
git commit -m "Initial commit: Added project structure and index.html"
git push origin main
```
Here's the Point:- Changed the machine,
Shifted from virtual machine to local machine as further commands will work more efficiently in local machine.

## Exercise 1: 
#### Branching and Basic Operations 
Create a New Branch:
```bash
git checkout -b feature/add-about-page
```

Add a New Page:
> Create about.html:
```bash
touch src/about.html
echo "<!DOCTYPE html><html><head><title>About Us</title></head><body><h1>About Us</h1></body></html>" > src/about.html
```

Commit and push changes:
```bash
git add src/about.html
git commit -m "Added about page"
git push origin feature/add-about-page
```

## Exercise 2:
#### Merging and Handling Merge Conflicts
Create Another Branch:
```bash
git checkout main
git checkout -b feature/update-homepage
```

Update the Homepage:

> Modify index.html:
```bash
echo "<p>Updated homepage content</p>" >> src/index.html
```

Commit and push changes:
```bash
git add src/index.html
git commit -m "Updated homepage content"
git push origin feature/update-homepage
```

Create a Merge Conflict:
> Modify index.html on the feature/add-about-page branch:
```bash
git checkout feature/add-about-page
echo "<p>Conflict content</p>" >> src/index.html
git add src/index.html
git commit -m "Added conflicting content to homepage"
git push origin feature/add-about-page
```

> Merge and Resolve Conflict:
Attempt to merge feature/add-about-page into main:
```bash
git checkout main
git merge feature/add-about-page
```

> Resolve the conflict in src/index.html, then:
```bash
git add src/index.html
git commit -m "Resolved merge conflict in homepage"
git push origin main
```

## Exercise 3: 
#### Rebasing 
Rebase a Branch:

Rebase feature/update-homepage onto main:
```bash
git checkout feature/update-homepage
git rebase main
```

Resolve any conflicts that arise during rebase.
> Push the Rebased Branch:
```bash
git push -f origin feature/update-homepage
```

## Exercise 4: 
#### Pulling and Collaboration 
Pull Changes from Remote:

Ensure the main branch is up-to-date:
```bash
git checkout main
git pull origin main
```

Simulate a Collaborator's Change:

Make a change on GitHub directly (e.g., edit index.html).
Pull Collaborator's Changes:
Pull the changes made by the collaborator:
```bash
git pull origin main
```

## Exercise 5: 
#### Versioning and Rollback 
Tagging a Version:

Tag the current commit as v1.0:
```bash
git tag -a v1.0 -m "Version 1.0: Initial release"
git push origin v1.0
```

Make a Change that Needs Reversion:
> Modify index.html:
```bash
echo "<p>Incorrect update</p>" >> src/index.html
git add src/index.html
git commit -m "Incorrect update"
git push origin main
```

Revert to a Previous Version:
> Use git revert to undo the last commit:
```bash
git revert HEAD
git push origin main
```

#### Alternatively, reset to a specific commit (use with caution): because you can't go back to successive commit.
sh

Copy code
```bash
git reset --hard v1.0
git push -f origin main
```

## Extra Activities (But Important)
### Stashing Changes:
Basically stash means if we change something into another branch and want to move to main branch but without commiting the change , github will not allow so there stash comes into the picture.
#### Make some local changes without committing:
```bash
echo "<p>Uncommitted changes</p>" >> src/index.html
```

Stash the changes:
```bash
git stash
```

Apply the stashed changes:
```bash
git stash apply
```

### Viewing Commit History:
Use git log to view commit history:
```bash
git log --oneline
```

### Cherry-Picking Commits:
Create a new branch and cherry-pick a commit from another branch:
```bash
git checkout -b feature/cherry-pick
git cherry-pick <commit-hash>
git push origin feature/cherry-pick
```

### Interactive Rebase:
Use interactive rebase to squash commits:
```bash
git checkout main
git rebase -i HEAD~3
```




## Exercise 2:


### Collaborative Blogging Platform
Objective:
We will work on a project to collaboratively develop a simple blogging platform. We will practice various Git concepts including branching, merging, handling merge conflicts, rebasing, pulling, versioning, rolling back changes, stashing, and cherry-picking commits.


### Create a GitHub Repository:
Go to GitHub and create a new repository named blogging-platform.
> Clone the repository to your local machine:
```bash
git clone https://github.com/your-username/blogging-platform.git
```

Initialize the Project:
> Navigate to the project directory:
```bash
cd blogging-platform
```

Create initial project structure:
```bash
mkdir src
touch src/index.html
echo "<!DOCTYPE html><html><head><title>Blogging Platform</title></head><body><h1>Welcome to the Blogging Platform!</h1></body></html>" > src/index.html
```

Commit and push the initial project structure:
```bash
git add .
git commit -m "Initial commit: Added project structure and index.html"
git push origin main
```


## Exercise 1: 
### Branching and Adding Features 
Create a New Branch for Blog Post Feature:
```bash
git checkout -b feature/add-blog-post
```
Add a Blog Post Page:
> Create blog.html:
```bash
touch src/blog.html
echo "<!DOCTYPE html><html><head><title>Blog Post</title></head><body><h1>My First Blog Post</h1></body></html>" > src/blog.html
```

> Commit and push changes:
```bash
git add src/blog.html
git commit -m "Added blog post page"
git push origin feature/add-blog-post
```


## Exercise 2: 
### Collaborating with Merging and Handling Merge Conflicts
> Create Another Branch for Author Info:
```bash
git checkout main
git checkout -b feature/add-author-info
```

Add Author Info to Blog Page:
> Modify blog.html:
```bash
echo "<p>Author: John Doe</p>" >> src/blog.html
```

> Commit and push changes:
```bash
git add src/blog.html
git commit -m "Added author info to blog post"
git push origin feature/add-author-info
```

#### Create a Merge Conflict:

> Modify blog.html on the feature/add-blog-post branch:
```bash
git checkout feature/add-blog-post
echo "<p>Published on: July 10, 2024</p>" >> src/blog.html
git add src/blog.html
git commit -m "Added publish date to blog post"
git push origin feature/add-blog-post
```

#### Merge and Resolve Conflict:
> Attempt to merge feature/add-blog-post into main:
```bash
git checkout main
git merge feature/add-blog-post
```

#### Resolve the conflict in src/blog.html, then:
```bash
git add src/blog.html
git commit -m "Resolved merge conflict in blog post"
git push origin main
```


## Exercise 3: Rebasing and Feature Enhancement 

#### Rebase a Branch for Comment Feature:
#### Rebase feature/add-author-info onto main:
```bash
git checkout feature/add-author-info
git rebase main
```
- Always use rebash with vs code as it is easy to figure out the conflicts and can be handled with more simplicity.
#### Resolve any conflicts that arise during rebase.
Add Comment Section:
> Modify blog.html to add a comment section:
```bash
echo "<h2>Comments</h2><p>No comments yet.</p>" >> src/blog.html
git add src/blog.html
git commit -m "Added comment section"
git push origin feature/add-author-info
```


## Exercise 4: Pulling and Simulating Collaboration
#### Pull Changes from Remote:
> Ensure the main branch is up-to-date:
```bash
git checkout main
git pull origin main
```

### Simulate a Collaborator's Change:
> Make a change on GitHub directly (e.g., edit blog.html to add a new comment).

- Pull Collaborator's Changes:
- Pull the changes made by the collaborator:
```bash
git pull origin main
```


## Exercise 5: Versioning and Rollback 
### Tagging a Version:
> Tag the current commit as v1.0:
```bash
git tag -a v1.0 -m "Version 1.0: Initial release"
git push origin v1.0
```

#### Make a Change that Needs Reversion:
> Modify blog.html:
```bash
echo "<p>Incorrect comment</p>" >> src/blog.html
git add src/blog.html
git commit -m "Incorrect comment update"
git push origin main
```

#### Revert to a Previous Version:
> Use git revert to undo the last commit:
```bash
git revert HEAD
git push origin main
```

- Alternatively, reset to a specific commit (use with caution): Reason mentioned above 
```bash
git reset --hard v1.0
git push -f origin main
```


## Extra Activities 
#### Stashing Changes:
Make some local changes without committing:
```bash
echo "<p>Uncommitted changes</p>" >> src/blog.html
```
Stash the changes:
```bash
git stash
```
Apply the stashed changes:
```bash
git stash apply
```
- Viewing Commit History:
- Use git log to view commit history:
```bash
git log --oneline
```
### Cherry-Picking Commits:
> Create a new branch and cherry-pick a commit from another branch:
Hash:- Its basically the commit id 
```bash
git checkout -b feature/cherry-pick
git cherry-pick <commit-hash>
git push origin feature/cherry-pick
```
### Interactive Rebase:
- Use interactive rebase to squash commits:
```bash
git checkout main
git rebase -i HEAD~3
```

