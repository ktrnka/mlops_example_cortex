**Archived: Databricks acquired Cortex Labs in 2022 and the [cortex](https://github.com/cortexlabs/cortex) repo has not been maintained, so I don't recommend trying this for learning**

This repo is another in my series of MLops examples to show the basics, such as:
* Saving and loading a trained model
* Versioning models
* scikit-learn pipelines to bundle preprocessing and modeling
* Serving a model from a web service
* Hosting the web service
* Pull request / review concepts, like reviewing a model build, reviewing service changes, and basic testing for the service

This repo uses Cortex for deployment to AWS. Cortex makes it easy to handle high request throughput and keep costs down. It does that by serving models from a Kubernetes cluster and scaling up and down as needed. 

# TO DO
- The model file is packaged with the code for deployment and Cortex doesn't like that. We should use the DVC Python module to load on start from S3.
- Create Github Actions to auto-deploy to Cortex.
- Figure out how to wait for the deployment to finish to test it. It looks like the `cortex get` output will say "live" when it's ready, but I haven't found a version that waits for it
- Run a unit test against the predict function
- Organize the infrastructure code better? Right now there's some in serving and some in infrastructure.

## Stretch goals
- Try switching to huggingface transformers
- Figure out memory usage from local docker to help pick the right instances for serving
- API authentication: It looks like the best way is to create the API gateway with auth in another way, or use REST with IAM auth
- Make the cluster nodes private
- Find a way to limit network access to the operator, for instance IP-based access from the machine that created it
