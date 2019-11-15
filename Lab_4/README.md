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
5. Створюю Dockerfile, копіюю туди вміст файла - зразка, роблю необхідні зміни та виконую коміт до репозиторію.
6. Заходжу в свій аккаунт на Docker Hub та створюю репозиторій.
7. Виконую білд Docker імейджа та завантажую його до репозиторію, за допомогою команд:
   - sudo docker build -t hashchenko/lab_4:django -f Dockerfile.site .
   - sudo docker images
   - sudo docker push hashchenko/lab_4:django 
8. [Docker Hub link](https://hub.docker.com/r/hashchenko/ik-31_hashchenko)
9. Посилання на скачування імейджа: `
sudo docker run -it --name=django --rm -p 8000:8000 hashchenko/lab_4:django
10.
    
