require 'faker'

Neighborhood.destroy_all
Event.destroy_all
Performer.destroy_all
Show.destroy_all

neighborhood1 = Neighborhood.create(name: 'Lake View', city: 'Chicago', county: 'Cook County')
5.times do
    Event.create(neighborhood_id: neighborhood1.id,
    name: Faker::TvShows::TwinPeaks.location + "'s House Show",
    address: Faker::Address.street_address,
    start_time: Faker::Time.between_dates(from: Date.today, to: Date.today + 14, period: :night, format: :short),
    interested_count: (0..20).to_a.sample
    )
end

neighborhood2 = Neighborhood.create(name: 'Lincoln Park', city: 'Chicago', county: 'Cook County')
5.times do
    Event.create(neighborhood_id: neighborhood2.id,
    name: Faker::TvShows::TwinPeaks.location + "'s House Show",
    address: Faker::Address.street_address,
    start_time: Faker::Time.between_dates(from: Date.today, to: Date.today + 14, period: :night, format: :short),
    interested_count: (0..20).to_a.sample
    )
end

neighborhood3 = Neighborhood.create(name: 'Andersonville', city: 'Chicago', county: 'Cook County')
5.times do
    Event.create(neighborhood_id: neighborhood3.id,
    name: Faker::TvShows::TwinPeaks.location + "'s House Show",
    address: Faker::Address.street_address,
    start_time: Faker::Time.between_dates(from: Date.today, to: Date.today + 14, period: :night, format: :short),
    interested_count: (0..20).to_a.sample
    )
end


neighborhood4 = Neighborhood.create(name: 'Logan Square', city: 'Chicago', county: 'Cook County')
5.times do
    Event.create(neighborhood_id: neighborhood4.id,
    name: Faker::TvShows::TwinPeaks.location + "'s House Show",
    address: Faker::Address.street_address,
    start_time: Faker::Time.between_dates(from: Date.today, to: Date.today + 14, period: :night, format: :short),
    interested_count: (0..20).to_a.sample
    )
end

4.times do 
    performer = Performer.create(name: Faker::Kpop.ii_groups)
    3.times do
        Show.create(event_id: (0..19).to_a.sample, performer_id: performer.id)
    end
end

4.times do 
    performer = Performer.create(name: Faker::IndustrySegments.sector)
    3.times do
        Show.create(event_id: (0..19).to_a.sample, performer_id: performer.id)
    end
end

4.times do 
    performer = Performer.create(name: Faker::Space.star)
    3.times do
        Show.create(event_id: (0..19).to_a.sample, performer_id: performer.id)
    end
end