# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
OrderItem.destroy_all
Product.destroy_all

    Product.create!([{
        name: "At Home Kegerator",
        description: "Let your social anxiety win by enjoying a freshly poured beer in the comforts of your own home.",
        price: 129.99,
        image: "https://m.media-amazon.com/images/I/61HYSOT-fNL._AC_SX679_.jpg",
    },
    {
        name: "Human-Sized Dog Bed",
        description: "You'll be taking over your pets bed in no time! Oh, how the tables have turned!",
        price: 104.99,
        image: "https://cdn.shopify.com/s/files/1/0549/1638/2879/products/FunnyFuzzy_SuperLargeLuxurySleepDeeperHumanDogBed6_2760adce-74c4-4618-940e-611f78107054_720x.jpg?v=1668397760"
    },
    {
        name: "Hydration Pack",
        description: "When you want to be hands free but can't stand the thought of being away from your waterbottle.",
        price: 54.99,
        image: "https://www.osprey.com/images/product/hero/skimmerres16_s19_side_sapphireblue.jpg"
    },        
    {
          name: "Coffee Mug",
        description: "Let everyone one know life's got ya down with this strange illustration of a crab smoking a cigarette.",
        price: 9.99,
        image: "https://images.lookhuman.com/render/standard/ZRcyIEUB89ifE0vUEODoOGaaq4TmYzpY/mug11oz-whi-z1-t-life-is-relentless.jpg"
    },
    {
        name: "Chinese Evergreen",
        description: "Make your co-workers think you are a plant expert with this easy-to-care-for plant in your BlueJeans background!",
        price: 49.99,
        image: "https://www.gardendesign.com/pictures/images/900x705Max/site_3/chinese-evergreen-plant-aglaonema-shutterstock-com_15962.jpg"
    },
    {
        name: "Boston Stoker's Original Grogg",
        description: "It's extra flavorful, so you can drink it black without hating your life! (Hint: It tastes even better in a fun mug!)",
        price: 12.99,
        image: "https://cdn11.bigcommerce.com/s-swnop9phre/images/stencil/1280x1280/products/411/1189/Original_Grogg__55198.1668179338.jpg?c=2"
    }])
    p "Created #{Product.count} Products"