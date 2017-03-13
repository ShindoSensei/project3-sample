class CreateStalks < ActiveRecord::Migration[5.0]
  def change
    create_table :stalks do |t|
      t.references :stalker, index:true
      t.references :stalkee, index:true
      t.timestamps
    end
  end
end
