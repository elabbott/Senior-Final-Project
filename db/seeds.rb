# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Child.delete_all
School.delete_all

School.create!(
    name: "Valdosta Elementary",
    address: "200 Oak Street",
    school_id: 1
 )

School.create!(
    name: "Valdosta Middle",
    address: "201 Oak Street",
    school_id: 2
 )

Child.create!(
    name: "Jimmy",
    school_id: 1,
  )
  
Child.create!(
    name: "Meghan",
    school_id: 1,
  )
  
Child.create!(
    name: "Evan",
    school_id: 1,
  )

Child.create!(
    name: "Ben",
    school_id: 2,
  )
