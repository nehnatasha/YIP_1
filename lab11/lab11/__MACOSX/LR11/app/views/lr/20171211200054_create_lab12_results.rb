class CreateLab12Results < ActiveRecord::Migration[5.1]
  def change
    create_table :lab12_results do |t|
      t.string :inputstr
      t.text :result

      t.timestamps
    end
  end
end

