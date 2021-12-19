class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :user
      t.date :rental_peiod
      t.string :note

      t.timestamps
    end
  end
end
