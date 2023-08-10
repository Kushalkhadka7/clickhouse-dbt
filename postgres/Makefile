postgres-migrate:
	@dco exec -it postgres-server psql --username docker --dbname raw_github_metrics -a -f source/migrations.sql

download-file:
	@rm -rf data
	@mkdir data
	@curl https://datasets-documentation.s3.amazonaws.com/github/commits/clickhouse/commits.tsv.xz -o data/commits.tsv.xz
	@sudo apt install xz-utils -y
	@unxz data/commits.tsv.xz

load-data:
	@dco exec -it postgres-server psql --username docker --dbname raw_github_metrics -a -f source/load_data.sql

