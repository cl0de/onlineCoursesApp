class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.integer :order
      t.string :video_link
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
