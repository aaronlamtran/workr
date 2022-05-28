DROP TABLE USER_PROFILE_FULL_DATA;
DROP TABLE USER_LISTS_USER_FULL_DATA;
DROP TABLE USER_JOBS_USER_FULL_DATA;
DROP DATABASE workr IF EXISTS;
CREATE DATABASE workr;

CREATE TABLE USER_PROFILE_FULL_DATA (
  "id" serial PRIMARY KEY,
  "email" varchar UNIQUE NOT NULL,
  "createdAt" timestamp,
  "firstName" varchar,
  "lastName" varchar,
  "useageJobsCurrentCount" integer,
  "useageJobsTotalCount" integer
);

CREATE TABLE USER_LISTS_USER_FULL_DATA (
  "id" serial PRIMARY KEY,
  "columnName" varchar,
  "createdAt" timestamp,
  "boardID" int,
  "boardName" varchar
);

CREATE TABLE USER_JOBS_USER_FULL_DATA (
  "id" serial PRIMARY KEY,
  "createdAt" timestamp,
  "title" varchar,
  "salary" int,
  "location" varchar,
  "url" text,
  "rootDomain" varchar,
  "htmlDescription" text,
  "deadline" timestamp,
  "lastMovedAt" timestamp,
  "boardID" int,
  "listID" int,
  "listName" varchar,
  "companyId" varchar,
  "companyName" varchar,
  "companyDomain" varchar,
  "creatorUserId" int,
  "creatorFirstName" varchar,
  "creatorLastName" varchar,
  "creatorUserEmail" varchar
);

