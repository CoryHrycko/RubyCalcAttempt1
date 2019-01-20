class CreateUserInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_inputs do |t|
      t.integer :input_x
      t.integer :input_y

      t.timestamps
    end
  end
end
