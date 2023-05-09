# Common commands to modify git commit date

## Alter author and commit dates of current staged commit
```sh
cdate="2023-05-14T08:04:27"
GIT_COMMITTER_DATE=$cdate git commit -m "." --date $cdate
```

## Alter author date of last commit without editing commit message
```sh
git commit --amend --no-edit --date "Thu 13 Apr 2023 20:19:19 MST"
```

## Store the authored date of a git commit in a variable using the command:
```sh
COMMIT_DATE=$(git log -1 --format=%ad)
```

## Update committer date and author date during git rebase:
```sh
GIT_COMMITTER_DATE="Mon 20 Aug 2018 20:19:19 BST" git commit --amend --no-edit --date "Mon 20 Aug 2018 20:19:19 BST"
```

