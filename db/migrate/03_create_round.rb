class CreateRounds < ActiveRecord::Migration[5.2]

  def change
    create_table :rounds do |t|
      t.integer :user_id
      t.integer :question_id
    end
  end
end
