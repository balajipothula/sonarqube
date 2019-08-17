-- changing sonar role password.
ALTER USER sonar WITH ENCRYPTED password 's3cret';

-- creating sonar database.
CREATE DATABASE sonar OWNER sonar;

-- reloading postgresql server configurations.
SELECT pg_reload_conf();
