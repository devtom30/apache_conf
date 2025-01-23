ffmpeg -i "<FILE_PATH>" -map 0 \
-codec:a mp3 \
-f ssegment -segment_list playlist.m3u8 \
-segment_list_flags +live -segment_time 60 \
out%03d.ts
