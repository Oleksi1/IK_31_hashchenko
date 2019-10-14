.DEFAULT_GOAL := all

all: install test run deploy

install:
    @echo "installing pipenv shell and libraries."
    pip install pipenv
    pipenv --python 3.7
    pipenv install requests
    pipenv install ntplib
    pipenv install pytest
test:
    @echo "Test start and write to results file"
    pipenv run pytest tests.py > results.txt

run:
    @echo "Run application and write to results file"
    pipenv run python app.py >> results.txt


deploy:
    @echo "Git commit/git push results.txt file"
    git add results.txt
    git commit -m "Lab_2 third commit"
    git push

