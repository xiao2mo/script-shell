awk -F \| 'NR==FNR{ a[$2]=$0;next }{print a[$1]"|"$2}' account.txt  address.txt   #注意数组的使用
echo "**********this is the result seperating line*****************"
sort test1.txt test2.txt test2.txt|uniq -u
echo "**********this is the result seperating line*****************"
comm <`(sort test1.txt)` <`(sort test2.txt)`                  #三列分别是A-B  B-A A交B
echo "**********this is the result seperating line*****************"
comm -12 <`(sort test1.txt)` <`(sort test2.txt)`  #-12  表示去掉第1、2列的输出
echo "**********this is the result seperating line*****************"
comm -3 <`(sort test1.txt)` <`(sort test2.txt)` | sed 's/^\t//g'  # 用sed 美化了输出
echo "**********this is the result seperating line*****************"
grep -F -f test1.txt test2.txt|sort|uniq  #grep 求交集
echo "**********this is the result seperating line*****************"
grep -F -v -f test1.txt test2.txt|sort|uniq  #grep 求差集
echo "**********this is the result seperating line*****************"
awk 'NR==FNR{a[$1]=a[$1]+1} NR>FNR{if(a[$1]>=1 && b[$1]<1){print $1;b[$1]=b[$1]+1}}' test1.txt test2.txt
echo "**********this is the result seperating line*****************"



