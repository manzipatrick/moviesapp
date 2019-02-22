class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.string :title
      t.string :category
      t.string :year
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
