describe Passenger do

  it "has a name" do
    passenger = Passenger.new("A", 0.00, "Blake")
    expect(passenger.name).to eq("Blake")
  end

  it "should start out on the platform" do
    passenger = Passenger.new("A", 0.00, "Blake")
    expect(passenger.currently_on).to eq("On the platform")
  end

  it "should know what train it's on" do
    passenger = Passenger.new("A", 0.00, "Blake")
    train = "A"
    passenger.get_on_train(train)
    expect(passenger.currently_on).to eq(train)  
  end

  it "should increase its bac when it drinks a beer" do
    passenger = Passenger.new("A", 0.00, "Blake")
    passenger.drink_a_beer
    expect(passenger.bac).to eq(0.02)
  end

  it "should know when its drunk" do
    passenger = Passenger.new("A", 0.00, "Blake")
    5.times do
      passenger.drink_a_beer
    end
    expect(passenger.drunk?).to be true
  end
end