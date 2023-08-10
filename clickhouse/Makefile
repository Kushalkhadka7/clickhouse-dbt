clickhouse-client:
	@docker-compose exec clickhouse-server clickhouse-client
	
clickhouse-migrate:
	@docker exec --workdir /source clickhouse-server clickhouse-client --queries-file migrations/migrations.sql

clickhouse-load-data:
	@docker exec --workdir /source clickhouse-server clickhouse-client --queries-file query/data_ingestion_querey.sql

