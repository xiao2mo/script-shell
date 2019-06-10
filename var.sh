#1.用` `,（尖号）把命令括起来，然后赋值给变量

dir=`pwd`
echo $dir

#2.采用   变量=$(pwd)

dir=$(pwd)
echo $dir

