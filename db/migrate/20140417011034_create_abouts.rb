class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :header
      t.string :content
      t.string :contact

      t.timestamps
    end
  end
end
