NPMTOKEN=$1
ACTIONTOKEN=$2
GITBRANCH=$3

getMessageInfo () {
 echo '开始执行'
 echo ${NPMTOKEN}
 echo ${GITBRANCH}

 git fetch --all
 git checkout ${GITBRANCH}
 git remote -v
}

getMessageInfo