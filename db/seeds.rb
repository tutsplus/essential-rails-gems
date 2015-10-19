# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Essential Ruby Libraries",
"Get Started With Ruby on Rails",
"Build a CMS With Rails",
"Create an Image Gallery in Ruby",
"Learn to Code With Ruby",
"Service-Oriented Architecture for Authentication in Ruby",
"Deploy a Rails Application With Docker",
"Redis Applicable to Ruby",
"WebSocket-Powered Rails Applications",
"MongoDB and Ruby",
"Build a Store With a Payment Gateway in Rails",
"Testing Ruby With RSpec",
"Build a Polling Application With Rails",
"Linux Web Developer Setup",
"Build an Email Application With Ruby",
"Taking a Feature to Exhaustion",
"Getting Started With Sequel",
"Ruby and Linux",
"Build a Ruby Product for the Long Run",
"Build REST APIs With Grape",
"Gang of Four Design Patterns in Ruby",
"Ruby for PHP Developers",
"Metaprogramming in Ruby",
"SOLID Design Patterns",
"Acceptance Testing in Ruby with Cucumber",
"Say Yo to Yeoman",
"Documentation in Ruby",
"Object-Oriented Design and Refactoring Patterns in Ruby",
"Ruby Deployment Techniques",
"Let's Learn Ember",
"Catch Up with Ruby on Rails 4",
"Command-Line Apps in Ruby",
"Simple Sinatra",
"Venture Into Vim",
"Riding Ruby on Rails",
"The Fundamentals of Ruby",
"Test-Driven Development in Ruby"].each do |course|
  project = Project.create! name: course, ends_at: Time.now + 3.months
  ["Test", "Record", "Edit", "Outline"].each do |task|
    Task.create! project: project, title: task
  end
end

