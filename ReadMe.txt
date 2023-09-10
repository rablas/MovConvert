Use Case: I love taking pictures and making movies with iphone. So does my wife. One of the results, we finish up with a lot of gigabytes of .MOV films, that is more than we can or want to store on our own HD. So my first idea was to use Handbrake to convert the .MOV to a more compact format (I like using "Email 25 MB 3 Minutes 720p30" preset but you can chose another if you like). Handbrake does a wonderful job but at the end it looks like at least some of the tags of the original .MOV were not transfered to the newly created .MP4. Among these, date and gps coordinates, what bothers me as the compact film would be out of the correct date on my cloud photo base (I use google photos). So I created this script in order to copy the tags from the orginal movie to the compact one. I also arranged other tags that seem to work OK for my Photoshop Elements Organizer.

It was designed on the way it works for me, I can't guarantee it will work for all users. I Absolutely give no warranty on the results of this script. Use it for your own decision, risk and will. Make copies before playing with it.

It will process all .MOV on "input" folder and create the results - compacted .MP4 on "res" folder.

I chosed "Email 25 MB 3 Minutes 720p30" preset on HandbrakeCLI, so it generates .mp4 files. Please notice that if you filmed in HD, 4K or higher resolutions, it will reduce the resolution on the newly created .MP4 to 720p. You may edit the script to use other handbrake presets, if you prefer.

Instructions:
1. Create a folder (choose the name you prefer). I will refer to this folder as main folder.
2. On the main folder, create two other folders: "res" and "input"
3. Install the applications on the main folder:
	a. HandbrakeCLI: https://handbrake.fr/downloads2.php
	b. ExifTool: https://exiftool.org/
	c. PrintBig: it is not needed to downlaod from anywhere as it is included. However, your antivirus may not like it. I suggest you run it a few times on command line using, for example "PrintBig 2 11", for testing it.
4. Rename exiftool(-k).exe to exiftool.exe
5. Copy the .mov files you want to process to "input" folder
6. Execute the script - two clicks on MovConvert.bat
7. After execution is done, results are on "res" folder. Select only .MP4, disregard the other files.

Remarks: I took the decision of not deleting the backput files created by ExifTool. I like to check the results.

CleanAll.bat is used to clear all the contents of "res" and "input" folders.
