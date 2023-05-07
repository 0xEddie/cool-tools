Download a video with sections using yt-dlp and save each section as a unique file:

```sh
yt-dlp --output 'output/%(title)s - %(chapter_number)s - %(chapter)s.%(ext)s' --write-description --write-info-json --write-annotations --write-sub --all-subs --embed-subs --embed-thumbnail --add-metadata --merge-output-format mkv <VIDEO_URL>
```

This command downloads the video from <VIDEO_URL> and saves it in the output directory, with each section as a separate file. 
The output file names will contain the video's title, chapter number, and chapter name.

Flag descriptions:

--output: specifies the output filename format. In this case, we're using a format that includes the video's title, chapter number, chapter name, and file extension.
--write-description: downloads the video description and saves it in a separate file.
--write-info-json: downloads the video metadata and saves it in a separate JSON file.
--write-annotations: downloads any video annotations and saves them in a separate file.
--write-sub: downloads the video subtitles and saves them in a separate file.
--all-subs: downloads all available subtitles.
--embed-subs: embeds the subtitles in the video file.
--embed-thumbnail: embeds the video thumbnail in the video file.
--add-metadata: adds video metadata to the video file.
--merge-output-format mkv: merges all the downloaded files into a single MKV file.

