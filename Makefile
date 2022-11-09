.PHONY: lint
lint:
	black -l 120 .

.PHONY: test
test:
	pytest

.PHONY: apply
apply:
	cd terraform/aws/ && terraform apply

.PHONY: destroy
destroy:
	cd terraform/aws/ && terraform destroy

