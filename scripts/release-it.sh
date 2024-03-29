GITBRANCH=$1

getMessageInfo () {
 echo '开始执行'
 echo ${GITBRANCH}

 git fetch --all
 git checkout ${GITBRANCH}
 git remote -v
 git log
}

getMessageInfo