class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :number
      t.string :semester
      t.string :room
      t.references :professor, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
