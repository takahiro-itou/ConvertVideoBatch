
set  video_common= -c:v wmv2  -s 480x270  -aspect 16:9
set  audio_common= -c:a wmav2  -ac 2  -af volume=6dB

set  video_opts=%video_common%  %VIDEO_CONFIG%
set  audio_opts=%audio_common%  %AUDIO_CONFIG%
set  other_opts=%MAP_CONFIG%    %OTHER_CONFIG%
