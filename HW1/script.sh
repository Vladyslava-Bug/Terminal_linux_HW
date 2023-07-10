#!/bin/bash
cd dir_2 #1.Зайти в папку
mkdir folder1 folder2 folder3 #2.Создать 3 папки 
cd folder1 #3.Зайти в любую папку
touch /d/dir_1/dir_2/folder1/{txt1.txt,txt2.txt,txt3.txt,json1.json,json2.json} #4.Создать 5 файлов (3 txt, 2 json)  
mkdir A B C #5. Создать 3 папки  
ls #6.Вывести список содержимого папки
mv /d/dir_1/dir_2/folder1/{txt2.txt,json2.json} /d/dir_1/dir_2/folder1/B #7.Переместить любые 2 файла в любую другую папку
