class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.boolean :done
      t.references :action, index: true

      t.timestamps
    end
  end
end
