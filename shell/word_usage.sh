# 统计指定文件中所使用的单词个数，并按使用频率由高到底显示。
# 频率一样的单词，按字母顺序显示。

tr -cs '0-9a-zA-Z' '[\n*]' < $1 | # 将单词转换成一行一个以使用gawk来统计
gawk '
	{count[$1]++}
END {for (item in count) printf "%-15s%3s\n", item, count[item]}' |
sort -k2nr -k1f
