CREATE TABLE users (
    id bigint NOT NULL AUTO_INCREMENT,
    email varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    role varchar(255) DEFAULT NULL,
    email_verified tinyint(1) NOT NULL DEFAULT '0',
    pending_email varchar(255) DEFAULT NULL,
    created_at timestamp(3) NULL DEFAULT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_users_email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;