
class PythonPredictor:
    def __init__(self, config):
        import joblib
        import os.path

        model_path = os.path.join(os.path.dirname(__file__), "../data/model.joblib.gz", )
        self.model = joblib.load(model_path)

    def predict(self, payload):
        return str(self.model.predict([payload["text"]])[0])
