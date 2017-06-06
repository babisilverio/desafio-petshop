class AddFieldToCachorro < ActiveRecord::Migration[5.1]
  def change
    add_reference :cachorros, :lista_raca, foreign_key: true
  end
end
