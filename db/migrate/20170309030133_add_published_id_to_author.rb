class AddPublishedIdToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_reference :authors, :publisher, index:true 
  end
end
