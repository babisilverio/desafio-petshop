class AddFieldsToCachorro < ActiveRecord::Migration[5.1]
  def change
    add_column :cachorros, :sexo, :string
  end
end
