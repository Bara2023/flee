require "open-uri"
puts "seed starting..."

puts "destroy starting..."
Travel.destroy_all
Search.destroy_all
User.destroy_all
Attendance.destroy_all
puts "...destroy done - 1/4"

puts "user create..."

thomas = User.create!(
  name: "Thomas",
  email: "toto@gmail.com",
  password: "123456",
  age: 30,
  description: "Je suis un aventurier dans l'âme. Toujours à la recherche de sensations fortes, j'adore explorer des destinations hors des sentiers battus. Amateur de randonnée et de sports extrêmes, je n'hésite pas à gravir des montagnes ou à plonger dans des eaux profondes pour découvrir les merveilles cachées de la nature."
)
file = URI.open('app/assets/images/thomas.jpeg')
thomas.photo.attach(io: file, filename: "thomas.jpeg", content_type: "image/jpeg")
thomas.save

alice = User.create!(
  name: "Alice",
  email: "alice@gmail.com",
  password: "123456",
  age: 27,
  description: "Je suis une amoureuse de la nature et de la tranquillité. Mes escapades sont souvent orientées vers des endroits paisibles où je peux me ressourcer. J'adore les retraites dans des lieux isolés, comme des chalets en montagne ou des cottages au bord de l'eau. La méditation, le yoga et la lecture font partie intégrante de mes séjours."
)
file = URI.open('app/assets/images/alice.jpeg')
alice.photo.attach(io: file, filename: "alice.jpeg", content_type: "image/jpeg")
alice.save

bob = User.create!(
  name: "Bob",
  email: "bob@gmail.com",
  password: "123456",
  age: 31,
  description: "Je suis un historien amateur qui se déplace pour comprendre le passé et ses répercussions sur le présent. Je suis passionné par les musées, les sites archéologiques et les monuments historiques. Chaque destination est pour moi une opportunité d'en apprendre davantage sur les civilisations anciennes et les événements qui ont façonné notre monde."
)
file = URI.open('app/assets/images/bob.jpeg')
bob.photo.attach(io: file, filename: "bob.jpeg", content_type: "image/jpeg")
bob.save

antoine = User.create!(
  name: "Antoine",
  email: "antoine@gmail.com",
  password: "123456",
  age: 34,
  description: "Je suis un gastronome curieux et raffiné. Pour moi, découvrir de nouvelles saveurs et traditions culinaires est essentiel. J'aime visiter des marchés locaux, participer à des cours de cuisine et déguster des plats authentiques dans chaque pays que je visite. Mes explorations sont une véritable odyssée culinaire."
)
file = URI.open('app/assets/images/antoine.jpeg')
antoine.photo.attach(io: file, filename: "antoine.jpeg", content_type: "image/jpeg")
antoine.save

diana = User.create!(
  name: "Diana",
  email: "diana@gmail.com",
  password: "123456",
  age: 38,
  description: "Je suis une photographe passionnée et je parcours le monde pour capturer des moments uniques. Mes périples sont souvent motivés par la recherche des paysages les plus pittoresques et des cultures les plus vibrantes. J'ai un œil artistique et j'adore documenter mes aventures à travers des photos et des récits captivants."
)
file = URI.open('app/assets/images/diana.jpeg')
diana.photo.attach(io: file, filename: "diana.jpeg", content_type: "image/jpeg")
diana.save

puts "...user done - 2/4"

puts "travel create..."
# Création des voyages pour les utilisateurs
berlin = Travel.create!(
  airport_start: "CDG",
  start_date: "2024-07-15",
  end_date: "2024-07-22",
  budget_max: "1500",
  destination: "Berlin",
  mood: "Aventure",
  age: 30,
  status: "pending",
  description: "Discover Berlin's vibrant culture and history.",
  user: thomas
)
file = URI.open('app/assets/images/berlin.jpeg')
berlin.photo.attach(io: file, filename: "berlin.jpeg", content_type: "image/jpeg")
berlin.save

