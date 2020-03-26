USE homework_db;
​
INSERT INTO department
    (department_name);
VALUES
    ("DevTeam"),
    ("HR"),
    ("Finance");
​
INSERT INTO role
    (title, salary, department_id)
VALUES
    ("Senior Dev", 100000, 1),
    ("Team lead", 85000, 1),
    ("HR person", 110000, 2),
    ("Engineer", 120000, 1),
    ("CPA", 75000, 3);
​
INSERT INTO employee
    (first_name, last_name, role_id, is_manager)
VALUES
    ("Cranjus", "McBasketball", 2, 0),
    ("Dill", "Funk", 4, 1),
    ("Rickyticky", "Bobbywobbie", 1, 1),
    ("Count", "Ravioli", 2, 1),
    ("Denzel", "Washingmachine", 4, 0),
    ("Beefy", "McWhatnow", 2, 1);