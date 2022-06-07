class AddWeaponsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.column :class_, :string
      t.column :name, :string
      t.column :phy, :integer
      t.column :mag, :integer
      t.column :skill, :string
    end
  end
end
