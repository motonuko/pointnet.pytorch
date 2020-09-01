#https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself

#自分への絶対パス
#SCRIPT=`readlink \"$0\"`
#SCRIPT=`realpath $0`
#
# 自分がいるディレクトリへの絶対パス
#SCRIPT="$(abs_dirname "$0")"
#SCRIPTPATH=`dirname $SCRIPT`
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"



# 画面にパスを表示する
echo $SCRIPTPATH

g++ -std=c++11 $SCRIPTPATH/../utils/render_balls_so.cpp -o $SCRIPTPATH/../utils/render_balls_so.so -shared -fPIC -O2 -D_GLIBCXX_USE_CXX11_ABI=0
