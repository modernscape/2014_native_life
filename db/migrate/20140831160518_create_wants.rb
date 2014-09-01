class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.integer :aim1
      t.integer :aim2
      t.binary :photo1
      t.binary :photo2
      t.references :user, index: true

      t.timestamps
    end
  end
end
