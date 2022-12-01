# BP-SECRET-MANAGER-STEP
I'll setup SECRET MANAGER using OpsTree TF Modules


## Setup
* Clone the code available at [BP-SECRET-MANAGER-STEP](https://github.com/OT-BUILDPIPER-MARKETPLACE/BP-SECRET-MANAGER-STEP)
* Build the docker image

```
git submodule init
git submodule update
docker build -t ot/tf-secret-manager-step:0.1 .
```

* Do local testing via image only

```
# terraform with default(apply)
docker run -it --rm -v $PWD:/src -e WORKSPACE=/src -e CODEBASE_DIR=/ oot/tf-secret-manager-step:0.1

# terraform with plan
docker run -it --rm -v $PWD:/src -e WORKSPACE=/ -e CODEBASE_DIR=/src -e TF_CODE_LOCATION=<?> -e AWS_ACCESS_KEY_ID=<?> -e AWS_SECRET_ACCESS_KEY=<?> -e INSTRUCTION=plan ot/tf-secret-manager-step:0.1

```