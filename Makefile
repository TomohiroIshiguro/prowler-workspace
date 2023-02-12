help:
	cat Makefile

prowler-aws:
	rm -Rf output
	docker run --name prowler -it --rm \
		-e AWS_PROFILE -v "$(shell pwd)/config/aws/credentials":/home/prowler/.aws/credentials:ro \
		-v "$(shell pwd)/output":/home/prowler/output \
		toniblyx/prowler aws -f ap-northeast-1

