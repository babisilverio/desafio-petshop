class CreateCachorros < ActiveRecord::Migration[5.1]
  def change
    create_table :cachorros do |t|
      t.string :raca
      t.string :castrado
      t.date :nascimento
      t.string :nome_cao
      t.string :nome_dono
      t.string :telefone
      t.date :data_ultima_vez_petshop

      t.timestamps
    end
  end
end
