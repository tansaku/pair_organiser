describe Pairer do
  subject { Pairer.new %w{Pablo Dan Andrew Tom Rob Jay Norm Yev} }
  specify 'generates all possible pairings from 8 individuals' do
    results = subject.run
    expect(results.count).to eq 7
    expect(results).to include [["Pablo", "Dan"], ["Andrew", "Tom"], ["Rob", "Jay"], ["Norm", "Yev"]]
    expect(results).to include [["Pablo", "Andrew"], ["Dan", "Tom"], ["Rob", "Norm"], ["Jay", "Yev"]]
    expect(results).to include [["Pablo", "Tom"], ["Dan", "Andrew"], ["Rob", "Yev"], ["Jay", "Norm"]]
    expect(results).to include [["Pablo", "Rob"], ["Dan", "Jay"], ["Andrew", "Norm"], ["Tom", "Yev"]]
    expect(results).to include [["Pablo", "Jay"], ["Dan", "Rob"], ["Andrew", "Yev"], ["Tom", "Norm"]]
    expect(results).to include [["Pablo", "Norm"], ["Dan", "Yev"], ["Andrew", "Rob"], ["Tom", "Jay"]]
    expect(results).to include [["Pablo", "Yev"], ["Dan", "Norm"], ["Andrew", "Jay"], ["Tom", "Rob"]]
  end
end
