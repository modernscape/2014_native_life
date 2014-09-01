class CreateMerits < ActiveRecord::Migration
  def change
    create_table :merits do |t|
      t.string :title
      t.references :want, index: true

      t.timestamps
    end
  end
end
