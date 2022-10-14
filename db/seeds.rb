puts "🌱 Seeding spices..."

Place.create([
    {
        city: "Denton"
    },
    {
        city: "Dallas"
    },
    {
        city: "Fort Worth"
    },
    {
        city: "Houston"
    },
    {
        city: "Austin"
    },
    {
        city: "San Antonio"
    },
    {
        city: "El Paso"
    },
    {
        city: "Waco"
    },
    {
        city: "Galveston"
    },
    {
        city: "Corpus Christi"
    },
    {
        city: "Laredo"
    },
    {
        city: "South Padre Island"
    },
    {
        city: "Lubbock"
    },
    {
        city: "Amarillo"
    },
    {
        city: "Odessa"
    },
    {
        city: "Marfa"
    },
    {
        city: "Big Bend National Park"
    },
    {
        city: "Fredericksburg"
    },
    {
        city: "New Braunfels"
    },
    {
        city: "San Angelo"
    },
    {
        city: "Canyon"
    },
    {
        city: "Karnack"
    },
    {
        city: "Vanderpool"
    }
])

Attraction.create([
    {
        name: "Denton Arts & Jazz Festival",
        category: "Festival",
        photo: "https://assets.simpleviewinc.com/simpleview/image/upload/crm/denton/arts-and-jazz_F9E8A025-5056-A348-3A23A3E10113BE09_f9e8ed8f-5056-a348-3a9106f05d94fbf4.jpg",
        address: "321 East McKinney St, Denton, Texas 76201",
        phone: "(940) 565-0931",
        website: "https://dentonjazzfest.com/",
        region: "North Texas",
        season: "Fall",
        price: "$",
        duration: "4h",
        description: "Free 3 Day event that includes 7 stages for local musicians, indoor and outdoor art and food vendors, and games and activities for children",
        details: "Second weekend of October, 20 acres, parking is limited",
        place_id: "1"
    },
    {
        name: "Denton Holiday Lighting Festival",
        category: "Festival",
        photo: "https://images.squarespace-cdn.com/content/v1/5106cf89e4b04827cc5fc5bb/1512146104420-EKJ7J1YSU6DRLFZC0C5Z/20507041_10155560765847556_6958584250585866308_o+%281%29.jpg?format=1000w",
        address: "110 W Hickory St, Denton, TX 76201",
        phone: "940-349-8700",
        website: "https://www.dentonholidaylighting.com/",
        region: "North Texas",
        season: "Winter",
        price: "$",
        duration: "3h",
        description: "The Denton Holiday Lighting Festival is a local event full of arts & crafts, food, and music that includes a toy drive for the benefit of Denton families.",
        details: "First Friday of December, 6pm-9pm, parking is limited",
        place_id: "1"
    },
    {
        name: "Sixth Floor Museum & Dealey Plaza",
        category: "Arts, History, & Culture",
        photo: "https://planetofhotels.com/guide/sites/default/files/styles/paragraph__hero_banner__hb_image__1880bp/public/hero_banner/Sixth_Floor_Museum.jpg",
        address: "411 Elm St, Dallas, TX 75202",
        phone: "(214) 747-6660",
        website: "https://www.jfk.org/",
        region: "North Texas",
        season: "Any",
        price: "$",
        duration: "1h 30m",
        description: "The museum examines the life, times, death, and legacy of United States President John F. Kennedy and the life of Lee Harvey Oswald as well as the various conspiracy theories surrounding the assassination.",
        details: "Paid parking is located next to the museum.",
        place_id: "2"
    },
    {
        name: "Modern Art Museum of Fort Worth",
        category: "Arts, History, & Culture",
        photo: "https://www.busytourist.com/wp-content/uploads/2020/10/Modern-Art-Museum-of-Fort-Worth.jpg.webp",
        address: "3200 Darnell St, Fort Worth, Tx 76107",
        phone: "(817) 738-9215",
        website: "https://www.themodern.org/",
        region: "North Texas",
        season: "Any",
        price: "$",
        duration: "3h",
        description: "The Modern is an art museum of post-World War II art in Fort Worth, Texas with a collection of international modern and contemporary art.",
        details: "Complimentary coat and parcel check with self-service lockers.Limited parking is available on the premises, Free parking is available in the museum parking lots. The Museum offers half-price tickets on Sundays and free admission on Fridays.",
        place_id: "3"
    },
    {
        name: "Nasa Space Center",
        category: "Science & Technology",
        photo: "https://media.tacdn.com/media/attractions-splice-spp-674x446/09/12/08/97.jpg",
        address: "1601 E NASA Pkwy, Houston, TX 77058",
        phone: "(281) 244-2100",
        website: "https://spacecenter.org/",
        region: "Texas Gulf Coast",
        season: "Any",
        price: "$$",
        duration: "5h",
        description: "Space Center Houston is a science museum that serves as the official visitor center of NASA Johnson Space Center in Houston. ",
        details: "A tram is required to visit the Space Center, parking is available for a free.",
        place_id: "4"
    },
    {
        name: "The White Horse",
        category: "Nightlife",
        photo: "https://lostinaustin.org/wp-content/uploads/2016/09/blog-best-austin-honky-tonks-header.jpg",
        address: "500 Comal St, Austin, TX 78702",
        phone: "(512) 553-6756",
        website: "https://www.thewhitehorseaustin.com/",
        region: "Hill Country",
        season: "Any",
        price: "$",
        duration: "1h+",
        description: "The White Horse is a Honky Tonk with live music, dancing, and drinks",
        details: "The White Horse is a 21+ venue that is open every day of the week 6pm-2pm, and is availabe to rent out for private receptions, ",
        place_id: "5"
    },
    {
        name: "The Alamo",
        category: "Arts, History, & Culture",
        photo: "https://www.thealamo.org/fileadmin/_processed_/3/9/csm_a27084a0214_f71edad0d0.jpg",
        address: "300 Alamo Plaza, San Antonio, TX 78205",
        phone: "(210) 225-1391",
        website: "https://www.thealamo.org/",
        region: "South Texas",
        season: "Spring",
        price: "$",
        duration: "1h 30m",
        description: "The Alamo Mission, commonly called the Alamo, is a historic Spanish mission and fortress compound founded in the 18th century by Roman Catholic missionaries in what is now San Antonio, Texas, United States.",
        details: "Open Daily: 9 a.m. - 5:30 p.m., most of the Alamo historic site is outdoors, The Alamo does not offer parking but downtown San Antonio has a number of public parking lots close by.",
        place_id: "6"
    },
    {
        name: "The Plaza Theatre",
        category: "Music & Film",
        photo: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/31/59/36/top-view-of-the-house.jpg?w=1200&h=1200&s=1",
        address: "125 W Mills Ave, El Paso, TX 79901",
        phone: "(915) 231-1100",
        website: "https://elpasolive.com/venues/plaza-theatre",
        region: "West Texas",
        season: "Any",
        price: "$-$$$",
        duration: "2h+",
        description: "The Plaza Theatre is a historic building in El Paso, Texas built in 1930. The theater stands as one of the city's most well-known landmarks, and remains operational today.",
        details: "The Plaza Theater showcases a wide variety of music and more.",
        place_id: "7"
    }
])

puts "✅ Done seeding!"
