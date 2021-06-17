require 'faker'

User.destroy_all
Venue.destroy_all


user1 = User.create!(
    first_name: "Bobby",
    last_name: "Lee",
    email: "bobbyl@aa.io",
    password: "password",
    is_manager:"true"
)
user2 = User.create!(
    first_name: "Theo",
    last_name: "Ron",
    email: "theor@aa.io",
    password: "password",
    is_manager:"true"
)
user3 = User.create!(
    first_name: "Andrew",
    last_name: "Bantino",
    email: "andrewb@aa.io",
    password: "password",
    is_manager:"true"
)
user4 = User.create!(
    first_name: "Joe",
    last_name: "Pogan",
    email: "joer@aa.io",
    password: "password",
    is_manager:"true"
)
user5 = User.create!(
    first_name: "Nikki",
    last_name: "Tazer",
    email: "nikkit@aa.io",
    password: "password",
    is_manager:"false"
)
user6 = User.create!(
    first_name: "Mark",
    last_name: "Spormand",
    email: "marks@aa.io",
    password: "password",
    is_manager:"false"
)
user7 = User.create!(
    first_name: "Jessica",
    last_name: "Pirson",
    email: "jessicanP@aa.io",
    password: "password",
    is_manager:"false"
)
user8 = User.create!(
    first_name: "Stephany",
    last_name: "Turry",
    email: "stephanyt@aa.io",
    password: "password",
    is_manager:"false"
)
user9 = User.create!(
    first_name: "Klay",
    last_name: "Rompson",
    email: "klayR@aa.io",
    password: "password",
    is_manager:"false"
)
user10 = User.create!(
    first_name: "Draymond",
    last_name: "Blue",
    email: "drayb@aa.io",
    password: "password",
    is_manager:"false"
)

venue1 = Venue.create!(
    user_id:1,
    name: "House of Prime Rib",
    address: "1906 Van Ness Ave",
    city: "Paris",
    zipcode: "75009",
    price: "$$$$",
    cuisine: 'Steak',
    category: "Restaurant",
    seatnumber:"40",
    phone_number: "(415) 885-4605",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 37.793487, 
    lng: -122.422735,
    description: "62 years of loyal customers can't be wrong. We are grateful to all our customers, employees, and critics (...though we may not always agree!). The only way to find out the truth is with a visit. Often imitated, never duplicated. Thank you in advance."     
)

venue2 = Venue.create!(
    user_id:2,
    name: "Providence",
    address: "5955 Melrose Ave",
    city: "Paris",
    zipcode: "75012",
    price: "$$$$",
    cuisine: 'Seafood',
    category: "Restaurant",
    seatnumber:"45",
    phone_number: "(323) 460-4170",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 34.083677, 
    lng: -118.330198,
    description: "Two Michelin Stars; 2019 Best Chef: West-Michael Cimarusti, 2013, 2014, 2015, 2016, 2017 Best Restaurant, LA Times; 2010 Chef of the Year, Angeleno Magazine; 2014, 2012, 2011 and 2010 Best Chef Nominee, James Beard Foundation; Best New Restaurants, Esquire Magazine; Best New Restaurant nominee, James Beard Foundation; Best Chef Pacific nominee, James Beard Foundation; Best Seafood Restaurant, Los Angeles Magazine; Top 40 Restaurants in the United States, Gayot.com; Top 50 Restaurants in the United States, Gourmet Magazine." 
)

venue3 = Venue.create!(
    user_id:3,
    name: "Bouchon at The Venetian",
    address: "3355 Las Vegas Blvd South",
    city: "Paris",
    zipcode: "75010",
    price: "$$$",
    cuisine: 'French',
    category: "Restaurant",
    seatnumber:"30",
    phone_number: "(323) 460-4170",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 36.120966, 
    lng: -115.169228,
    description: "Thomas Keller's Bouchon is located in the Venetian Resort-Hotel-Casino, Venezia Tower. Renowned designer Adam D. Tihany has masterfully created a beautiful interior that features a magnificent French pewter bar, a vibrant mosaic floor, deep blue velvet banquettes, antique light fixtures and an expansive hand-painted mural by noted French artist Paulin Paris. The exquisite décor is the perfect setting for Bouchon’s culinary delights. Chef Crain rediscovers the classics, using historical reference points and classic French techniques, combined with a modern approach. The menu offers classic bistro dishes including steak frites, roasted chicken, quiche, boudin noir, pot de crème and profiteroles. The selection of fruits de mer is celebrated as one of the finest in Las Vegas. The seasonal menu changes throughout the year and is enhanced by a blackboard menu featuring the best products available each day. Flawlessly executed in every aspect, Bouchon delights both the palate and the eye"     
)

