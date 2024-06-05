# require "open-uri"
puts "seed starting..."

Travel.destroy_all
Search.destroy_all
User.destroy_all

# Création des utilisateurs
toto = User.create!(
  name: "toto",
  email: "toto@gmail.com",
  password: "123456",
  age: 30,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

alice = User.create!(
  name: "Alice",
  email: "alice@example.com",
  password: "password123",
  age: 27,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

bob = User.create!(
  name: "Bob",
  email: "bob@example.com",
  password: "password123",
  age: 31,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

charlie = User.create!(
  name: "Charlie",
  email: "charlie@example.com",
  password: "password123",
  age: 34,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

diana = User.create!(
  name: "Diana",
  email: "diana@example.com",
  password: "password123",
  age: 38,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

# Création des voyages pour les utilisateurs
Travel.create!(
  airport_start: "CDG",
  start_date: "2024-07-15",
  end_date: "2024-07-22",
  budget_max: "1500",
  destination: "Berlin",
  mood: "Adventure",
  age: 30,
  status: "pending",
  description: "Discover Berlin's vibrant culture and history.",
  user: toto
)

Travel.create!(
  airport_start: "JFK",
  start_date: "2024-08-01",
  end_date: "2024-08-11",
  budget_max: "2500",
  destination: "Paris",
  mood: "Romantic",
  age: 27,
  status: "confirmed",
  description: "Enjoy a romantic getaway in Paris.",
  user: toto
)

Travel.create!(
  airport_start: "LAX",
  start_date: "2024-09-05",
  end_date: "2024-09-10",
  budget_max: "1200",
  destination: "Amsterdam",
  mood: "Relaxation",
  age: 35,
  status: "pending",
  description: "Relax along the canals of Amsterdam.",
  user: alice
)

Travel.create!(
  airport_start: "LHR",
  start_date: "2024-10-20",
  end_date: "2024-10-28",
  budget_max: "2000",
  destination: "Barcelona",
  mood: "Shopping",
  age: 40,
  status: "confirmed",
  description: "Indulge in shopping in vibrant Barcelona.",
  user: alice
)

Travel.create!(
  airport_start: "SYD",
  start_date: "2024-11-15",
  end_date: "2024-11-29",
  budget_max: "3000",
  destination: "Rome",
  mood: "Adventure",
  age: 25,
  status: "pending",
  description: "Explore ancient ruins and vibrant culture in Rome.",
  user: bob
)

Travel.create!(
  airport_start: "FRA",
  start_date: "2024-12-10",
  end_date: "2024-12-20",
  budget_max: "1800",
  destination: "Prague",
  mood: "Exploration",
  age: 45,
  status: "confirmed",
  description: "Discover the magical charm of Prague.",
  user: bob
)

Travel.create!(
  airport_start: "MAD",
  start_date: "2025-01-05",
  end_date: "2025-01-17",
  budget_max: "2200",
  destination: "Vienna",
  mood: "Cultural",
  age: 50,
  status: "pending",
  description: "Experience the cultural richness of Vienna.",
  user: charlie
)

Travel.create!(
  airport_start: "SFO",
  start_date: "2025-02-18",
  end_date: "2025-02-27",
  budget_max: "1700",
  destination: "Lisbon",
  mood: "Adventure",
  age: 32,
  status: "confirmed",
  description: "Adventure awaits in the coastal city of Lisbon.",
  user: charlie
)

Travel.create!(
  airport_start: "DXB",
  start_date: "2025-03-25",
  end_date: "2025-04-05",
  budget_max: "2100",
  destination: "Copenhagen",
  mood: "Historical",
  age: 29,
  status: "pending",
  description: "Immerse yourself in the history of Copenhagen.",
  user: diana
)

Travel.create!(
  airport_start: "HND",
  start_date: "2025-04-12",
  end_date: "2025-04-18",
  budget_max: "1300",
  destination: "Athens",
  mood: "Foodie",
  age: 23,
  status: "confirmed",
  description: "Savor the flavors of Greek cuisine in Athens.",
  user: diana
)

Travel.create!(
  airport_start: "CDG",
  start_date: "2025-05-15",
  end_date: "2025-05-22",
  budget_max: "1600",
  destination: "Munich",
  mood: "Cultural",
  age: 30,
  status: "pending",
  description: "Dive into Munich's rich cultural heritage.",
  user: toto
)

Travel.create!(
airport_start: "JFK",
start_date: "2025-06-01",
end_date: "2025-06-11",
budget_max: "2600",
destination: "Milan",
mood: "Fashion",
age: 27,
status: "confirmed",
description: "Experience Milan's vibrant fashion scene.",
user: toto
)

Travel.create!(
airport_start: "LAX",
start_date: "2025-07-05",
end_date: "2025-07-10",
budget_max: "1300",
destination: "Zurich",
mood: "Relaxation",
age: 35,
status: "pending",
description: "Relax and unwind in Zurich.",
user: alice
)

Travel.create!(
airport_start: "LHR",
start_date: "2025-08-20",
end_date: "2025-08-28",
budget_max: "2100",
destination: "Brussels",
mood: "Gastronomy",
age: 40,
status: "confirmed",
description: "Enjoy the culinary delights of Brussels.",
user: alice
)

Travel.create!(
airport_start: "SYD",
start_date: "2025-09-15",
end_date: "2025-09-29",
budget_max: "3100",
destination: "Stockholm",
mood: "Exploration",
age: 25,
status: "pending",
description: "Explore the beauty and culture of Stockholm.",
user: bob
)

Travel.create!(
airport_start: "CDG",
start_date: "2024-08-20",
end_date: "2024-08-25",
budget_max: "2000",
destination: "Barcelone",
mood: "Beach",
age: 28,
status: "pending",
description: "Enjoy the beaches and nightlife of Barcelone.",
user: alice
)

Travel.create!(
airport_start: "CDG",
start_date: "2024-09-10",
end_date: "2024-09-14",
budget_max: "1800",
destination: "Amsterdam",
mood: "City",
age: 35,
status: "pending",
description: "Explore the canals and museums of Amsterdam.",
user: bob
)


puts "...seed over"
