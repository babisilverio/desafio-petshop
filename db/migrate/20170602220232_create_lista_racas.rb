class CreateListaRacas < ActiveRecord::Migration[5.1]
  def change
    create_table :lista_racas do |t|
      t.string :nome_raca

      t.timestamps
    end
  end
end
