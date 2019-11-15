1. Для перевірки чи докер встановлений і працює правильно на віртуальній машині запускаю  перевірку версії, виведення допомоги та тестовий імедж:
   - docker -v
   - docker -h
   - docker run docker/whalesay cowsay Docker is fun
2. Перенаправляю результати цих команд у файл my_work.log та роблю коміт до репозиторію.
3. Створюю Docker імейдж з сайтом з попередньої роботи.
4. Щоб завантажити базовий Python імейдж з репозиторію, використовую наступні команди:
   - docker  pull python:3.7-slim
   - docker images
   - docker inspect python:3.7-slim
5. Створюю Dockerfile.site, копіюю туди вміст файла - зразка, роблю необхідні зміни та виконую коміт до репозиторію.
6. Заходжу в свій аккаунт на Docker Hub та створюю репозиторій.
7. Виконую білд Docker імейджа та завантажую його до репозиторію, за допомогою команд:
   - sudo docker build -t hashchenko/lab_4:django -f Dockerfile.site .
   - sudo docker images
   - sudo docker push hashchenko/lab_4:django 
8. [Docker Hub link](https://hub.docker.com/r/hashchenko/lab_4)
9. Посилання на скачування імейджа: `hashchenko/lab_4:django`
10. Запускаю сервер за допомогою команди `sudo docker run -it --name=django --rm -p 8000:8000 hashchenko/lab_4:django`.
11. ![screenshot4](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/screenshot4.JPG)
12. Створю ще один файл під назвою Dockerfile.monitoring і поміщаю туди програму моніторингу. Виконую білд і присвоюю тег monitoring.
13. Запускаю два контейнери у двох вкладках терміналу та перевіряю правильність роботи програми. Для коректної роботи використовую ключ --net=host.
14. ![screenshot5](https://github.com/IK-31-hashchenko/IK_31_hashchenko/blob/master/screenshot5.JPG)
15. За допомогою команди `docker exec -it 9345саа7136d bash` заходжу в контейнер та шукаю потрібний log файл.
16. За допомогою команди docker cp `9345саа7136d:/server.log server.log` копіюю його у папку з лабораторною роботою.
17.Роблю фінальний коміт до репозиторію.

