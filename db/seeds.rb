# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["Programming for Non-Programmers", "Raising Startup Capital", "HTML & CSS Weekend Workshop", "Essentials of Crowdfunding","Product Management Workshop", "Lean Marketing for Startups", "Public Speaking Workshop with Video Feedback", "Social Media Bootcamp", "Pitch Perfect: How to Pitch Your Startup to Investors", "Integrating Payments with the Stripe API"].each do |program|
	Program.create(:name => program)
end

["Sergey Brin", "Jimmy Wales", "Larry Page", "Mark Zuckerberg", "Jeff Bezos", "Kevin Rose", "Jack Dorsey", "Craig Newmark", "Tom Anderson", "Bill Gates", "Max Levchin", " Peter Thiel", " Elon Musk", "Reed Hastings", "Bob Parsons", "Joshua Schachter", "Michael Arrington", "Zach Klein", "Ashwin Navin", "Jerry Yang", "Mark Cuban"].each do |student|
	Student.create(:name => student)
end

300.times do
	Instance.create(:program_id => Program.all.sample.id, :student_id => Student.all.sample.id)
end

Program.all.each do |x|
	x.description = 15.sentences
	x.save
end
