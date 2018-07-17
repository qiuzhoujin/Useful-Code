#!/usr/local/bin/perl
# 演示perl如何处理二进制文件。
# 关于unpack第一个参数的简要说明,可以参考"perldoc -f pack";详细说明,可以参考"perldoc perlpacktut"。
# read的参数一为文件句柄,第二个为存储变量,第三个为读取长度,单位为字节;返回值为实际读取的长度,单位为字节。
# substr的参数一为字符串,参数二为偏移,单位为字节,参数三为长度,单位也为字节。

# $ARGV[0]表示perl脚本后的第一个参数,而不是perl脚本名。这一点与C及bash不同。
open(in, $ARGV[0]) or die "Cannot open file '$ARGV[0]': $!\n";
binmode(in);

$framelen = 32;
$line = "";
$str = "";
$ushort_data = 0;  # unsigned short型数据(两个字节)
$uint_data = 0;    # unsigned int型数据(四个字节)

while (read(in, $line, $framelen) == $framelen)
{
	$str = unpack('H*', substr($line, 0, 8));
	print "str: $str\n";
    # H返回的字符是十六进制,转换成数值时需要用到hex。
	$ushort_data = hex(unpack('H*', substr($line, 8, 2)));
	printf "ushort_data:0x%04X\n", $ushort_data;
    # N返回的是大端的32位整型,转换成数据时应该用到int。
	$uint_data = int(unpack('N', substr($line, 10, 4)));
	printf "uint_data:0x%08X\n", $uint_data;
	print "------\n\n";
}

close(in);
