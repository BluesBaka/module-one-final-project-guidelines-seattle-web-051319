<<<<<<< HEAD
class CreateQuestions < ActiveRecord::Migration[5.0]
=======


class CreateQuestions < ActiveRecord::Migration[5.0]

>>>>>>> f3c14b8da79524e1cded6db2f5c8e2b9be81029d
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