venue4 = Venue.create!(
    user_id:4,
    name: "Koi",
    address: "40 West 40th Street",
    city: "Paris",
    zipcode: "75015",
    price: "$$$",
    cuisine: 'Japanese',
    category: "Restaurant",
    seatnumber:"25",
    phone_number: "(212) 921-3330",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 40.752923, 
    lng: -73.983781,
    description: "Rich earth tones of orange, red and brown impart warmth to the cool and tranquil space. Thin tapestries of translucent rose fabric are embellished with flame motifs and suspended from the ceiling, creating a separate seating area perfect for a light bite near the large front windows. Famous for its unique and mouth-watering interpretation of Japanese cuisine. Upscale Japanese fare is given a jolt of new life through an innovative use of ingredients, resulting in refreshing and exciting flavor combinations. Crispy Rice with Spice Tuna, an addictive version of the classic spicy tuna roll, featuring warm grilled rice topped with a thick layer of cool, savory tuna. Baked Crab Roll, for which succulent fresh crabmeat is wrapped in a thin rice crepe paper dotted with sesame seeds and baked to perfection. Hamachi Fusion with Soy-Citrus and Truffle Essence all artfully plated by Koi’s skilled culinary team."     
)

venue5 = Venue.create!(
    user_id:1,
    name: "Amber India",
    address: "25 Yerba Buena",
    city: "Paris",
    zipcode: "75002",
    price: "$$$",
    cuisine: 'Indian',
    category: "Restaurant",
    seatnumber:"33",
    phone_number: "(212) 921-3330",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 37.785900, 
    lng: -122.404679,
    description: "Amber India Restaurant embodies the spirit and essence of fine Indian cuisine. Located in the heart of downtown San Francisco, Amber India Restaurant takes Indian cuisine to a new culinary level, while still holding true to its traditional nuances. Much like the ambiance within the restaurant, Amber India’s cuisine is a mix of modern style with traditional roots. The delectable cuisine, the well paired wines, and the exotic cocktails are sure to indulge anyone’s senses. The split-level three-story restaurant can easily accommodate 140 people, with a private dining room in the back for up to 25 people. With its vaulted ceilings, stylish décor, and a constant LED light show behind the bar, Amber India Restaurant is truly a feast for both the mouth as well as the eyes."
)

venue6 = Venue.create!(
    user_id:2,
    name: "Bestia",
    address: "2121 E. 7th",
    city: "Paris",
    zipcode: "75002",
    price: "$$$",
    cuisine: 'Italian',
    category: "Restaurant",
    seatnumber:"40",
    phone_number: "(213) 514-5724",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 34.033680, 
    lng: -118.229127,
    description: "A multi-regional Italian restaurant in the Arts District of downtown Los Angeles."
)

venue7 = Venue.create!(
    user_id:3,
    name: "Lexington Brass",
    address: "517 Lexington Ave",
    city: "Paris",
    zipcode: "75003",
    price: "$$$",
    cuisine: 'American',
    category: "Restaurant",
    seatnumber:"27",
    phone_number: "(212) 392-5976",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 40.755296, 
    lng: -73.972945,
    description: "Located adjacent to the Hotel 48 Lex in midtown Manhattan, Lexington Brass is a new age American Brasserie focused on bringing high quality dishes to diners in search of an authentic New York experience. Using only the finest, locally sourced ingredients from some of the region’s most trusted purveyors, the bustling, 100 seat restaurant combines organic, nutrient-rich proteins and fresh, seasonal produce to create a menu of hearty, tasty dishes including the Organic Pennsylvania Dutch Crispy Chicken Salad, Brass Health Bowl, vegetarian Mushroom Pasta and Herb-Roasted Branzino with many gluten free, dairy free and vegan options to boot. Offering reasonable price points and reliable quality in a relaxed upscale environment, Lexington Brass stands beside the business backdrop of modern midtown and sets itself apart with elevated brasserie favorites and a top notch team of hospitality professionals at your service breakfast, lunch, dinner and into the late evening hours."
)

