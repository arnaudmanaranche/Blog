class AddContentToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :content, :string
  end
end
