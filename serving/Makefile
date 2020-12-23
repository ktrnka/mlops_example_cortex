serve-locally:
	pipenv run cortex deploy cortex.yaml

test-locally:
	cortex predict topic-classifier test_request.json

create-cluster:
	pipenv run cortex cluster up --config cluster.yaml

cleanup-cortex:
	cortex delete topic-classifier
