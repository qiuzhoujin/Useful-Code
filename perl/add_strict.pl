# 添加于2018-2-10
# 来自于《程序员修炼之道》的习题12。
# 用于给指定目录中的pl文件添加"use strict;"(前提是没有这句话)

my $dir = shift or die "Missing directory";
for my $ file (glob("$dir/*.pl")) {
	open(IP, "$file") or die "Opening $file: $! ";
	undef $/;         # Turn off input record separator --
	my $content = <IP>;  # read whole file as one string.
	close(IP);
	if ($content !~ /^use strict/m) {
		rename $file, "$file.bak" or die "Renaming $file: $!";
		open(OP, ">$file") or die "Creating $file: $!";
		# Put 'use strict" on first line that
		# doesn't start '#'
		$content =~ s/^(?!#)/\n$1use strict;\n\n/m;
		print OP $content;
		close (OP);
		print "Updated $file\n";
	}
	else {
		print "$file already strict\n";
	}
}