venue8 = Venue.create!(
    user_id:3,
    name: "Nacho Daddy",
    address: "3663 Las Vegas Blvd",
    city: "Paris",
    zipcode: "75018",
    price: "$$",
    cuisine: 'Mexican',
    category: "Restaurant",
    seatnumber:"40",
    phone_number: "(212) 392-5976",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 36.110301, 
    lng: -115.171199,
    description: "Las Vegas born and raised since 2010, Nacho Daddy is a locally owned modern Mexican restaurant setting the industry standard for fighting children's hunger in the community while also serving honest food to our friends. Don't let our name fool you, we don't serve nachos...we serve the MOST INSANE GOURMET NACHOS smothered in queso and salsa made fresh daily, and we guarantee you'll never find a dry chip! Nachos nach'yo thing? No worries - we have something for everyone, including all day breakfast, tasty Mexican-American collisions, and a full vegan menu. Be sure to try our housemade specialty drinks, including our Best of Las Vegas 'Daddy's Margarita', or if you're feeling brave we dare you to #getstung with our world famous Scorpion Shot as seen on Tanked and the Food Network."
)

venue9 = Venue.create!(
    user_id:4,
    name: "The Publican",
    address: "3663 Las Vegas Blvd",
    city: "Paris",
    zipcode: "75019",
    price: "$$",
    cuisine: 'American',
    category: "Restaurant",
    seatnumber:"15",
    phone_number: "(212) 392-5976",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 41.886602, lng: -87.648971,
    description: "From the team behind Blackbird and avec comes this homage to beer, pork, and fish. Executive Chef Paul Kahan and Chef de Cuisine Dennis Bernard have developed a network of purveyors to supply the restaurant with hand-selected, sustainably-harvested fish and seafood as well as sustainably-raised heirloom pork to anchor a rustic menu of simple, eclectic fare. The extensive international beer list, developed by partners Eduard Seitan and Terry Alexander and now Beer Director Adam Vavrick, features 100 or so ales, lagers, stouts and ciders by the bottle, 12 of those available on tap. Like Blackbird and avec, The Publican is a design partnership from the James Beard Award-winning team of Thomas Schlesser and partner Donnie Madia."
)


venue10 = Venue.create!(
    user_id:1,
    name: "Zingari Rooftop Ristorante",
    address: "501 Post St",
    city: "Paris",
    zipcode: "75013",
    price: "$$$",
    cuisine: 'Italian',
    category: "Restaurant",
    seatnumber:"17",
    phone_number: "(212) 392-5976",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 37.787825, lng: -122.410370,
    description: "Welcome to our Rooftop Ristorante. Sip your Spritz or Negroni while you dine on Pappardelle and Ossobuco with Aperitivo music in the open air. With house-made pastas and roasted or grilled meats and fish around Italian wine and classic Italian cocktails, Zingari is a beautiful, lively place for you to restore and feel at home with your guests. Our Rooftop Ristorante is truly a unique event space and one of the best restaurants for group events and private dining in San Francisco."
)

venue11 = Venue.create!(
    user_id:1,
    name: "Wayfare Tavern",
    address: "501 Post St",
    city: "Paris",
    zipcode: "75004",
    price: "$$",
    cuisine: 'American',
    category: "Restaurant",
    seatnumber:"32",
    phone_number: "(415) 772-9060",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 37.794008, lng: -122.402327,
    description: "Chef Tyler Florence brings his passion for high quality and style to San Francisco with his new flagship restaurant, Wayfare Tavern. A classic San Francisco Tavern featuring authentic American dishes inspired by local cuisine at the turn of the 20th century, the menu ranges from classic comforts to rustic delicacies. The beverage menu features locally-sourced wines including a selection of Florence's own label, quality draft beers and organic root beer as well as classic Victorian-era cocktails. All three floors of the restaurant have been designed keeping historical accuracy in mind making Wayfare Tavern reminiscent of a Victorian parlor and an Edwardian men's club, where anything goes from black-tie to blue jeans. Pull up a stool to the Chef's Counter at the open kitchen and look on as Chef prepares your lunch or head to the Library and Billiard Room for a game of pool. Wayfare Tavern is a truly unparalleled dining experience translated from a century ago. Photo: John Lee."
)

