#This script is to create an oraganization and repository in Github
#!/bin/bash
echo "this if for creating repo through API"
if [ $# -lt 2 ]
then
echo "usage $0 reponame orgname"
else
echo "please provide PAT"
read -s PAT
reponame=$1
echo "$reponame"
orgname=$2
curl -H "Authorization: token $PAT" -d "{\"name\":\"$reponame\"}" https://api.github.com/orgs/$orgname/repos
echo "repo $reponame has been created"
fi
