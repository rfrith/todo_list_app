# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Project.create(:title => "Project 1")
p2 = Project.create(:title => "Project 2", :deleted => true)
p3 = Project.create(:title => "Project 3")

Item.create(:action => "Item 1", :project => p1)
Item.create(:action => "Item 2", :project => p1)
Item.create(:action => "Item 3", :project => p1)

Item.create(:action => "Item 1", :project => p2, :deleted => true)
Item.create(:action => "Item 2", :project => p2, :deleted => true)
Item.create(:action => "Item 3", :project => p2)
