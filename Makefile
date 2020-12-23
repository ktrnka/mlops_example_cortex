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
