class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.string :header
      t.string :content
      t.string :contact

      t.timestamps
    end
  end
end
