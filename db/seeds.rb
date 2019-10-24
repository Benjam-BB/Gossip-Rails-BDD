# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
Joinpmreceiver.destroy_all

puts "BDD vidée"

10.times do 
	City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end	
puts "10 villes créées"

10.times do 
    User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, description: Faker::Lorem.sentence(word_count: 5), email: Faker::Internet.email, age: Faker::Number.between(from: 10, to: 100), city_id: City.all.sample.id)
end
puts "10 users créés"

20.times do 
    Gossip.create!(title: Faker::Quote.yoda, content: Faker::Lorem.sentence(word_count: 4), user_id: User.all.sample.id)
end
puts "20 Gossips créés"

10.times do 
	Tag.create!(title: Faker::Cosmere.shard)
end
puts "creation des tags"
#La fonction ci-dessous permet que chaque Gossip est un tag
Gossip.all.each{|gsp| Jointaggossip.create!(gossip_id: gsp.id, tag_id: Tag.all.sample.id)}
puts "chaque Gossip est associé à un tag via le model Jointaggossip"

10.times do  
	PrivateMessage.create!(content: Faker::Lorem.sentences, user_id: User.all.sample.id)
end #contient l'expéditeurs du message
puts "creation de 10 private message"

20.times do 
	Joinpmreceiver.create!(user_id: User.all.sample.id, private_message_id: PrivateMessage.all.sample.id)
end #contient le ou les receveurs du message
puts "creation de 20 Privatepmreceiver"