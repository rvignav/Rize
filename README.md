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
4. `git checkout <branch-name>`
5. `cd CACApp`
6. `pod install`
7. Download Video SDK (iOS v3.0.1.1) from https://docs.agora.io/en/Agora%20Platform/downloads
8. Add Agora_Native_SDK_for_iOS_Full/libs/AgoraRtcKit.framework to the Frameworks folder in Xcode
9. Go to TARGETS > CACApp > General > Pods and Frameworks and change the dropdown option next to AgoraRtcKit.framework to "Embed & Sign"
10. Write code
11. Test code on an iPhone connected to the computer
11. `git add .`
12. `git commit -m "commit-name"`
13. `git push --set-upstream origin <branch-name>`
14. Manually create a PR (pull request) on GitHub
15. Assign all other collaborators to review
16. Once PR is reviewed and conflicts removed, merge with master