venue12 = Venue.create!(
    user_id:2,
    name: "Foreign Cinema",
    address: "2534 Mission St",
    city: "Paris",
    zipcode: "75008",
    price: "$$",
    cuisine: 'American',
    category: "Restaurant",
    seatnumber:"20",
    phone_number: "(415) 772-9060",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 37.756471, lng: -122.419252,
    description: "Foreign Cinema is a one of a kind, nationally acclaimed restaurant combining independent films with California-Mediterranean cooking. Enjoy an airy yet chic setting, complete with indoor dining room with a fireplace, outdoor courtyard, mezzanine, gallery curated by Modernism & full bar in the main dining room. There is also a great cocktail bar, Laszlo, as you enter from Mission Street."
)

venue13 = Venue.create!(
    user_id:2,
    name: "Gracias Madre",
    address: "2211 Mission St",
    city: "Paris",
    zipcode: "75007",
    price: "$$",
    cuisine: 'Mexican',
    category: "Restaurant",
    seatnumber:"14",
    phone_number: "(415) 772-9060",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 37.761549, lng: -122.418976,
    description: "Gracias Madre is truly an expression of who we are – it represents our deep love of and reverence for food, our commitment to health and sustainability, our unconditional love for our multicultural family and community, our devotion to the Earth and the divine feminine, and our commitment to raising consciousness on the planet. It is our intention that the emphasis we place on the sourcing of our food will bring consciousness in the community to the importance of sustainability and of buying and selling locally grown organic food. In an effort to cultivate a shared experience of nourishment through food and community, all tables at Gracias Madre are sat communally."
)

venue14 = Venue.create!(
    user_id:3,
    name: "Ombu Grill",
    address: "400 S Western Ave",
    city: "Paris",
    zipcode: "75006",
    price: "$$$",
    cuisine: 'Korean',
    category: "Restaurant",
    seatnumber:"38",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 34.067000, lng: -118.308883,
    description: "Ombu Grill is a casual chic Los Angeles Korean barbecue restaurant, featuring a twist of Argentinian asado in a unique mix of cuisines. Our premium quality Korean meats include favorites such as prime beef short ribs, pork, and seafood alongside authentic side dishes (banchan) and fresh salads. We also provide an Argentinian asado experience. Enjoy it alone, or pair the ribs with essential achuras for a complete parrillada combination. Guests delight in relaxing in our space with a modern and sophisticated ambiance. High backed booths and private rooms for small or large groups accommodate both personal and professional occasions, free from any loud interruptions or distractions. Strategic pops of color make for a trendy and inviting environment, while lush greenery provides a positive energy. Our high-tech smokeless grills are just one of many sleek details found at Ombu Grill."
)

venue15 = Venue.create!(
    user_id:4,
    name: "Prime & Provisions Steakhouse",
    address: "222 N La Salle St",
    city: "Paris",
    zipcode: "75005",
    price: "$$$$",
    cuisine: 'Steak',
    category: "Restaurant",
    seatnumber:"23",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 41.886423, lng: -87.633255,
    description: "Prime & Provisions celebrates the simplicity of true steakhouse cuisine and prides itself on its' mission: to source the absolute best domestic beef available in the United States. Prime & Provisions' is the only steakhouse in Chicago to serve USDA Prime Creekstone Farms 100% All Natural Black Angus Beef, humanely raised, with no hormones or antibiotics. While the menu reconnects with traditional steakhouse roots, the decor highlights the vintage opulence of 222 North LaSalle's 'Crown Building' and creates a social experience that connects the modern-day patron with the sophistication and glamor of the era in which the building was first constructed. Prime & Provisions also offers a variety of private and semi-private dining spaces, including Prime Private, one of the largest and most intimate private dining rooms in Chicago."
)


