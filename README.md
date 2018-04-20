# Reference

http://docs.aws.amazon.com/cli/latest/reference/

# Usage

1. prepare aws.env file including variables

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* AWS_DEFAULT_REGION

example:
```
AWS_ACCESS_KEY_ID=xxxxxxxxxxx
AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxx
AWS_DEFAULT_REGION=us-east-1
```

2. run container

```sh
docker run -ti --rm --env-file aws.env minimum/awscli help
docker run -ti --rm --env-file aws.env minimum/awscli ec2 describe-hosts
```
