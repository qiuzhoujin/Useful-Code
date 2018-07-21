#!/usr/local/bin/perl
=xxx
split usage:
split /PATTERN/, EXPR
多个不同的模式，使用"|"连接起来。
=cut

while (<>)
{
    chomp;
    @line = split(/:|,|=/, $_); 
    printf "[%d, %d]\n", $line[1], $line[3];
}
