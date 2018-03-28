class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.references :team, foreign_key: true
      t.string :avatar

      t.timestamps
    end
  end
end
