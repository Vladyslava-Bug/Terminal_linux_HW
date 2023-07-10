**1. Create a folder dir_1** 
 ```
mkdir dir_1
```

**2. Open the folder dir_1**
```
cd dir_1
```

**3. Create a folder inner_dir_1**
```
mkdir inner_dir_1
```

**4. Check current working directory**
```
pwd
/d/dir_1
```
 **5. To create an empty text file named "tf_1.txt" while being in the "dir_1" directory**
 ```
touch tf_1.txt
```

**6. Being in the dir_1 folder, use the cat command to create a text file tf_2.txt with the following lines:**
- the first 1
- the second 2
- the third 3
```
cat > tf_2.txt
*write down the text and press Ctrl+D
```

**7. Open the folder inner_dir_1**
```
cd inner_dir_1
```
**8. Use the cat command to make a text file tf_3.txt with any lines**
```
cat > tf_3.txt
line 1
line 2
line 3
fireworks
*write down the text and press Ctrl+D
```
    
**9. Use the cat command to add the line “the sec 2” to the text file tf_3.txt**
```
vim tf_3.txt
*write down updates and press ESC : wq Enter
```

**10. Use the cat command to add the line “the sec 2” to the text file tf_3.txt**
```
cat >> tf_3.txt
*write down the text and press Ctrl+D
```

**11. Use the cat command to add the line “the sec 3" to the text file tf_2.txt**
cat >> tf_2.txt
*write down text and press Ctrl+D
 
**12. Use the cat command to add the line “the SeCoNd 2” to the text file tf_3.txt**
```
cat >> tf_3.txt
*write down text and press Ctrl+D
```
 
**13. Use the cat command to to add the line “the seConD 2” to the text file tf_2.txt**
```
cat >> tf_2.txt
*write down text and press Ctrl+D
```
 
**14. Create a text file tf_4.txt with 15 lines**
```
seq 1 15 | cat>inner_dir_1/tf_4.txt
```

**15. Create a text file tf_5.txt with 13 lines**
```
seq 1 13 | cat>tf_5.txt
```

**16. Show a list of all files in a folder**
```
ls

tf_3.txt  tf_4.txt  tf_5.txt
```

**17. Exit folder inner_dir_1**
```
cd ..
```
**18. Show contents of tf_3.txt file in terminal**
```
cat /d/dir_1/inner_dir_1/tf_3.txt
line 1
line 2
line 3
fireworks
the second 2
the sec 2
the SeCoNd 2
```

**19.Find the path to the file tf_4.txt**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
find -iname tf_4.txt

