#/bin/bash
#Assume we are exporting sibling files
EXPORT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Arg1 is a git commitsh
GIT=${1:-HEAD} 

cd $EXPORT_DIR;
git archive --format="tar" "$GIT" > build/export.tar
