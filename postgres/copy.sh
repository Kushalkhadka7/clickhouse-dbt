#!/bin/sh

THE_USER=root
THE_DB=raw_github_metrics
THE_TABLE=commits
PSQL=/opt/postgresql/bin/psql
THE_DIR=/source/data
THE_FILE=commits.csv

${PSQL} -U ${THE_USER} ${THE_DB} <<OMG
COPY ${THE_TABLE} FROM '${THE_DIR}/${THE_FILE}' delimiter '|' csv;
OMG