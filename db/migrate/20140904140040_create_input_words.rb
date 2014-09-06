class CreateInputWords < ActiveRecord::Migration
  def change
    create_table :input_words do |t|
      t.string :desire_1
      t.string :desire_2
      t.string :desire_3
      t.string :achievement_percent

      t.timestamps
    end
  end
end
