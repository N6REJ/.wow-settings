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

     *Use values from top of key file for key values*
9. open .wow-settings repo in phpstorm & put repo url into sync.yml repo list
10. Commit & push
11. open addon repo in phpstorm
12. pull
13. make sure .packager/ and .github have been synced with the settings repo https://github.com/N6REJ/.wow-settings
    *Both should have "release.yml" in workflows*
14. Write addon, commit, & push
15. create tag using yyyy.mm.dd versioning
16. push
17. verify action was run and files were pushed to wago & curseforge
18. open curseforge "manage projects" and put in git repo info.
19. verify all settings and file data matches addon repo.
20. open wago "settings" and sync everything from repo.
21. check both dashboards and verify file\(s\) exist.
