class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title
      t.text :caption
      t.string :image_url

      t.timestamps
    end
  end
end
