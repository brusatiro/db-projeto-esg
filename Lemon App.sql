CREATE TABLE "file" (
  "user_id" integer PRIMARY KEY,
  "send_date" timestamp,
  "file" string,
  "type" string,
  "points" integer
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "enterprise_id" integer,
  "username" string,
  "email" string,
  "name" string,
  "function" string,
  "created_at" timestamp,
  "city" string,
  "state" string,
  "country" string
);

CREATE TABLE "company" (
  "id" integer PRIMARY KEY,
  "name" string,
  "employees" integer,
  "plan" string,
  "is_active" string,
  "contract" string,
  "price_contract" integer,
  "city" string,
  "state" string,
  "country" string,
  "created_at" timestamp
);

ALTER TABLE "users" ADD FOREIGN KEY ("enterprise_id") REFERENCES "company" ("id");

ALTER TABLE "file" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
