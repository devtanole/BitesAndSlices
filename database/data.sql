-- Use SQL insert statements to add any
-- starting/dummy data to your database tables

-- EXAMPLE:

--  insert into "todos"
--    ("task", "isCompleted")
--    values
--      ('Learn to code', false),
--      ('Build projects', false),
--      ('Get a job', false);
INSERT INTO "users" ("username", "hashedPassword", "fullName", "weight", "location")
VALUES
  ('johndoe', '$argon2id$v=19$m=65536,t=3,p=4$dummyhash1', 'John Doe', 75.5, 'New York'),
  ('janedoe', '$argon2id$v=19$m=65536,t=3,p=4$dummyhash2', 'Jane Doe', 62.3, 'San Francisco');

INSERT INTO "meal_entries" ("userId", "date", "mealType", "notes")
VALUES
  (1, '2025-05-18', 'breakfast', 'Pre-gym meal'),
  (1, '2025-05-18', 'lunch', 'Post workout recovery'),
  (2, '2025-05-18', 'dinner', 'Light evening meal');

-- For John's breakfast (mealEntryId = 1)
INSERT INTO "meal_foods" ("mealEntryId", "foodName", "quantity", "unit", "calories", "protein", "carbs", "fats")
VALUES
  (1, 'Oatmeal', 1, 'cup', 150, 5, 27, 3),
  (1, 'Banana', 1, 'medium', 105, 1.3, 27, 0.4),
  (1, 'Peanut Butter', 2, 'tbsp', 188, 8, 6, 16);

-- For John's lunch (mealEntryId = 2)
-- INSERT INTO meal_foods (mealEntryId, food_name, quantity, unit, calories, protein, carbs, fats)
-- VALUES
--   (2, 'Grilled Chicken Breast', 200, 'g', 330, 45, 0, 7),
--   (2, 'Brown Rice', 150, 'g', 170, 4, 35, 1.5),
--   (2, 'Steamed Broccoli', 100, 'g', 55, 3.7, 11, 0.6);

-- -- For Jane's dinner (mealEntryId = 3)
-- INSERT INTO meal_foods (mealEntryId, food_name, quantity, unit, calories, protein, carbs, fats)
-- VALUES
--   (3, 'Mixed Salad', 1, 'bowl', 120, 2, 10, 8),
--   (3, 'Boiled Egg', 2, 'pcs', 140, 12, 1, 10);
