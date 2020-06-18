# CongressionalAppChallenge
Source code for submission to the Congressional App Challenge 2020.

First install dependencies via

    pip install -r requirements.txt
    
Then run the summarization algorithm via

    python summarize.py

**Git Workflow**
1. `git clone https://github.com/rvignav/CongressionalAppChallenge.git`
2. `cd CongressionalAppChallenge`
3. `pip install -r requirements.txt`
4. `cd CACApp`
5. `pod install`
6. `git checkout <branch-name>`
7. Write code
8. `git add .`
9. `git commit -m "commit-name"`
10. `git push --set-upstream origin <branch-name>`
11. Manually create a PR (pull request) on GitHub
12. Assign all other collaborators to review
13. Once PR is reviewed and conflicts removed, merge with master
