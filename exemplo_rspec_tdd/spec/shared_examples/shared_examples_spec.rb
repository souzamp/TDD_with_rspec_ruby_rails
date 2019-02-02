require 'pessoa'

#com o shared podemos receber o status como parametro 
shared_examples 'status' do |sentimento|
	it "#{sentimento}!" do
	 	pessoa.send("#{sentimento}!")
	 	expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
	 end
end

describe 'Pessoa' do
	subject(:pessoa) { Pessoa.new }

	include_examples 'status', :feliz
	it_behaves_like 'status', :triste
	it_should_behave_like 'status', :contente

	#nesse trecho comentado estudamos uma forma básica de realizar os teste
	#mas dessa forma iria ficar muito código repetido, a medida que fosse
	#adicionando outros status
	#
	# it 'feliz!' do
	# 	pessoa.feliz!
	# 	expect(pessoa.status).to eq("Sentindo-se Feliz!")
	# end
	
	# it 'triste!' do
	# 	pessoa.triste!
	# 	expect(pessoa.status).to eq("Sentindo-se Triste!")
	# end

	# it 'contente!' do
	# 	pessoa.contente!
	# 	expect(pessoa.status).to eq("Sentindo-se Contente!")
	# end
end