# paris = Travel.create!(
#   airport_start: "CDG",
#   start_date: "2024-08-01",
#   end_date: "2024-08-11",
#   budget_max: "2500",
#   destination: "Paris",
#   mood: "Sport",
#   age: 27,
#   status: "confirmed",
#   description: "Enjoy a romantic getaway in Paris.",
#   user: thomas
# )
# file = URI.open('app/assets/images/paris.jpeg')
# paris.photo.attach(io: file, filename: "paris.jpeg", content_type: "image/jpeg")
# paris.save

amsterdam = Travel.create!(
  airport_start: "CDG",
  start_date: "2024-09-05",
  end_date: "2024-09-10",
  budget_max: "400",
  destination: "Amsterdam",
  mood: "Détente",
  age: 35,
  status: "pending",
  description: "Relax along the canals of Amsterdam.",
  user: alice
)
file = URI.open('app/assets/images/amsterdam.jpeg')
amsterdam.photo.attach(io: file, filename: "amsterdam.", content_type: "image/jpeg")
amsterdam.save

barcelone = Travel.create!(
  airport_start: "CDG",
  start_date: "2024-10-20",
  end_date: "2024-10-28",
  budget_max: "500",
  destination: "Barcelone",
  mood: "Détente",
  age: 40,
  status: "confirmed",
  description: "Indulge in shopping in vibrant Barcelona.",
  user: alice
)
file = URI.open('app/assets/images/barcelone.jpeg')
barcelone.photo.attach(io: file, filename: "barcelone.jpeg", content_type: "image/jpeg")
barcelone.save

rome = Travel.create!(
  airport_start: "CDG",
  start_date: "2024-11-15",
  end_date: "2024-11-29",
  budget_max: "2000",
  destination: "Rome",
  mood: "Culture",
  age: 25,
  status: "pending",
  description: "Hé, t'as déjà pensé à faire un trip culturel à Rome ? On pourrait se plonger dans l'histoire en visitant des endroits incroyables comme le Colisée et le Forum Romain. Imagine-toi découvrir toutes ces ruines et monuments anciens, c'est vraiment fascinant. Et puis, la Cité du Vatican est juste à côté, avec des trésors artistiques incroyables à explorer. On pourrait aussi se perdre dans les ruelles pittoresques de Trastevere et se régaler de délicieuses spécialités italiennes. Ça te tente ?",
  user: bob
)
file = URI.open('app/assets/images/rome.jpeg')
rome.photo.attach(io: file, filename: "rome.jpeg", content_type: "image/jpeg")
rome.save

prague = Travel.create!(
  airport_start: "CDG",
  start_date: "2024-12-10",
  end_date: "2024-12-20",
  budget_max: "2000",
  destination: "Prague",
  mood: "Aventure",
  age: 45,
  status: "confirmed",
  description: "Discover the magical charm of Prague.",
  user: bob
)
file = URI.open('app/assets/images/prague.jpeg')
prague.photo.attach(io: file, filename: "prague.jpeg", content_type: "image/jpeg")
prague.save

vienne = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-01-05",
  end_date: "2025-01-17",
  budget_max: "4002",
  destination: "Vienne",
  mood: "Sport",
  age: 50,
  status: "pending",
  description: "Experience the cultural richness of Vienna.",
  user: antoine
)
file = URI.open('app/assets/images/vienne.jpeg')
vienne.photo.attach(io: file, filename: "vienne.jpeg", content_type: "image/jpeg")
vienne.save

lisbonne = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-02-18",
  end_date: "2025-02-27",
  budget_max: "1700",
  destination: "Lisbonne",
  mood: "Sport",
  age: 32,
  status: "confirmed",
  description: "Adventure awaits in the coastal city of Lisbon.",
  user: antoine
)
file = URI.open('app/assets/images/lisbonne.jpeg')
lisbonne.photo.attach(io: file, filename: "lisbonne.jpeg", content_type: "image/jpeg")
lisbonne.save

copenhague = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-03-25",
  end_date: "2025-04-05",
  budget_max: "2100",
  destination: "Copenhague",
  mood: "Culture",
  age: 29,
  status: "pending",
  description: "Immerse yourself in the history of Copenhagen.",
  user: diana
)
file = URI.open('app/assets/images/copenhague.jpeg')
copenhague.photo.attach(io: file, filename: "copenhague.jpeg", content_type: "image/jpeg")
copenhague.save

