set client_min_messages to warning;

-- DANGER: this is NOT how to do it in the real world.
-- `drop schema` INSTANTLY ERASES EVERYTHING.
drop schema "public" cascade;

create schema "public";

CREATE TABLE "users" (
  "userId" SERIAL PRIMARY KEY,
  "username" TEXT UNIQUE NOT NULL,
  "hashedPassword" TEXT NOT NULL,
  "fullName" TEXT NOT NULL,
  "weight" NUMERIC(5,2),
  "location" TEXT,
  "createdAt" TIMESTAMP DEFAULT now()
);

CREATE TABLE "meal_entries" (
  "mealEntryId" SERIAL PRIMARY KEY,
  "userId" INTEGER NOT NULL REFERENCES "users"("userId") ON DELETE CASCADE,
  "date" DATE NOT NULL,
  "mealType" TEXT NOT NULL CHECK ("mealType" IN ('breakfast', 'lunch', 'dinner', 'snack')),
  "notes" TEXT,
  "createdAt" TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE "meal_foods" (
  "mealFoodId" SERIAL PRIMARY KEY,
  "mealEntryId" INTEGER NOT NULL REFERENCES "meal_entries"("mealEntryId") ON DELETE CASCADE,
  "foodName" TEXT NOT NULL,
  "quantity" DECIMAL NOT NULL,
  "unit" VARCHAR(20),
  "calories" DECIMAL NOT NULL,
  "protein" DECIMAL NOT NULL,
  "carbs" DECIMAL NOT NULL,
  "fats" DECIMAL NOT NULL,
  "createdAt" TIMESTAMPTZ DEFAULT now()
);