venue16 = Venue.create!(
    user_id:2,
    name: "Arte Cafe",
    address: "106 W 73rd St",
    city: "Paris",
    zipcode: "75009",
    price: "$$$",
    cuisine: 'Italian',
    category: "Restaurant",
    seatnumber:"31",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 40.778078, lng: -73.978851,
    description: "West of Strawberry Fields, Arte Cafe located in a landmark brownstone, celebrating 22 years of serving the Upper West Side. Just steps away from Central Park presents upscale pan-Italian cuisine with artisanal homemade pastas, fresh meats, fish, pizza from a brick-oven and sumptuous desserts. Private rooms are available for all events and budgets."
)

venue17 = Venue.create!(
    name: "Takami Sushi & Robata Restaurant",
    address: "811 Wilshire Blvd",
    city: "Paris",
    zipcode: "75010",
    price: "$$$",
    cuisine: 'Japanese',
    category: "Restaurant",
    seatnumber:"34",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 40.778078, lng: -73.978851,
    description: "West of Strawberry Fields, Arte Cafe located in a landmark brownstone, celebrating 22 years of serving the Upper West Side. Just steps away from Central Park presents upscale pan-Italian cuisine with artisanal homemade pastas, fresh meats, fish, pizza from a brick-oven and sumptuous desserts. Private rooms are available for all events and budgets."
)

venue18 = Venue.create!(
    user_id:4,
    name: "NoMI",
    address: "800 N Michigan Ave",
    city: "Paris",
    zipcode: "75014",
    price: "$$$",
    cuisine: 'French',
    category: "Restaurant",
    seatnumber:"28",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 41.897037, lng: -87.625042,
    description: "NoMI represents a variety of unique dining experiences in NoMI Lounge and seasonal rooftop NoMI Garden, both serving modern French cuisine and sushi paired with skyline views."
)

venue19 = Venue.create!(
    user_id:1,
    name: "Salty's on Alki Beach",
    address: "1936 Harbor Ave",
    city: "Paris",
    zipcode: "75016",
    price: "$$$",
    cuisine: 'Seafood',
    category: "Restaurant",
    seatnumber:"40",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 47.586568, lng: -122.376472,    
    description: "Located on Alki Beach with the most spectacular view of the Seattle skyline, Salty's is one of the Top 100 Most Scenic Restaurants and Top 100 Best Brunches in America by OpenTable. Come dressed up or casual to enjoy our waterfront decks, patios, dining room, and private dining. Salty’s is renowned for our seasonal seafood, Northwest coastal cuisine, playful atmosphere, and uncommonly warm service. Our Northwest wine menu has won the Wine Spectator’s Award of Excellence since 2003. For nearly four decades, Salty’s has proudly welcomed generations of locals and travelers celebrating vacations, engagements, business, or simply a lovely day on the water. Join us for astonishing northwest coastal cuisine, service & smiles! We are proudly independent, family owned and operated with woman ownership."
)

venue20 = Venue.create!(
    user_id:2,
    name: "Canlis",
    address: "2576 Aurora Ave",
    city: "Paris",
    zipcode: "75017",
    price: "$$$$",
    cuisine: 'American',
    category: "Restaurant",
    seatnumber:"41",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 47.643063, lng: -122.346790,    
    description: "This is a place where you feel welcomed. Run by the Canlis family, Canlis is the Pacific Northwest's most celebrated restaurant, winner of twenty consecutive Wine Spectator Grand Awards and three time James Beard runner up for best service in the country. Voted Most Romantic, Best View, Best Service, Best Design, Top Wine List and Wine Service, Washington Family Business of the year, and Best Overall Restaurant. At Canlis we are learners, and after 66 years of serving Seattle, we believe we're just beginning to get things right. We look forward to meeting you."
)

