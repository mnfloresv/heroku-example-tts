# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# borra los equipos ('teams') y usuarios ya existentes
Team.destroy_all
User.destroy_all

# crea 3 equipos...
3.times do
  team = Team.create(
    name: Faker::Team.name,
    sport: Faker::Team.sport,
  )

  # ...con 5 usuarios cada uno
  5.times do
    team.users.create(
      name: Faker::Name.unique.name,
      # no es necesario hacer seed en team_id; esto lo hará por ti. ¡MAGIA!
    )
  end
end