# .settings

This is to synchronize all files that are used in EVERY addon and never change per addon.
like LICENSE, actions, etc.
Add any new addon to the action to ensure its kept synchronized.

To get list of all repos open terminal and type
```gh repo list >> current-repos.md```
this will provide an unsorted list of ALL repo's Owned by N6REJ

<hr>


### Steps to create an addon

1. create git repo for addon
3. create addon in [wago](https://https://addons.wago.io/developers)
4. get addon id from dashboard
5. put ```## X-Wago-ID: xx``` where xx = id # into .toc
6. create addon in [curseforge](https://authors.curseforge.com/dashboard))
7. get addon id from project page in curseforge
8. put ```## X-Curse-Project-ID:``` xx where xx = id# into .toc
9. go to repo settings and create the following Secrets -> Actions

   - ```GH_PAT```
   - ```WAGO_API_TOKEN```
   - ```CF_API_KEY```

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