./inner_dir_1/tf_4.txt
```
*-name - search by file name, when using wildcard patterns, the parameter is enclosed in quotation marks. The -name' option distinguishes between uppercase and lowercase letters; to use search without these distinctions, use the -iname'/ option, which causes the terminal to show the path to the file from the current location.*
 
**20. Clear the tf_4.txt file from the contents without deleting the file itself.**
```
echo -n > /d/dir_1/inner_dir_1/tf_4.txt
```

**21. Find the path to files that have "tf" in their names.**
```
find -name "*tf*"
./inner_dir_1/tf_2.txt
./inner_dir_1/tf_3.txt
./inner_dir_1/tf_4.txt
./tf_1.txt
./tf_2.txt
```

 **22. Find the path to files that have "tf" in the name and letters in any case.**
```
find -iname "*tf*"
./inner_dir_1/tf_2.txt
./inner_dir_1/tf_3.txt
./inner_dir_1/tf_4.txt
./inner_dir_1/tF_5.txt
./tf_1.txt
./tf_2.txt
```

 **23. Find lines in files where there is a combination of letters "sec" in the current folder**
```
grep sec *.*
tf_2.txt:- the second 2
```

 **24. Find lines in files where there is a combination of letters "sec" in any case in the current folder**
```
grep -i sec *.*
tf_2.txt:- the second 2
tf_2.txt:the sec 3
tf_2.txt:the seConD 2
```

 **25. Find lines in files where there is only a combination of letters "sec" in the current folder**
```
grep -w sec *.*
tf_2.txt:the sec 3
```
**26. Find lines in files where there is only a combination of letters "sec" in any case in the current folder**
```
grep -wi sec *.*
tf_2.txt:the sec 3
```

 **27. Find lines in files where there is a combination of letters “second” in the current folder**
```grep -r second ./
./inner_dir_1/tf_3.txt:the second 2
./tf_2.txt:- the second 2
```

 **28. Find lines in files where there is a combination of letters “second” in any case in the current folder**
```
grep -ri second ./
./inner_dir_1/tf_3.txt:the second 2
./inner_dir_1/tf_3.txt:the sec 2the SeCoNd 2
./tf_2.txt:- the second 2
./tf_2.txt:the seConD 2
```

 **29. Find lines in files where there is a combination of letters “second” in all folders below**
```grep -r second ././
././inner_dir_1/tf_3.txt:the second 2
././tf_2.txt:- the second 2
```

 **30. Find only the path and file name in the lines that contain the combination of the letters “second” in the current folder**
```grep -rl second ./
./inner_dir_1/tf_3.txt
./tf_2.txt
```

 **31. Find all lines in all files where there is no "second" combination**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ grep -rv second ./
./inner_dir_1/tf_3.txt:line 1
./inner_dir_1/tf_3.txt:line 2
./inner_dir_1/tf_3.txt:line 3
./inner_dir_1/tf_3.txt:fireworks
./inner_dir_1/tf_3.txt:the sec 2the SeCoNd 2
./inner_dir_1/tF_5.txt:1
./inner_dir_1/tF_5.txt:2
./inner_dir_1/tF_5.txt:3
./inner_dir_1/tF_5.txt:4
./inner_dir_1/tF_5.txt:5
./inner_dir_1/tF_5.txt:6
./inner_dir_1/tF_5.txt:7
./inner_dir_1/tF_5.txt:8
./inner_dir_1/tF_5.txt:9
./inner_dir_1/tF_5.txt:10
./inner_dir_1/tF_5.txt:11
./inner_dir_1/tF_5.txt:12
./inner_dir_1/tF_5.txt:13
./tf_2.txt:- the first 1
./tf_2.txt:- the third 3
./tf_2.txt:the sec 3
./tf_2.txt:the seConD 2
```

 **32. Find only the name and path to files where there is no “second” combination**
```
grep -rvL second ./
./inner_dir_1/tf_4.txt
./tf_1.txt
```

**33. Print the last 4 lines of any text file to the terminal**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ tail -n 4 tf_2.txt
- the second 2
- the third 3
the sec 3
the seConD 2
```

 **34. Output to terminal 4 the first lines of any text file.**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ head -n 4 inner_dir_1/tF_5.txt
1
2
3
4
```

**35. One line command. Create a folder and create a text file with contents.**
```
mkdir dir_2 && cat>file.txt
```

**36. One line command. Move to any one folder text files that have the word “sec” in their content**
```
$ grep -rl "sec" ./ | xargs -I{} mv {} dir_2
```
*find /dir_1 -type f -exec grep -l "sec" {} \; | xargs mv -t inner_dir_1
In this command:
find is used to search for files in the specified source folder and its subdirectories.
The -type f option specifies to search only files, not folders.
-exec grep -l "sec" {} \; executes the grep command for each file it finds, and prints only the names of files that match the word "sec".
xargs is used to pass filenames to the mv command.
The -t option in the mv command specifies the target folder where the files should be moved.
Thus, executing this command will move files containing the word "sec" in their content to the folder "inner_dir_1".*


**37. One line command. Copy to any one folder text files that have the word “sec” in their content**
```
$ grep -rl "sec" ./ | xargs -I{} cp {} inner_dir_1
```

 **38. One line command. Find all lines with "sec" in all text files, copy and paste these lines into one new created text file.**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ grep -rh "sec" ./ | xargs -I{} echo {} > new.txt
```

 **39. One line command. Delete text files that have the word “sec” in their content**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ grep -rl "sec" ./ | xargs -I{} rm -f {}
```

 **40. Just output to the terminal “Good job!!”**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ echo "Good job!"
Good job!
```
