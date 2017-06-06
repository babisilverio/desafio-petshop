class RemoveFieldToCachorro < ActiveRecord::Migration[5.1]
  def change
    remove_column :cachorros, :raca, :string
  end
end
