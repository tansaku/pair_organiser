describe Pairer do
  subject { Pairer.new %w{Pablo Dan Andrew Tom Rob Jay Norm Yev} }
  specify 'generates all possible pairings from 8 individuals' do
    results = subject.run
    expect(results.count).to eq 7


    #  TODO use sets instead of arrays in order to make comparison more robust
    expect(results).to include [["Pablo", "Dan"], ["Yev", "Andrew"], ["Norm", "Tom"], ["Jay", "Rob"]] 
    expect(results).to include [["Pablo", "Andrew"], ["Dan", "Tom"], ["Yev", "Rob"], ["Norm", "Jay"]]
    expect(results).to include [["Pablo", "Tom"], ["Andrew", "Rob"], ["Dan", "Jay"], ["Yev", "Norm"]]
    expect(results).to include [["Pablo", "Rob"], ["Tom", "Jay"], ["Andrew", "Norm"], ["Dan", "Yev"]]
    expect(results).to include [["Pablo", "Jay"], ["Rob", "Norm"], ["Tom", "Yev"], ["Andrew", "Dan"]]
    expect(results).to include [["Pablo", "Norm"], ["Jay", "Yev"], ["Rob", "Dan"], ["Tom", "Andrew"]]
    expect(results).to include [["Pablo", "Yev"], ["Norm", "Dan"], ["Jay", "Andrew"], ["Rob", "Tom"]]

    # this was from the older algorithm which generated slightly different pair orders
    # expect(results).to include [["Pablo", "Dan"], ["Andrew", "Tom"], ["Rob", "Jay"], ["Norm", "Yev"]]
    # expect(results).to include [["Pablo", "Andrew"], ["Dan", "Tom"], ["Rob", "Norm"], ["Jay", "Yev"]]
    # expect(results).to include [["Pablo", "Tom"], ["Dan", "Andrew"], ["Rob", "Yev"], ["Jay", "Norm"]]
    # expect(results).to include [["Pablo", "Rob"], ["Dan", "Jay"], ["Andrew", "Norm"], ["Tom", "Yev"]]
    # expect(results).to include [["Pablo", "Jay"], ["Dan", "Rob"], ["Andrew", "Yev"], ["Tom", "Norm"]]
    # expect(results).to include [["Pablo", "Norm"], ["Dan", "Yev"], ["Andrew", "Rob"], ["Tom", "Jay"]]
    # expect(results).to include [["Pablo", "Yev"], ["Dan", "Norm"], ["Andrew", "Jay"], ["Tom", "Rob"]]




  end
end
