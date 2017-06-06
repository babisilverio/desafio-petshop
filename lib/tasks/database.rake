namespace :database do
  desc "Popula o banco de dados gerando dados de 1000 cães"
  task popula_dados: :environment do
  	## Alimenta o banco de dados do petshop
	sim_nao = ['sim', 'nao']
	sexo = ['M', 'F']
	1000.times do |i|
		raca_cao = ListaRaca.find(rand(413) + 1)
		op = rand(sim_nao.length)
		op_sex = rand(sexo.length)
		cao = Cachorro.create(lista_raca: raca_cao, castrado: sim_nao[op], nascimento: Faker::Date.birthday(1, 15),
			nome_cao: Faker::Cat.name, nome_dono: Faker::Name.name, telefone: Faker::PhoneNumber.cell_phone,
			data_ultima_vez_petshop: Faker::Date.backward(1095), sexo: sexo[op_sex])
	end

  end

end
