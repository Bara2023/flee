# require "open-uri"

Travel.destroy_all
User.destroy_all

# Création des utilisateurs
toto = User.create!(name: "toto", email: "toto@gmail.com", password: "123456")
alice = User.create!(name: "Alice", email: "alice@example.com", password: "password123")
bob = User.create!(name: "Bob", email: "bob@example.com", password: "password123")
charlie = User.create!(name: "Charlie", email: "charlie@example.com", password: "password123")
diana = User.create!(name: "Diana", email: "diana@example.com", password: "password123")

# Création des voyages pour les utilisateurs
Travel.create!(
  airport_start: "CDG",
  start_date: "2024-07-15",
  budget_max: "1500",
  lasting: 7,
  destination: "Berlin",
  mood: "Adventure",
  age: 30,
  status: "pending",
  user: toto
)

Travel.create!(
  airport_start: "JFK",
  start_date: "2024-08-01",
  budget_max: "2500",
  lasting: 10,
  destination: "Paris",
  mood: "Romantic",
  age: 27,
  status: "confirmed",
  user: toto
)

Travel.create!(
  airport_start: "LAX",
  start_date: "2024-09-05",
  budget_max: "1200",
  lasting: 5,
  destination: "Amsterdam",
  mood: "Relaxation",
  age: 35,
  status: "pending",
  user: alice
)

Travel.create!(
  airport_start: "LHR",
  start_date: "2024-10-20",
  budget_max: "2000",
  lasting: 8,
  destination: "Barcelona",
  mood: "Shopping",
  age: 40,
  status: "confirmed",
  user: alice
)

Travel.create!(
  airport_start: "SYD",
  start_date: "2024-11-15",
  budget_max: "3000",
  lasting: 14,
  destination: "Rome",
  mood: "Adventure",
  age: 25,
  status: "pending",
  user: bob
)

Travel.create!(
  airport_start: "FRA",
  start_date: "2024-12-10",
  budget_max: "1800",
  lasting: 10,
  destination: "Prague",
  mood: "Exploration",
  age: 45,
  status: "confirmed",
  user: bob
)

Travel.create!(
  airport_start: "MAD",
  start_date: "2025-01-05",
  budget_max: "2200",
  lasting: 12,
  destination: "Vienna",
  mood: "Cultural",
  age: 50,
  status: "pending",
  user: charlie
)

Travel.create!(
  airport_start: "SFO",
  start_date: "2025-02-18",
  budget_max: "1700",
  lasting: 9,
  destination: "Lisbon",
  mood: "Adventure",
  age: 32,
  status: "confirmed",
  user: charlie
)

Travel.create!(
  airport_start: "DXB",
  start_date: "2025-03-25",
  budget_max: "2100",
  lasting: 11,
  destination: "Copenhagen",
  mood: "Historical",
  age: 29,
  status: "pending",
  user: diana
)

Travel.create!(
  airport_start: "HND",
  start_date: "2025-04-12",
  budget_max: "1300",
  lasting: 6,
  destination: "Athens",
  mood: "Foodie",
  age: 23,
  status: "confirmed",
  user: diana
)

Travel.create!(
  airport_start: "CDG",
  start_date: "2025-05-15",
  budget_max: "1600",
  lasting: 7,
  destination: "Munich",
  mood: "Cultural",
  age: 30,
  status: "pending",
  user: toto
  )

Travel.create!(
  airport_start: "JFK",
  start_date: "2025-06-01",
  budget_max: "2600",
  lasting: 10,
  destination: "Milan",
  mood: "Fashion",
  age: 27,
  status: "confirmed",
  user: toto
  )

Travel.create!(
  airport_start: "LAX",
  start_date: "2025-07-05",
  budget_max: "1300",
  lasting: 5,
  destination: "Zurich",
  mood: "Relaxation",
  age: 35,
  status: "pending",
  user: alice
  )

Travel.create!(
  airport_start: "LHR",
  start_date: "2025-08-20",
  budget_max: "2100",
  lasting: 8,
  destination: "Brussels",
  mood: "Gastronomy",
  age: 40,
  status: "confirmed",
  user: alice
  )

Travel.create!(
  airport_start: "SYD",
  start_date: "2025-09-15",
  budget_max: "3100",
  lasting: 14,
  destination: "Stockholm",
  mood: "Exploration",
  age: 25,
  status: "pending",
  user: bob
  )

  Travel.create!(
    airport_start: "CDG",
    start_date: "2025-05-15",
    budget_max: "1600",
    lasting: 7,
    destination: "Munich",
    mood: "Cultural",
    age: 30,
    status: "pending",
    user: toto
    )

  Travel.create!(
    airport_start: "JFK",
    start_date: "2025-06-01",
    budget_max: "2600",
    lasting: 10,
    destination: "Milan",
    mood: "Fashion",
    age: 27,
    status: "confirmed",
    user: toto
    )

  Travel.create!(
    airport_start: "LAX",
    start_date: "2025-07-05",
    budget_max: "1300",
    lasting: 5,
    destination: "Zurich",
    mood: "Relaxation",
    age: 35,
    status: "pending",
    user: alice
    )

  Travel.create!(
    airport_start: "LHR",
    start_date: "2025-08-20",
    budget_max: "2100",
    lasting: 8,
    destination: "Brussels",
    mood: "Gastronomy",
    age: 40,
    status: "confirmed",
    user: alice
    )

  Travel.create!(
    airport_start: "SYD",
    start_date: "2025-09-15",
    budget_max: "3100",
    lasting: 14,
    destination: "Stockholm",
    mood: "Exploration",
    age: 25,
    status: "pending",
    user: bob
    )

  Travel.create!(
      airport_start: "CDG",
      start_date: "2024-08-20",
      budget_max: "2000",
      lasting: 5,
      destination: "Barcelone",
      mood: "Beach",
      age: 28,
      status: "pending",
      user: alice
    )

    Travel.create!(
      airport_start: "CDG",
      start_date: "2024-09-10",
      budget_max: "1800",
      lasting: 4,
      destination: "Amsterdam",
      mood: "City",
      age: 35,
      status: "pending",
      user: bob
    )

puts 'seed over'
