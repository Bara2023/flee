# require "open-uri"

Travel.destroy_all
User.destroy_all

toto = User.create!(email: "toto@gmail.com", password: "123456")

Travel.create!(
  airport_start: "CDG",
  start_date: "2024-07-15",
  budget_max: "1500",
  lasting: 7,
  destination: "Tokyo",
  mood: "Adventure",
  age: 30,
  status: "Single",
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
  status: "Married",
  user: toto
)

Travel.create!(
  airport_start: "LAX",
  start_date: "2024-09-05",
  budget_max: "1200",
  lasting: 5,
  destination: "Vancouver",
  mood: "Relaxation",
  age: 35,
  status: "Single",
  user: toto
)

Travel.create!(
  airport_start: "LHR",
  start_date: "2024-10-20",
  budget_max: "2000",
  lasting: 8,
  destination: "New York",
  mood: "Shopping",
  age: 40,
  status: "Divorced",
  user: toto
)

Travel.create!(
  airport_start: "SYD",
  start_date: "2024-11-15",
  budget_max: "3000",
  lasting: 14,
  destination: "Bali",
  mood: "Adventure",
  age: 25,
  status: "Single",
  user: toto
)

Travel.create!(
  airport_start: "FRA",
  start_date: "2024-12-10",
  budget_max: "1800",
  lasting: 10,
  destination: "Cape Town",
  mood: "Exploration",
  age: 45,
  status: "Married",
  user: toto
)

Travel.create!(
  airport_start: "MAD",
  start_date: "2025-01-05",
  budget_max: "2200",
  lasting: 12,
  destination: "Buenos Aires",
  mood: "Cultural",
  age: 50,
  status: "Single",
  user: toto
)

Travel.create!(
  airport_start: "SFO",
  start_date: "2025-02-18",
  budget_max: "1700",
  lasting: 9,
  destination: "Bangkok",
  mood: "Adventure",
  age: 32,
  status: "In a relationship",
  user: toto
)

Travel.create!(
  airport_start: "DXB",
  start_date: "2025-03-25",
  budget_max: "2100",
  lasting: 11,
  destination: "Rome",
  mood: "Historical",
  age: 29,
  status: "Married",
  user: toto
)

Travel.create!(
  airport_start: "HND",
  start_date: "2025-04-12",
  budget_max: "1300",
  lasting: 6,
  destination: "Seoul",
  mood: "Foodie",
  age: 23,
  status: "Single",
  user: toto
)

puts 'seed over'
