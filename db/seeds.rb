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
        name: "Non-Secular Holiday Tree",
        description: "Fight away the seasonal depression with this 7 foot tall, glowing beauty",
        price: 79.99,
        image: "https://secure.img1-cg.wfcdn.com/im/57410547/resize-h445%5Ecompr-r85/1273/127382134/60%27%27+Lighted+Trees+%26+Branches.jpg",
    },
    {
        name: "Human-Sized Dog Bed",
        description: "Have you been jealous of how comfortable your pet looks in their bed?",
        price: 104.99,
        image: "https://cdn.shopify.com/s/files/1/0549/1638/2879/products/FunnyFuzzy_SuperLargeLuxurySleepDeeperHumanDogBed6_2760adce-74c4-4618-940e-611f78107054_720x.jpg?v=1668397760"
    },
    {
        name: "Coffee Mug",
        description: "Let everyone one know life's got ya down with this strange illustration of a crab smoking a cigarette.",
        price: 9.99,
        image: "https://images.lookhuman.com/render/standard/ZRcyIEUB89ifE0vUEODoOGaaq4TmYzpY/mug11oz-whi-z1-t-life-is-relentless.jpg"
    },
    {
        name: "Phone Jail",
        description: "Stop spending hours on your phone when you know dang well that you should be working. Put that habit in the clinker.",
        price: 14.99,
        image: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTSoWrnU_-8Ux968-uVdnooGWDGeaUpnNxUkDkAHZ7UvCCYhkcQ4HmA0kjv9esvWCRt_mt6EcOI4GKYfDsy765lFd4BEw&usqp=CAc"
    },
    {
        name: "Slippers",
        description: "The perfect pair of slippers for any sneaker-head. Crease-free guarantee.",
        price: 39.99,
        image: "https://i.etsystatic.com/11164402/r/il/ccc1f2/1629397642/il_fullxfull.1629397642_jclv.jpg"
    },
    {
        name: "Travel Pillow",
        description: "Feeling stressed? These hands will gently cradle your head in even the darkest of times. ",
        price: 19.99,
        image: "https://helios-i.mashable.com/imagery/articles/02WUr2DtnMyd3t0lantZCoJ/hero-image.fill.size_1248x702.v1623367267.jpg"
    }])
    p "Created #{Product.count} Products"