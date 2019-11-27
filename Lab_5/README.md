## Makefile ##
1. У папці з лабораторною створюю папки my_app та tests, в які копіюю відповідні файли з репозиторію,ознайомлююсь з їх вмістом. Пееглядаю файл requirements.txt. Він містить залежності додатку.
2. Виконую команди для перевірки працездатності проекту:
   - `pipenv --python 3.7`
   - `pipenv install -r requirements.txt`
   - `pipenv run python app.py`
3. Під час запуску сервера виникає помилка: `redis.exceptions.ConnectionError: Error -2 connecting to redis:6379. Name or service not known.` Для вирішення проблеми встановлюю redis server за допомогою команд:
   -  `sudo apt-get install redis-server`  
4. Роблю зміни у etc/hosts, для того, щоб перенаправити запити на адресу 127.0.0.1 redis.
5. Після цього запускаю сервер і переконуюсь, що програма працює.
6. ![screenshot6](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot6.JPG).
7. У другому вікні терміналу запускаю тестування, за допомогою команди:
   -  'pipenv run pytest test_app.py --url http://localhost:5000'
8.  ![screenshot7](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot7.JPG).
9. Один з тестів виявив помилку. Для того, щоб всі тести виконались успішно, я створюю підпапку logs у папці my_app. 
10.  ![screenshot10](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot10.JPG).
11. Перевіряю, чи відкриваються в браузері сторінки /hits та /logs.
12.  ![screenshot8](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot8.JPG).
13.  ![screenshot9](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot9.JPG).
14. Видаляю файли і папки, що були створені після тестового запуску.
15. Створюю два Dockerfile та Makefile, відповідно до зразка.
16. Ознайомлююсь з вмістом Dockerfile та Makefile, їх директивами.
    - STATES - змінна, що містить назву тегу.
    - REPO - змінна, що містить назву репозиторію.
    - .PHONY - директива, що підставляє значення STATES у $(STATES).
    - $(STATES) - директива, призначена для білду Docker Image.
    - run - для запуску сайту та redis.
    - test-app - для запуску тестів.
    - docker-prune - директива для очищення ресурсів Docker.
17. Створюю Docker імеджі для додатку та тестів:
    - `make .PHONY`
18. У двох вікнах терміналу запускаю додаток і тестую його за допомогою команд:
    - `make run`
    - `make test-app`
19.  ![screenshot11](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot11.JPG).
20.  ![screenshot12](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot12.JPG).
21. Перевіряю роботу сторінок сайту.
22. ![screenshot13](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot13.JPG).
23. ![screenshot14](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot14.JPG).
24. ![screenshot15](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot15.JPG).
25. Зупиняю проект, та очищую ресурси Docker за допомогою команди:
    - `make docker-prune`
26. Створюю директиви у Makefile, для того, щоб зробити push до мого Docker репозиторію.
27. [Docker Hub repository](https://hub.docker.com/repository/docker/hashchenko/lab_5)
28. За допомогою Makefile автоматизую процес видалення імеджів.
29. ![screenshot16](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot16.JPG).
## Docker compose ##
1. Згідно зразка, створюю файл docker-compose.yml.В ньому створюються дві мережі: public і secret. Secret потрібна для комунікації внутрішніх ресурсів, а public для звичайних користувачів.
2. Перевіряю роботу docker-compose та запускаю його.
    - `docker-compose version`
    - `docker-compose -p lab_5 up`
3. ![screenshot17](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot17.JPG).
4. Перевіряю, як працює сайт. Для цього заходжу на адресу 127.0.0.1
5.  ![screenshot18](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot18.JPG).
6. ![screenshot19](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot19.JPG).
7. ![screenshot20](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot20.JPG).
8. Перевіряю наявність імейджів.Імейджі мають теги compose-app і compose-tests. Змінюю репозиторій на свій, та перезапускаю docker-compose, перед тим очистивши імейджі за допомогою директиви Makefile.
9. ![screenshot21](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot21.JPG).
10.![screenshot22](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot22.JPG).
11. Очищую ресурси та роблю push до Docker репозиторію.
## Завдання ##
1. На мою думку, працювати з docker-compose значно зручніше, ніж з Makefile, адже docker-compose може запускати всю програму лише однією командою, що значно полегшує робту з великими проектами і економить час.
2. У папці з лабораторною № 4 створюю файл docker-compose.yml. Він створює імейджі для сторінок сайту і моніторингу, тобто автоматизує роботу, що була виконана в 4 лабораторній.
3. Запускаю його та перевіряю роботу сайту.
4. ![screenshot23](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot23.JPG).
5. ![screenshot24](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot24.JPG).
6. ![screenshot25](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/Lab_5/images/screenshot25.JPG).
7. Зупиняю роботу проекту, та видаляю дані компоуза.
8. Роблю push до Docker репозиторію.


