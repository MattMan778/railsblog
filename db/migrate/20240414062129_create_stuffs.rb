class CreateStuffs < ActiveRecord::Migration[7.0]
  def change
    create_table :stuffs do |t|
      t.text :context

      t.timestamps
    end
  end
end
