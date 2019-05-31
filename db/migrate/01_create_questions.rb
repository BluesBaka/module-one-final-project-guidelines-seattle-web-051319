
class CreateQuestions < ActiveRecord::Migration[5.2]

  def change
    create_table :questions do |t|
      t.string :category
      t.string :type
      t.string :difficulty
      t.string :question
      t.string :correct
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3
    end
  end
end
