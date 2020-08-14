Service.destroy_all
User.destroy_all

u1 = User.new(email: "paula@test.fr", password: "123456", address: "Marseille")
u1.save!

my_service = Service.new(
    name: "Paula",
    description: "Polyvalente et compétente , spécialisée dans les gateaux d'anniversaire , mariage, gateaux à étages, pour 45€ de l'heure , elle se déplace chez vous,
    avec le gateau de votre choix, et le mange devant vous, très gourmande, elle ne laissera rien :) ",
    price_per_hour: "45€/h",
    localisation: "Marseille"
)
my_service.user = u1
my_service.save!

u2 = User.new(email: "paula1@test.fr", password: "123456", address: "Marseille")
u2.save!

my_service1 = Service.new(
    name:"Argane",
    description: "Je suis dans le var, et je fais des gateaux depuis 8 ans, spécialisée dans la fabrication et la torréfaction de fruits secs pour l'hotelerie de luxe, et haut de gamme",
    price_per_hour: "45€/h",
    localisation: "Marseille"
)
my_service1.user = u2
my_service1.save!

my_service2 = Service.new(
    name: "Laurent",
    description: "Installé à Toulon depuis 28 ans, j'ai le titre de meilleur patissier 2007, mes spécialités : Bavarois, beignets chauds, crêpes,
    charlottes chaudes ou froides, pudding, tartes ou tartelettes, îles flottantes, diverses formes de choux ou d'éclairs, entremêts aux fruits...",
    price_per_hour: "53€/h",
    localisation: "Toulon"
)
my_service2.user = u2
my_service2.save!

my_service3 = Service.new(
    name: "Philippe", 
    description: "PatCuisinier en desserts de restaurant, je fais également les crèmes (anglaise, chantilly, renversées...)
    les sauces  et coulis, les soufflés, les glaces, les salades de fruit..
    Pâtissier de l'année 2013 Gault et Millau..",
    price_per_hour: "65€/h",
    localisation: "Paris"
)
my_service3.user = u2
my_service3.save!

my_service4 = Service.new(
    name:"Michel",
    description: "Je suis chef patissier , chef du restaurant Sarkara à Toulouse, j'ai obtenu deux étoiles Michelin en janvier 2020.
    Mon restaurant est le premier restaurant gastronomique de desserts au monde primé par le guide Michelin",
    price_per_hour: "35€/h",
    localisation: "Toulouse"
)
my_service4.user = u2
my_service4.save! 

my_service5 = Service.new(
    name:"Robin",
    description: "Elu meilleur pâtissier de l'année en 2009.
    Soucieux du bon traitement des animaux je me suis particulièrement spécialisié dans la gastronomie vegan ",
    price_per_hour: "95€/h",
    localisation: " Sarrebourg (Moselle)"
)
my_service5.user = u2
my_service5.save! 

 