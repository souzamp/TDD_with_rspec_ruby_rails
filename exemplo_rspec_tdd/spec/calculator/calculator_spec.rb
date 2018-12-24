require 'calculator'

describe Calculator, "sobre a calculadora" do
	subject(:calc) {described_class.new()}

	context '#div' do
		it 'divide by 0' do
			# nessa linha de código estou testando tipo de erro que pode ter na aplicação
			expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
			# nessa linha de código estou testando o texto do erro
			expect{subject.div(3, 0)}.to raise_error("divided by 0")
			#posso também testar os dois
			expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError ,"divided by 0")
		end
	end

	context '#sum' do 
		it 'positive numbers' do
			result = calc.sum(5,7)
			expect(result).to eq(12)
		end

		it 'negative numbers' do
			result = calc.sum(-5,7)
			expect(result).to eq(2)
		end

		it 'negative and positive numbers' do
			result = calc.sum(-5,-7)
			expect(result).to eq(-12)
		end
	end
end