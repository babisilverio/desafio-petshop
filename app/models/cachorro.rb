class Cachorro < ApplicationRecord	
	belongs_to :lista_raca 
	def self.pesquisa(query)
		where("nome_cao like ?", "%#{query}%")
	end
	validates :castrado, presence: true
	validates :nascimento, presence: true
	validates :nome_cao, presence: true
	validates :nome_dono, presence: true
	validates :telefone, presence: true
	validates :data_ultima_vez_petshop, presence: true
	validates :lista_raca, presence: true
	validates :sexo, presence: true

end
