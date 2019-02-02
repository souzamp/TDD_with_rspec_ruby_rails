describe 'Matcher output' do
	it { expect{ puts "marcos" }.to output.to_stdout }
	it { expect{ print "marcos" }.to output("marcos").to_stdout }
	it { expect{ print "marcos" }.to output(/marcos/).to_stdout }

	it { expect{ warn "marcos" }.to output.to_stderr }
	it { expect{ warn "marcos" }.to output("marcos\n").to_stderr }
	it { expect{ warn "marcos paulo" }.to output(/marcos/).to_stderr }
end