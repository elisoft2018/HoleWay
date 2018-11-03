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
        password_digest: Faker::Internet.password,
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        address: Faker::Address.full_address,
        enabled: Faker::Boolean.boolean,        
    });
    
    user.privileges.create!({
        privilege: Faker::Military.air_force_rank,
        enabled: Faker::Boolean.boolean,
    });

    damage = Damage.create({
        name: Faker::App.name,
        level:Faker::Number.number(1),
        severity:Faker::App.author,
        description:Faker::GameOfThrones.dragon,
        enabled: Faker::Boolean.boolean, 
    })


    damage.reports.create({
        photography:Faker::Internet.url,
        location:Faker::Internet.url,
        comment:Faker::GameOfThrones.quote,
        enabled: Faker::Boolean.boolean, 
    })

    user.comments.create({
        comment:Faker::GameOfThrones.quote,
        value:Faker::Number.number(3),
        report_id: 3,
    })

end