help:
	cat Makefile

prowler-aws:
	# AWS の構成、設定値を検査する
	# ポリシーに ViewOnlyAccess, SecurityAudit を設定した IAM ユーザーの、アクセスキー情報を用いること
	rm -Rf output
	docker run --name prowler -it --rm \
	  -e AWS_PROFILE -v "$(shell pwd)/config/aws/credentials":/home/prowler/.aws/credentials:ro \
	  -v "$(shell pwd)/output":/home/prowler/output \
	  toniblyx/prowler aws

