**1. Сделать папку dir_1** 
 ```
mkdir dir_1
```

**2. Зайти в папку dir_1**
```
cd dir_1
```

**3. Создать папку inner_dir_1**
```
mkdir inner_dir_1
```

**4. Посмотреть где ты находишься**
```
pwd
/d/dir_1
```
 **5. Находясь в папке dir_1 создать пустой текстовый файл tf_1.txt**
 ```
touch tf_1.txt
```

**6. Находясь в папке dir_1 через команду cat создать текстовый файл tf_2.txt со следующими строками:**
- the first 1
- the second 2
- the third 3
```
cat > tf_2.txt
*write down the text and press Ctrl+D
```

**7. Зайти в папку inner_dir_1**
```
cd inner_dir_1
```
**8. Через cat сделать текстовый файл tf_3.txt c любыми строками**
```
cat > tf_3.txt
line 1
line 2
line 3
fireworks
*write down the text and press Ctrl+D
```

**9. Через cat добавить в текстовый файл tf_3.txt строку “the second 2”**
```
vim tf_3.txt
*write down updates and press ESC : wq Enter
```

**10. Через cat добавить в текстовый файл tf_3.txt строку “the sec 2”**
```
cat >> tf_3.txt
*write down the text and press Ctrl+D
```

**11. Через cat добавить в текстовый файл tf_2.txt строку “the sec 3@**
cat >> tf_2.txt
*write down text and press Ctrl+D
 
**12. Через cat добавить в текстовый файл tf_3.txt строку “the SeCoNd 2”**
```
cat >> tf_3.txt
*write down text and press Ctrl+D
```
 
**13. Через cat добавить в текстовый файл tf_2.txt строку “the seConD 2”**
```
cat >> tf_2.txt
*write down text and press Ctrl+D
```
 
**14. Сделать текстовый файл tf_4.txt в котором будет 15 строк**
```
seq 1 15 | cat>inner_dir_1/tf_4.txt
```

**15. Сделать текстовый файл tF_5.txt в котором будет 13 строк**
```
seq 1 13 | cat>tf_5.txt
```

**16. Вывести список всех файлов в папке**
```
ls

tf_3.txt  tf_4.txt  tf_5.txt
```

**17. Выйти из папки inner_dir_1**
```
cd ..
```
**18. Вывести содержимое файла tf_3.txt в терминал**
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

**19. Найти путь к файлу tf_4.txt**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
find -iname tf_4.txt

./inner_dir_1/tf_4.txt
```
*-name — искать по имени файла, при использовании подстановочных образцов параметр заключается в кавычки. Опция -name' различает прописные и строчные буквы; чтобы использовать поиск без этих различий, воспользуйтесь опцией -iname'/ при этом терминал показывает путь к файлу от текущего месторасположения.*
 
**20. Очистить файл tf_4.txt от содержимого без удаления самого файла.**
```
echo -n > /d/dir_1/inner_dir_1/tf_4.txt
```

**21. Найти путь к файлам у которых есть  “tf” в названии.**
```
find -name "*tf*"
./inner_dir_1/tf_2.txt
./inner_dir_1/tf_3.txt
./inner_dir_1/tf_4.txt
./tf_1.txt
./tf_2.txt
```

 **22. Найти путь к файлам у которых есть  “tf” в названии и буквы в любом регистре.**
```
find -iname "*tf*"
./inner_dir_1/tf_2.txt
./inner_dir_1/tf_3.txt
./inner_dir_1/tf_4.txt
./inner_dir_1/tF_5.txt
./tf_1.txt
./tf_2.txt
```

 **23. Найти строки в файлах где есть комбинация букв “sec” в текущей папке**
```
grep sec *.*
tf_2.txt:- the second 2
```

 **24. Найти строки в файлах где есть комбинация букв “sec” в любом регистре в текущей папке**
```
grep -i sec *.*
tf_2.txt:- the second 2
tf_2.txt:the sec 3
tf_2.txt:the seConD 2
```

 **25. Найти строки в файлах где есть только комбинация букв “sec” в текущей папке**
```
grep -w sec *.*
tf_2.txt:the sec 3
```
**26. Найти строки в файлах где есть только комбинация букв “sec” в любом регистре в текущей папке**
```
grep -wi sec *.*
tf_2.txt:the sec 3
```

 **27. Найти строки в файлах где есть комбинация букв “second” в текущей папке**
```grep -r second ./
./inner_dir_1/tf_3.txt:the second 2
./tf_2.txt:- the second 2
```

 **28. Найти строки в файлах где есть комбинация букв “second” в любом регистре в текущей папке**
```
grep -ri second ./
./inner_dir_1/tf_3.txt:the second 2
./inner_dir_1/tf_3.txt:the sec 2the SeCoNd 2
./tf_2.txt:- the second 2
./tf_2.txt:the seConD 2
```

 **29. Найти строки в файлах где есть комбинация букв “second” во всех папках ниже уровнем**
```grep -r second ././
././inner_dir_1/tf_3.txt:the second 2
././tf_2.txt:- the second 2
```

 **30. Найти только путь и название файла в строках которых есть комбинация букв “second” в текущей папке**
```grep -rl second ./
./inner_dir_1/tf_3.txt
./tf_2.txt
```

 **31. Найти все строки во всех файлах где нет комбинации “second”**
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

 **32. Найти только название и путь к файлам где нет комбинации “second”**
```
grep -rvL second ./
./inner_dir_1/tf_4.txt
./tf_1.txt
```

**33. Вывести в терминал 4 последних строк любого текстового файла**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ tail -n 4 tf_2.txt
- the second 2
- the third 3
the sec 3
the seConD 2
```

 **34. Вывести в терминал 4 первые строки любого текстового файла.**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ head -n 4 inner_dir_1/tF_5.txt
1
2
3
4
```

**35. Команда в одну строку. Создать папку и создать текстовый файл с содержимым.**
```
mkdir dir_2 && cat>file.txt
```

**36. Команда в одну строку. Переместить в любую одну папку текстовые файлы у которых в содержимом есть слово “sec”**
```
$ grep -rl "sec" ./ | xargs -I{} mv {} dir_2
```
*find /dir_1 -type f -exec grep -l "sec" {} \; | xargs mv -t inner_dir_1
В этой команде:
find используется для поиска файлов в указанной исходной папке и её поддиректориях.
Опция -type f указывает на поиск только файлов, а не папок.
-exec grep -l "sec" {} \; выполняет команду grep для каждого найденного файла и выводит только имена файлов, содержащих совпадения со словом "sec".
xargs используется для передачи имен файлов команде mv.
Опция -t в команде mv указывает целевую папку, в которую нужно переместить файлы.
Таким образом, выполнение этой команды переместит файлы, содержащие слово "sec" в их содержимом, в папку "inner_dir_1".*


**37. Команда в одну строку. Скопировать в любую одну папку текстовые файлы у которых в содержимом есть слово “sec”**
```
$ grep -rl "sec" ./ | xargs -I{} cp {} inner_dir_1
```

 **38. Команда в одну строку. Найти все строки c “sec” во всех текстовых файлах, скопировать и вставить эти строки в один новый созданный текстовый файл.**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ grep -rh "sec" ./ | xargs -I{} echo {} > new.txt
```

 **39. Команда в одну строку. Удалить текстовые файлы у которых в содержимом есть слово “sec”**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ grep -rl "sec" ./ | xargs -I{} rm -f {}
```

 **40. Просто вывести в терминал строку “Good job!!”**
```
invad@DESKTOP-2NU89BV MINGW64 /d/dir_1
$ echo "Good job!"
Good job!
```
