jdbc:postgresql://10.0.0.100/jenkins

psql -h 10.0.0.100 -p 5432 -U jenkins jenkinsdb

-- listing databases.
jenkins=> \l

-- selecting jenkinsdb.
jenkins=> \c jenkinsdb;

-- display list of tables.
jenkins=> \dt

-- selecting jenkinsdb tables data.
SELECT * FROM generated_maven_artifact;
SELECT * FROM jenkins_build;
SELECT * FROM jenkins_build_result;
SELECT * FROM jenkins_build_upstream_cause;
SELECT * FROM jenkins_job;
SELECT * FROM jenkins_master;
SELECT * FROM maven_artifact;
SELECT * FROM maven_dependency;
SELECT * FROM maven_parent_project;
SELECT * FROM version;
