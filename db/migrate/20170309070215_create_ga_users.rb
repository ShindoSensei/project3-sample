class CreateGaUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :ga_users do |t|
      t.string :name
      t.references :teacher, index:true
      t.timestamps
    end
  end
end
