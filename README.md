This repo is another in my series of MLops examples to show the basics, such as:
* Saving and loading a trained model
* Versioning models
* scikit-learn pipelines to bundle preprocessing and modeling
* Serving a model from a web service
* Hosting the web service
* Pull request / review concepts, like reviewing a model build, reviewing service changes, and basic testing for the service

This repo uses Cortex for deployment to AWS. Cortex makes it easy to handle very high request throughput and control costs. It does that by serving models frmo a Kubernetes cluster and scaling up and down as needed, even supporting spot instances. 

# TO DO
- Switch from Cortex to DVC to access the model file
- Organize the infrastructure code better. Right now there's some in serving and some in infrastructure
- Update the github actions to work with Cortex
- Figure out how to wait for the deploy to finish to test it. It looks like the `cortex get` output will say "live" when it's ready but I haven't found a version that waits for it

## Stretch goals
- Try switching to huggingface transformers