venue21 = Venue.create!(
    user_id:2,
    name: "Wild Ginger McKenzie",
    address: "2202B 8th Ave",
    city: "Paris",
    zipcode: "75020",
    price: "$$$$",
    cuisine: 'Asian',
    category: "Restaurant",
    seatnumber:"42",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 47.617671, lng: -122.339310,   
    description: "Wild Ginger has been a staple in the Seattle food scene since 1989 - serving authentic Southeast Asian cuisine, craft cocktails, and more. This location has a hip, modern vibe and an industrial feel complete with a large U-shaped bar, custom lighting, authentic artwork and décor (such as a beautiful multi-colored Indian wedding shawl), Indonesian wood and copper details, floor-to-ceiling glass windows, an outdoor patio, and more. Both the bar and satay counter provide guests the opportunity to see all of the action unfold right in front of them. Enjoy dining outside this summer on our patio!"
)

venue22 = Venue.create!(
    user_id:3,
    name: "Ivar's Acres of Clams",
    address: "1001 Alaskan Way",
    city: "Paris",
    zipcode: "75019",
    price: "$$$$",
    cuisine: 'French',
    category: "Restaurant",
    seatnumber:"34",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 47.604106, lng: -122.339167,   
    description: "We're happy to welcome you back for seated dining. We appreciate the support you've shown us during these challenging times and want to ensure your safety and comfort come first when visiting us. We're taking extra precautions and steps to create an extra safe environment, including additional sanitization throughout our restaurants, proper spacing among parties, minimal contact between servers and guests and additional health screening and training of our staff. Due to space limitations within our restaurant, reservations are recommended."
)

venue23 = Venue.create!(
    user_id:4,
    name: "Ohlala French Bistro",
    address: "2120 N Rampart Blvd",
    city: "Paris",
    zipcode: "75011",
    price: "$$",
    cuisine: 'French',
    category: "Restaurant",
    seatnumber:"36",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 36.198677, lng: -115.282829, 
    description: "OHLALA is a modern french bistro that make you fall in love with french food. Ohlala had been created by Richard Terzaghi, owner of L'Osteria Del Forno in San Francisco. In the Industry restaurant since 2002. Whether you’re looking for a romantic rendez-vous or a place to enjoy for happy hour with large choice of different plates to share, you’ll find the perfect spot at OHLALA. The décor midway between little Parisian bistro and cozy restaurant is ideal for Rendez-Vous and happy friends meeting. The bar waits for you, enjoy happy hours, and wine tasting. OHLALA definitely awaits for you. The large choice of small plates to share, tartines and full dishes in the respect of traditional french cook will delight the food lovers The wine list is comprised of high quality yet affordable wines from France and California."
)

venue24 = Venue.create!(
    user_id:2,
    name: "The Capital Grille",
    address: "3200 Las Vegas Blvd",
    city: "Paris",
    zipcode: "75002",
    price: "$$",
    cuisine: 'Steak',
    category: "Restaurant",
    seatnumber:"39",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 36.127114, lng: -115.171110, 
    description: "You are cordially invited to be wined, dined and dazzled at The Capital Grille. Enjoy nationally renowned steaks—dry aged and hand-cut on premises by our in-house butchers—the freshest of seafood, creative sides, and irresistible desserts prepared on-site every day. All accompanied by an acclaimed wine list, carefully curated and featuring over 350 labels from around the world. Experience gracious, anticipatory service in our comfortable, sophisticated dining room."
)

venue25 = Venue.create!(
    user_id:1,
    name: "SUSHISAMBA",
    address: "3327 Las Vegas Blvd",
    city: "Paris",
    zipcode: "75011",
    price: "$$",
    cuisine: 'Japanese',
    category: "Restaurant",
    seatnumber:"40",
    phone_number: "(213) 297-5658",
    photo: 'https://source.unsplash.com/640x427/?dish',
    lat: 36.123637, lng: -115.168292, 
    description: "Only at SUSHISAMBA will you find a unique blend of Japanese, Brazilian and Peruvian cuisine, music and design. Hearty moquecas and colorful seviches are served alongside more inventive dishes, including Tuna Tataki and Wagyu Gyoza. Complementing the menu are signature cocktails and an acclaimed sake list, as well as wine, beer and champagne. Equal parts imagination and history, the SUSHISAMBA experience is truly unique."
)
puts "seed ended"

