##########################################################################
# File Name: array.sh
# Author: Cao Shengming
# mail: caoshengming@trio.ai
# Created Time: Wed Feb 13 16:05:56 2019
#########################################################################
declare -a scores
scores[0]='90'
scores[1]='99'
scores[2]='98'
scores[3]='95'

echo ${scores[0]}
echo ${scores[1]}
echo ${scores[2]}
echo ${scores[3]}
echo ${scores[*]}  #flat 
echo ${scores[@]}  #flat 
echo "the number of elements in this arrays is ${#scores[@]}"

#iteration
echo "-------iteration test----------"
for score in ${scores[@]}
do
	echo $score
done

#delete
echo "-------delete test----------"
names=(xiaoming Dylan Dylan Melison)
names2=(Amy Daming)
echo ${names[@]}
unset names[2]
echo ${names[*]}

#join
echo "------join test----------"
names=(${names[@]} ${names2[@]})
echo ${names[@]}
