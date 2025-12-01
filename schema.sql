CREATE TABLE IF NOT EXISTS authors (
		id INTEGER PRIMARY KEY,
		name TEXT
);

CREATE TABLE IF NOT EXISTS quotes (
		id INTEGER PRIMARY KEY,
		message TEXT,
		author_id INT UNSIGNED NOT NULL,


		CONSTRAINT fk__quotes__authors
			FOREIGN KEY (author_id) REFERENCES authors (id)
			ON DELETE CASCADE
);

