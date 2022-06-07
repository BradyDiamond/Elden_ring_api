
FactoryBot.define do
  factory(:weapon) do
    name {Faker::Games::ElderScrolls.weapon}
    class_ {["dagger","short sword", "axe", "whip", "greatsword"].sample(1).join}
    phy {Faker::Number.within(range: 30..100)}
    mag {Faker::Number.within(range: 5..19)}
    skill {["slap","bang", "chop", "slash", "cut"].sample(1).join}
  end
end