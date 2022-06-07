# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Weapon.destroy_all

class Seed 
  def self.begin
    seed = Seed.new
    seed.generate_weapons
  end

  def generate_weapons
    20.times do |i|
        weapon = Weapon.create!(  
        name: Faker::Games::ElderScrolls.weapon,
        class_: ["dagger","short sword", "axe", "whip", "greatsword"].sample(1).join,
        phy: Faker::Number.within(range: 30..100),
        mag: Faker::Number.within(range: 5..19),
        skill: ["slap","bang", "chop", "slash", "cut"].sample(1).join
        )
    end
  end  
end  

Seed.begin