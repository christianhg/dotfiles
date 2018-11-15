git clone https://gitlab.com/skybert/my-little-friends.git ~/code/my-little-friends

ln -s ~/code/my-little-friends/bash/log-work-on-jira-issue /usr/local/bin/log-work-on-jira-issue

touch ~/.log-work-on-jira-issue.conf

# JSON processor required by log-work-on-jira-issue
brew install jq
