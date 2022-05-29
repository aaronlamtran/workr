DROP TABLE IF EXISTS "USER_PROFILE_FULL_DATA";
DROP TABLE IF EXISTS "USER_ACTIVITIES_USER_FULL_DATA";
DROP TABLE IF EXISTS "USER_LISTS_USER_FULL_DATA";
DROP TABLE IF EXISTS "USER_JOBS_USER_FULL_DATA";
DROP DATABASE IF EXISTS workr;
CREATE DATABASE workr;
\connect workr

CREATE TABLE "USER_PROFILE_FULL_DATA" (
  "id" serial PRIMARY KEY,
  "email" varchar UNIQUE NOT NULL,
  "createdAt" timestamp,
  "firstName" varchar,
  "lastName" varchar,
  "useageJobsCurrentCount" integer,
  "useageJobsTotalCount" integer
);

CREATE TABLE "USER_LISTS_USER_FULL_DATA" (
  "id" serial PRIMARY KEY,
  "columnName" varchar,
  "createdAt" timestamp,
  "boardID" int,
  "boardName" varchar
);

CREATE TABLE "USER_JOBS_USER_FULL_DATA" (
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

CREATE TABLE "USER_ACTIVITIES_USER_FULL_DATA" (
  "id" serial PRIMARY KEY,
  "createdAt" timestamp,
  "title" varchar,
  "note" varchar,
  "createdByWorkflow" boolean,
  "completed" boolean,
  "completedAt" timestamp,
  "startAt" timestamp,
  "endAt" timestamp,
  "jobId" int,
  -- foreign key
  "jobTitle" varchar,
  "boardID" int,
  -- foreign key
  "boardName" varchar,
  "companyId" varchar,
  "companyName" varchar,
  "companyDomain" varchar,
  "activityCategoryID" varchar,
  "activityCategoryName" varchar
);