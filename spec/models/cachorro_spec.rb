require 'rails_helper'

RSpec.describe Cachorro, type: :model do
  context "Validade dos dados do cachorro" do
  	it "Cachorro valido?" do
  		sim_nao = ['sim', 'nao']
      sexo = ['M', 'F']
  		cao = Cachorro.new
  		raca_cao = ListaRaca.create(nome_raca: "Yorkshire")
			op = rand(sim_nao.length)
      op_sex = rand(sexo.length)
			cao = Cachorro.create(lista_raca: raca_cao, castrado: sim_nao[op], nascimento: Faker::Date.birthday(1, 15),
			nome_cao: Faker::Cat.name, nome_dono: Faker::Name.name, telefone: Faker::PhoneNumber.cell_phone,
			data_ultima_vez_petshop: Faker::Date.backward(1095),sexo: sexo[op_sex])

			expect(cao.valid?).to be_truthy
  	end
  end  

end
