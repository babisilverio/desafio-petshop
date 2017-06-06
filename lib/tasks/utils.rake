require 'nokogiri'
require 'net/http'

namespace :utils do
  desc "Faz a raspagem de dados referentes a raças de cães"
  task raspagem_racas: :environment do
  	url = "http://www.portalfilhotes.com.br/racas-de-a-z/"
  	# html da página
		html = Net::HTTP.get URI.parse(url)

		# html analisado pelo nokogiri
		doc = Nokogiri::HTML(html)
		doc.encoding = 'utf-8'
  	
  	i = 0
  	lista_raca = ListaRaca.new
  	result = doc.xpath('//div[@id="HOTWordsTxt"]/ul/li')

  	# Preenche o banco de dados com as raças obtidas no site.
  	while i < result.count do  		
  		lista_raca = ListaRaca.create(nome_raca: result[i].text)  		  		
  		i = i + 1
  	end  	
  end
  
end
