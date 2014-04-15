class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :content
      t.string :header
      t.string :contact

      t.timestamps
    end
  end
end
