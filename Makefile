help:
	cat Makefile

prowler-aws:
	# AWS の構成、設定値を検査する
	# ポリシーに ViewOnlyAccess, SecurityAudit を設定した IAM ユーザーの、アクセスキー情報を用いること
	rm -Rf output
	docker pull toniblyx/prowler
	docker system prune -f
	docker run --name prowler -it --rm \
	  -v "$(shell pwd)/config/aws/credentials":/home/prowler/.aws/credentials:ro \
	  -v "$(shell pwd)/output":/home/prowler/output \
	  toniblyx/prowler aws

prowler-aws-tokyo-region:
	# AWS の構成、設定値を検査する
	# ポリシーに ViewOnlyAccess, SecurityAudit を設定した IAM ユーザーの、アクセスキー情報を用いること
	rm -Rf output
	docker pull toniblyx/prowler
	docker system prune -f
	docker run --name prowler -it --rm \
	  -v "$(shell pwd)/config/aws/credentials":/home/prowler/.aws/credentials:ro \
	  -v "$(shell pwd)/output":/home/prowler/output \
	  toniblyx/prowler aws -f ap-northeast-1
