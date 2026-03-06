#!/usr/bin/perl

use strict;
use warnings;

# Check if file path argument is provided
if (scalar(@ARGV) < 2) {
    print "Usage: $0 <FILE_PATH> <TRACK_NUMBER>\n";
    exit 1;
}

my $file_path = $ARGV[0];
my $track_number = $ARGV[1];

my @ffmpeg_cmd = (
    'ffmpeg',
    '-i', $file_path,
    '-codec', 'copy',
    '-f', 'segment',
    '-segment_list', "playlist_${track_number}.m3u8",
    '-segment_time', '60',
    "out_${track_number}_%03d.ts"
);

print join(' ', @ffmpeg_cmd);
print "\n";

system(@ffmpeg_cmd);
