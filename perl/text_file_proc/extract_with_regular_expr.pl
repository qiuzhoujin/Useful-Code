#!/usr/local/bin/perl
=xxx
Some Perl regular expression metacharacters
^(caret)       Anchors a regular expression to the beginning of a line
$(dollar sign) Anchors a regular expression to the end of a line
(...)          Bracket a regular expression
.(period)      Any single character except NEWLINE
\\             A backslash
\b             A word boundary (zero-width match)
\B             A nonword boundary ([^\b])
\d             A single decimal digit ([0-9])
\D             A single nondecimal digit ([^[0-9] or [^\b])
\s (lowercase) A single whitespace character SPACE, NEWLINE, RETURN, TAB, FORMFEED
\S (uppercase) A single nonwhitespace character ([^\s])
\w (lowercase) A single word character (a letter or digit; [a-zA-Z0-9])
\W (uppercase) A single nonword character ([^\w])
(Refer to "perldoc perlre" for more infomation.)
=cut

while (<>)
{
    chomp;
    $line = $_; 
    $line =~ s/first: (\d*), second = (\d*)/[$1,$2]/;
    print $line , "\n";
}