athenes = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-04-12",
  end_date: "2025-04-18",
  budget_max: "1300",
  destination: "Athènes",
  mood: "Détente",
  age: 23,
  status: "confirmed",
  description: "Savor the flavors of Greek cuisine in Athens.",
  user: diana
)
file = URI.open('app/assets/images/athenes.jpeg')
athenes.photo.attach(io: file, filename: "athenes.jpeg", content_type: "image/jpeg")
athenes.save

munich = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-05-15",
  end_date: "2025-05-22",
  budget_max: "1600",
  destination: "Munich",
  mood: "Culture",
  age: 30,
  status: "pending",
  description: "Dive into Munich's rich cultural heritage.",
  user: diana
)
file = URI.open('app/assets/images/munich.jpeg')
munich.photo.attach(io: file, filename: "munich.jpeg", content_type: "image/jpeg")
munich.save

milan = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-06-01",
  end_date: "2025-06-11",
  budget_max: "2600",
  destination: "Milan",
  mood: "Culture",
  age: 27,
  status: "confirmed",
  description: "Experience Milan's vibrant fashion scene.",
  user: diana
)
file = URI.open('app/assets/images/milan.jpeg')
milan.photo.attach(io: file, filename: "milan.jpeg", content_type: "image/jpeg")
milan.save

zurich = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-07-05",
  end_date: "2025-07-10",
  budget_max: "1300",
  destination: "Zurich",
  mood: "Détente",
  age: 35,
  status: "pending",
  description: "Relax and unwind in Zurich.",
  user: diana
)
file = URI.open('app/assets/images/zurich.jpeg')
zurich.photo.attach(io: file, filename: "zurich.jpeg", content_type: "image/jpeg")
zurich.save

brussels = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-08-20",
  end_date: "2025-08-28",
  budget_max: "2100",
  destination: "Brussels",
  mood: "Détente",
  age: 40,
  status: "confirmed",
  description: "Enjoy the culinary delights of Brussels.",
  user: alice
)
file = URI.open('app/assets/images/brussels.jpeg')
brussels.photo.attach(io: file, filename: "brussels.jpeg", content_type: "image/jpeg")
brussels.save

stockholm = Travel.create!(
  airport_start: "CDG",
  start_date: "2025-09-15",
  end_date: "2025-09-29",
  budget_max: "3100",
  destination: "Stockholm",
  mood: "Culture",
  age: 25,
  status: "pending",
  description: "Explore the beauty and culture of Stockholm.",
  user: bob
)
file = URI.open('app/assets/images/stockholm.jpeg')
stockholm.photo.attach(io: file, filename: "stockholm.jpeg", content_type: "image/jpeg")
stockholm.save

barcelone_two = Travel.create!(
  airport_start: "CDG",
  start_date: "2024-08-20",
  end_date: "2024-08-25",
  budget_max: "2000",
  destination: "Barcelone",
  mood: "Détente",
  age: 28,
  status: "pending",
  description: "Enjoy the beaches and nightlife of Barcelone.",
  user: alice
)
file = URI.open('app/assets/images/barcelone.jpeg')
barcelone_two.photo.attach(io: file, filename: "barcelone.jpeg", content_type: "image/jpeg")
barcelone_two.save

amsterdam_two = Travel.create!(
  airport_start: "CDG",
  start_date: "2024-09-10",
  end_date: "2024-09-14",
  budget_max: "1800",
  destination: "Amsterdam",
  mood: "Aventure",
  age: 35,
  status: "pending",
  description: "Explore the canals and museums of Amsterdam.",
  user: bob
)
file = URI.open('app/assets/images/amsterdam.jpeg')
amsterdam_two.photo.attach(io: file, filename: "amsterdam.jpeg", content_type: "image/jpeg")
amsterdam_two.save

puts "...travel done - 3/4"
puts "attendance create..."

Attendance.create!(
  user_id: 1,
  travel_id: 1,
  status: "confirmed"
)

puts "...attendance done - 4/4"
puts "       SEED DONE        "
