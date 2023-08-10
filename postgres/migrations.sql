CREATE TABLE IF NOT EXISTS event (
	  id CHAR(26) NOT NULL CHECK (CHAR_LENGTH(id) = 26) PRIMARY KEY,
	  aggregate_id CHAR(26) NOT NULL CHECK (CHAR_LENGTH(aggregate_id) = 26),
	  event_data JSON NOT NULL,
	  version INT,
	  UNIQUE(aggregate_id, version)
	);

CREATE TABLE IF NOT EXISTS commits
(
    hash VARCHAR,
    author VARCHAR,
    time timestamp,
    message VARCHAR,
    files_added INT,
    files_deleted INT,
    files_renamed INT,
    files_modified INT,
    lines_added INT,
    lines_deleted INT,
    hunks_added INT,
    hunks_removed INT,
    hunks_changed INT
);