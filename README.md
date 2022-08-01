# Wow addon .settings repo

This is to synchronize all files that are used in EVERY addon and never change for just a single addon.
like LICENSE, actions, etc.
Add any new addon to the action to ensure its kept synchronized.

To get list of all repos open terminal and type
```gh repo list >> current-repos.md```
this will provide an unsorted list of ALL repo's Owned by N6REJ
remove all non-addon repos and use notepad++ to sort listing *optional*

<hr>

### Steps to create an addon

1. create git repo for addon
2. create addon in [wago](https://https://addons.wago.io/developers)
3. get addon id from dashboard
4. put ```## X-Wago-ID: xx``` where xx = id # into .toc
5. create addon in [curseforge](https://authors.curseforge.com/dashboard))
6. get addon id from project page in curseforge
7. put ```## X-Curse-Project-ID:``` xx where xx = id# into .toc
8. go to repo settings and create the following Secrets -> Actions

   - ```GH_PAT```
   - ```WAGO_API_TOKEN```
   - ```CF_API_KEY```

9. In repo create webhook.  Info is found in "github" section of wago settings.
<img width="449" alt="image" src="https://user-images.githubusercontent.com/1850089/173345492-e9c57245-209b-4bbd-ab88-058a4d9f9e28.png">
 

     *Use values from top of key file for key values*
10. open .wow-settings repo in phpstorm & put repo url into sync.yml repo list
11. Commit & push
12. open addon repo in phpstorm
13. pull
14. make sure .packager/ and .github have been synced with the settings repo https://github.com/N6REJ/.wow-settings
    *Both should have "release.yml" in workflows*
15. Write addon, commit, & push
16. create tag using yyyy.mm.dd versioning
17. push
18. verify action was run and files were pushed to wago & curseforge
19. open curseforge "manage projects" and put in git repo info.
20. verify all settings and file data matches addon repo.
21. open wago "settings" and sync everything from repo.
22. check both dashboards and verify file\(s\) exist.
