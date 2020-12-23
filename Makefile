setup-mac:
	brew install pipenv pyenv terraform
	brew tap heroku/brew && brew install heroku

# I like to use a single pipenv for local development.
# The cortex install is because we can't include it in
# the serving requirements or else it breaks the install.
# There's a bug on the cortex github about it
setup-env:
	pipenv --python 3.7
	pipenv install --skip-lock -r training/requirements.txt
	pipenv install --skip-lock -r serving/requirements.txt
	pipenv install --skip-lock cortex

train:
	dvc repro train

# TODO: Update this
#serve:
#	FLASK_ENV=development FLASK_APP=serving/src/main.py python -m flask run

# TODO: Update this
#test-service:
#	PYTHONPATH=. python serving/tests/test_service.py

# TODO: Update this
#ping-heroku-service:
#	curl --header "Content-Type: application/json" --request POST --data '{"text":"science and technology news"}' $(shell heroku info -s | grep web_url | cut -d= -f2)/predict
