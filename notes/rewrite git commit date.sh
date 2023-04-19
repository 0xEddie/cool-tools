# Alter commit date of current commit
git commit --amend --no-edit --date "Thu 13 Apr 2023 20:19:19 MST"

# You can store the authored date of a git commit in a variable using the command:
COMMIT_DATE=$(git log -1 --format=%ad)

# Update committer date and author date during git rebase:
GIT_COMMITTER_DATE="Mon 20 Aug 2018 20:19:19 BST" git commit --amend --no-edit --date "Mon 20 Aug 2018 20:19:19 BST"

for i in {0..12}; do
commit_dt=$(git log -1 --format=%ad)
git commit --amend --reset-author -C HEAD
echo "\n Commit#: ${i}\ton: ${commit_dt}"
GIT_COMMITTER_DATE=$commit_dt git commit --amend --no-edit --date $commit_dt
git rebase --continue
done

i=6
commit_dt=$(git log -1 --format=%ad); git commit --amend --reset-author -C HEAD; echo "${R}\n Commit#: ${i}\ton: ${commit_dt}${NOCOLOR}"; GIT_COMMITTER_DATE=$commit_dt git commit --amend --no-edit --date $commit_dt; i=$((i+1)); git rebase --continue