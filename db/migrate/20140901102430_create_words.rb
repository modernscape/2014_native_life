class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :title
      t.references :want, index: true

      t.timestamps
    end
  end
end
