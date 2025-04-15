CREATE TABLE users (
      id BIGINT AUTO_INCREMENT PRIMARY KEY,
      password VARCHAR(255) NOT NULL,
      email VARCHAR(255) NOT NULL UNIQUE,
      username VARCHAR(40) NOT NULL UNIQUE,
      refresh_token VARCHAR(255),
      created TIMESTAMP,
      updated TIMESTAMP
);
