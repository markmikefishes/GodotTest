hi this is william and I am writing text into the file to that it is visible to others when I push this commit

#When you are trying to push there are 3 main steps:

git add .
which '.' mean the current folder you are currently in. I recomend you are at the top folder of your project when doing this.

git commit -m "message in commit"
commits the added file to a save unlike add which just specifies what to commit

git push
there are many variation on git push like 'git push -u origin main' but unless you are setting up a repo

#There are also the ways to update your local git to the repository(github server)

git pull
When using pull you might run into a merge error if you have edited the same files as someone else in the repository
