class CreateCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :totalworkers
      t.date :start
      t.date :finish

      t.timestamps
    end
  end
end
