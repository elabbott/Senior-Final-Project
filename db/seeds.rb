# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Child.delete_all
School.delete_all
User.delete_all
Meal.delete_all

User.create!(
    email: "jkbenoit@valdosta.edu",
    password: "123123123",
    fname: "Jacob",
    lname: "Benoit",
    franchise: false,
    approved: true,
    dob: '06/02/1992',
    zipcode: 31601,
    user_type: 4
)

User.create!(
    email: "elabbott@valdosta.edu",
    password: "123123123",
    fname: "Eric",
    lname: "Abbott",
    franchise: false,
    approved: true,
    dob: '01/13/1993',
    zipcode: 31602,
    user_type: 3
)

User.create!(
    email: "parent@ppp.ppp",
    password: "123123123",
    fname: "Erica",
    lname: "Bust",
    franchise: false,
    approved: true,
    dob: '01/13/1931',
    zipcode: 31602,
    user_type: 2
)
User.create!(
    email: "franchise@f.com",
    password: "123123123",
    fname: "Jim",
    lname: "Jimmerson",
    franchise: true,
    approved: true,
    dob: '01/13/1931',
    zipcode: 31602,
    user_type: 2
)
User.create!(
    email: "user@u.com",
    password: "123123123",
    fname: "User",
    lname: "Name",
    franchise: false,
    approved: true,
    dob: '01/13/1931',
    zipcode: 31602,
    user_type: 2
)

School.create!(
    name: "Valdosta Elementary",
    zipcode: 31601,
    school_id: 1
 )

School.create!(
    name: "Valdosta Middle",
    zipcode: 31602,
    school_id: 2
 )
 
 School.create!(
    name: "Dewar Valdosta Elementary",
    zipcode: 31605,
    school_id: 3
 )
 
 School.create!(
    name: "Clyatville Valdosta Elementary",
    zipcode: 31601,
    school_id: 4
 )

 School.create!(
    name: "Mason Valdosta Elementary",
    zipcode: 31602,
    school_id: 5
 )

 School.create!(
    name: "Newbern Middle School",
    zipcode: 31602,
    school_id: 6
 )
 
  School.create!(
    name: "Lowndes Middle School",
    zipcode: 31601,
    school_id: 7
 )
  
 Meal.create!(
    name: "Spaghetti",
    description: "Noodles, Sauce, and Meat",
    calories: 221,
    price: 5.45,
    image_url: open('app/assets/images/spaghetti.jpg')
  )
  
  Meal.create!(
    name: "Hamburger and Fries",
    description: "Beef Patty and Bread buns with potato fries",
    calories: 719,
    price: 3.99,
    image_url: open('app/assets/images/burger.jpg')
  )
  
   Meal.create!(
    name: "Fresh Fruits",
    description: "Fresh fruits and vegetables",
    calories: 250,
    price: 2.99,
    image_url: open('app/assets/images/fruits.jpg')
  )
  
   Meal.create!(
    name: "Fish",
    description: "Fish with brocolli",
    calories: 650,
    price: 6.99,
    image_url: open('app/assets/images/fish.jpg')
  )
  
   Meal.create!(
    name: "Pizza",
    description: "Pizza Margheritta",
    calories: 900,
    price: 5.99,
    image_url: open('app/assets/images/pizza.jpg')
  )
  
  Meal.create!(
    name: "Rolls",
    description: "Spring Rolls with eggs",
    calories: 440,
    price: 2.99,
    image_url: open('app/assets/images/spring roll.jpg')
  )
  
  Meal.create!(
    name: "Shrimp",
    description: "Shrimp toast",
    calories: 500,
    price: 7.99,
    image_url: open('app/assets/images/shrimp.jpg')
  )
  
  Meal.create!(
    name: "Teriyaki Wings",
    description: "Teriyaki Wings",
    calories: 900,
    price: 7.99,
    image_url: open('app/assets/images/teriaky.jpg')
  )
  
  Meal.create!(
    name: "Fried scallops",
    description: "Fried scallops with crab salad",
    calories: 850,
    price: 7.99,
    image_url: open('app/assets/images/scalops.jpg')
  )
  
  Meal.create!(
    name: "Chicken Lo-Mein",
    description: "Chicken Lo-Mein",
    calories: 600,
    price: 5.99,
    image_url: open('app/assets/images/chicken-lo-mein.jpg')
  )
  
  Meal.create!(
    name: "Beef Lo-Mein",
    description: "Beef Lo-Mein",
    calories: 600,
    price: 5.99,
    image_url: open('app/assets/images/beef-lo-mein.jpg')
  )
  
  Meal.create!(
    name: "Sesame Chicken",
    description: "Chunks chicken in golden brown sauce & served w.steamed broccoli (sesame in the top)",
    calories: 820,
    price: 8.99,
    image_url: open('app/assets/images/sesame.jpg')
  )
  
  Meal.create!(
    name: "Dragon & Phoenix",
    description: "Shrimp w. snow peas, broccoli in Chef special sauce and General Tso's chicken",
    calories: 900,
    price: 8.99,
    image_url: open('app/assets/images/dragon.jpg')
  )
  
  Meal.create!(
    name: "Szechuan Orange Chicken",
    description: "Small chunks of chicken coated w. special spicy sauce flavored w. orange peels",
    calories: 900,
    price: 8.99,
    image_url: open('app/assets/images/szechuan.jpg')
  )
  
  Meal.create!(
    name: "Seafood Delight",
    description: "Fresh shrimp, scallops, lobster meat, sauteed assorted Chinese vegetable",
    calories: 900,
    price: 8.99,
    image_url: open('app/assets/images/seafood.jpg')
  )

  Franchise.create!(
    school_id: 2,
    user_id: 4,
    zipcode: 31602,
    name: "Mcdonalds",
    approved: true
  )
  
  Child.create!(
    name: "Billy Bob",
    dob: '06/02/2002',
    parent_id: 5,
    school_id: 2,
    approved: true
  )
