GITBRANCH=$1

gitCheckBranch () {
 echo '开始执行'
 echo ${GITBRANCH}

 git fetch --all
 git checkout ${GITBRANCH}
 git remote -v

 REMOTEVERSION=npm view | grep latest | awk -F: '{ print $2 }'
 PACKAGEVERSION=npm pkg get version | sed ’s/[“,]//g’
 echo 当前npm包 最新版本为 ${REMOTEVERSION}
 echo 当前npm包 本地版本为 ${PACKAGEVERSION}
}

release() {
    npm release-it --ci
}

gitCheckBranch