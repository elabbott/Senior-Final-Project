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
    dob: '06/02/1992',
    zipcode: 31601,
    user_type: 4
)

User.create!(
    email: "elabbott@valdosta.edu",
    password: "123123123",
    fname: "Eric",
    lname: "Abbott",
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
    approved: false,
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


  
 Meal.create!(
    name: "Spaghetti",
    description: "Noodles, Sauce, and Meat",
    calories: 221,
    price: 5.45
  )
  
  Meal.create!(
    name: "Hamburger and Fries",
    description: "Beef Patty and Bread buns with potato fries",
    calories: 719,
    price: 3.99
  )
