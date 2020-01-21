require 'faker'

Neighborhood.destroy_all
Event.destroy_all
Performer.destroy_all
Show.destroy_all

neighborhood1 = Neighborhood.create(name: 'Lake View', city: 'Chicago', county: 'Cook County')
5.times do
    Event.create(neighborhood_id: neighborhood1, name: , address: Faker::Address.street_address, start_time:, intereted_count: )
end

neighborhood2 = Neighborhood.create(name: 'Lincoln Park', city: 'Chicago', county: 'Cook County')


neighborhood3 = Neighborhood.create(name: 'Andersonville', city: 'Chicago', county: 'Cook County')


neighborhood4 = Neighborhood.create(name: 'Logan Square', city: 'Chicago', county: 'Cook County')

