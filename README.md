# Rize
Source code for the next-gen telehealth platform Rize. Submission code for the Congressional App Challenge 2020.

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
8. Add Agora_Native_SDK_for_iOS_Full/libs/AgoraRtcKit.framework to the Frameworks folder in Xcode (do this in the Xcode IDE)
9. Go to TARGETS > CACApp > General > Pods and Frameworks and change the dropdown option next to AgoraRtcKit.framework to "Embed & Sign"
10. Write code
11. Test code on an iPhone connected to the computer
12. Remove AgoraRtcKit.framework from Frameworks (do this in Finder)
13. `git add .`
14. `git commit -m "commit-name"`
15. `git push --set-upstream origin <branch-name>`
16. Manually create a PR (pull request) on GitHub
17. Assign all other collaborators to review
18. Once PR is reviewed and conflicts removed, merge with master
