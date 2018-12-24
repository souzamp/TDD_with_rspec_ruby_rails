describe 'Classes' do
  it 'be_instance' do
  	expect(10).to be_instance_of(Integer) # Exatamente a classe
  end

  it 'be_kind_of' do
  	expect(10).to be_kind_of(Integer) # Pode ser por herança
  end

  it 'responde_to' do
  	expect("ruby").to respond_to(:size)
  	expect("ruby").to respond_to(:count)
  end

  it 'be_an / be_a' do
  	#expect().to be_a()
  end
end