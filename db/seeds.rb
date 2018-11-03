# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    user = User.create!({
        username: Faker::Internet.username, 
        email: Faker::Internet.email, 
        password: Faker::Internet.password,
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        address: Faker::Address.full_address,
        enabled: Faker::Boolean.boolean,        
    });
    
    user.security_privileges.create!({

        privilege: Faker::Military.air_force_rank,
        enabled: Faker::Boolean.boolean,
    });

end