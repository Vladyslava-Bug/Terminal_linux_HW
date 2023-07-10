#!/bin/bash
#1.Go to the folder
cd dir_2 
#2.Create 3 folders
mkdir folder1 folder2 folder3 
#3.Go to any folder
cd folder1 
#4.Create 5 files (3 txt, 2 json)
touch /d/dir_1/dir_2/folder1/{txt1.txt,txt2.txt,txt3.txt,json1.json,json2.json} 
#5. Create 3 folders
mkdir A B C 
#6.Show the list folder contents
ls 
#7.Move any 2 files you created to any other folder
mv /d/dir_1/dir_2/folder1/{txt2.txt,json2.json} /d/dir_1/dir_2/folder1/B 
