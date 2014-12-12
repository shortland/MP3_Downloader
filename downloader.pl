#!/usr/bin/perl

# MP3 Downloader - Public vs. 1.0

print "Mass or Single. \n Mass = 0 \n Single = 1 \n (single is suggested)\n >";
chomp ($choice = <STDIN>);

if($choice =~ "0"){
# Separate each URL with a single space, no commas or quotes.
@urls = qw(http://mp3_url.mp3 http://mp3_url.mp3 http://mp3_url.mp3 http://mp3_url.mp3);
foreach $url (@urls) {
print "\n Downloading...";
$result = `curl -s "$url"`;
print "\n Download Complete.";
@chars = ("A".."Z", "1".."9");
$string;
$string .= $chars[rand @chars] for 1..5;
$name = $string;
open(my $fh, '>', $name.".mp3");
print $fh $result;
close $fh;
print "\n Saved $name \n";
}
exit;
}
if($choice =~ "1"){
print "\n URL of MP3 song to download: ";
chomp ($url = <STDIN>);
print "\n Downloading...";
$result = `curl -s "$url"`;
print "\n Download Complete.";
@chars = ("A".."Z", "1".."9");
$string;
$string .= $chars[rand @chars] for 1..5;
$name = $string;
open(my $fh, '>', $name.".mp3");
print $fh $result;
close $fh;
print "\n Saved $name \n\n";
} else {
print "\n Choose a valid choice \n";
exit;
}
