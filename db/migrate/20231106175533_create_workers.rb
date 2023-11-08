class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :fullname
      t.integer :age
      t.string :profession
      t.text :details

      t.timestamps
    end
  end
end
