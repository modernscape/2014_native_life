class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.datetime :achievement_date
      t.string :title
      t.integer :achieved_percent
      t.references :want, index: true

      t.timestamps
    end
  end
end
