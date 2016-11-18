DROP SCHEMA  IF EXISTS  web_shop;
CREATE  SCHEMA web_shop;

-- Table: users
CREATE TABLE web_shop.users (
  id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

-- Table: roles
CREATE TABLE web_shop.roles (
  id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

-- Table for mapping user and roles: user_roles
CREATE TABLE web_shop.user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES web_shop.users (id),
  FOREIGN KEY (role_id) REFERENCES web_shop.roles (id),

  UNIQUE (user_id, role_id)
)
  ENGINE = InnoDB;


CREATE TABLE web_shop.categories (
 id  INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL UNIQUE ,
 image BLOB
)

CREATE TABLE web_shop.products (
  id  INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE ,
  id_category INT ,
  FOREIGN KEY (id_category)
  REFERENCES web_shop.categories (id)
)



-- Insert data

INSERT INTO web_shop.users VALUES (1, 'admin@admin', 'a010203a');

INSERT INTO web_shop.roles VALUES (1, 'ROLE_USER');
INSERT INTO web_shop.roles VALUES (2, 'ROLE_MANAGER');
INSERT INTO web_shop.roles VALUES (3, 'ROLE_ADMIN');

INSERT INTO web_shop.user_roles VALUES (1, 3);