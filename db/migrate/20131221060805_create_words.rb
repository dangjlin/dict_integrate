class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :input_word
      t.string :the_result

      t.timestamps
    end
  end
end
