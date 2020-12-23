import cortex

class PythonPredictor:
    def __init__(self, config):
        import joblib
        import os.path

        model_path = os.path.join(os.path.dirname(__file__), "../data/model.joblib.gz", )
        self.model = joblib.load(model_path)

    def predict(self, payload):
        return str(self.model.predict([payload["text"]])[0])

# # todo: fix this. It sounds like it'll search for requirements.txt if I don't specify this, at least for the yaml config
# requirements = ["tensorflow", "transformers"]
#
# api_spec = {"name": "topic-classifier", "kind": "RealtimeAPI"}
#
# cx = cortex.client("local")
# cx.create_api(api_spec, predictor=PythonPredictor, requirements=requirements)
#
