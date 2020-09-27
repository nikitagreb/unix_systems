# Практическое задание 
1. Создать файл file1 и наполнить его произвольным содержимым. Скопировать его в file2. Создать символическую ссылку file3 на file1. Создать жесткую ссылку file4 на file1. Посмотреть, какие айноды у файлов. Удалить file1. Что стало с остальными созданными файлами? Попробовать вывести их на экран.
    
   ```shell script
    echo test > file1
    cp file1 file2
    ln -s file1 file3
    ln file1 file4
    ls -ila
    rm file1
    ```
   
   Символьная ссылка сломалась что логично `No such file or directory`

2. Дать созданным файлам другие, произвольные имена. Создать новую символическую ссылку. Переместить ссылки в другую директорию.

    ```shell script
    mv file2 file22
    mv file3 file33
    mv file4 file44
    ln -s file22 file55
    mkdir dir
    mv file55 test
    ```
   
   Символьная ссылка сломалась что логично `No such file or directory`
   
3. Создать два произвольных файла. Первому присвоить права на чтение, запись для владельца и группы, только на чтение — для всех. Второму присвоить права на чтение, запись — только для владельца. Сделать это в численном и символьном виде.

    #### символьный вид
    ```shell script
    echo test > file1
    echo test > file2
    chmod ug+w file1
    chmod +r file1
    chmod -r file2
    chmod ug+wr file2
    ```
  
    #### численный вид
    
    ```shell script
    echo test > file1
    echo test > file2
    chmod ug+w file1
    chmod 664 file1
    chmod 660 file2
    ```
   
4. Создать пользователя, обладающего возможностью выполнять действия от имени суперпользователя.
    
   ```shell script
    sudo adduser ivan
    sudo usermod -aG sudo ivan
    cat /etc/passwd | grep ivan
    ```
5. Создать группу developer и несколько пользователей, входящих в нее. Создать директорию для совместной работы. Сделать так, чтобы созданные одними пользователями файлы могли изменять другие пользователи этой группы.
    
   ```shell script
    sudo groupadd developer
    sudo useradd -m -G developer -s /bin/bash ivan
    sudo useradd -m -G developer -s /bin/bash vlad
    mkdir developer
    sudo chgrp developer developer
    chmod g+s developer
    ```
6. Создать в директории для совместной работы поддиректорию для обмена файлами, но чтобы удалять файлы могли только их создатели.
    
   ```shell script
    mkdir tmp
    chmod 1777 tmp 
    ```

7. Создать директорию, в которой есть несколько файлов. Сделать так, чтобы открыть файлы можно было, только зная имя файла, а через ls список файлов посмотреть было нельзя.

*Примечание. Задания с 5 по 7 даны для тех, кому упражнений 1–4 показалось недостаточно.*