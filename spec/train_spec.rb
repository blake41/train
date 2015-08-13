describe Train do
  it "has a name" do
    train = Train.new("A")
    expect(train.name).to eq("A") 
  end

  it "should be empty" do
    train = Train.new("A")
    expect(train.passengers).to be_empty
  end

  it "can add a passenger" do
    # passenger = "Blake"
    passenger = Passenger.new("A", 0.00, "Blake")
    train = Train.new("A")
    train.add_passenger(passenger)
    expect(train.passengers).to include(passenger)
  end

  it "can add multiple passengers" do
    # passenger = "Blake"
    passenger = Passenger.new("A", 0.00, "Blake")
    # passenger_two = "Steph"
    passenger_two = Passenger.new("A", 0.00, "Steph")
    train = Train.new("A")
    train.add_passenger(passenger)
    train.add_passenger(passenger_two)
    expect(train.passengers).to include(passenger)
    expect(train.passengers).to include(passenger_two)
  end

  it "can remove a passenger" do
    # passenger = "Blake"
    passenger = Passenger.new("A", 0.00, "Blake")
    # passenger_two = "Steph"
    passenger_two = Passenger.new("A", 0.00, "Steph")
    train = Train.new("A")

    train.add_passenger(passenger)
    train.add_passenger(passenger_two)
    train.remove_passenger(passenger_two)

    expect(train.passengers).to include(passenger)
    expect(train.passengers).to_not include(passenger_two)   
  end
  # what about is passengers have attributes, need to "know things"

  it "can remove all the drunk passengers" do
    passenger = Passenger.new("A", 0.00, "Blake")
    passenger_two = Passenger.new("A", 0.15, "Steph")
    train = Train.new("A")

    train.add_passenger(passenger)
    train.add_passenger(passenger_two)
    train.remove_drunk_passengers

    expect(train.passengers).to include(passenger)
    expect(train.passengers).to_not include(passenger_two) 
  end

  it "should set the current train of the passenger when it adds it" do
    passenger = Passenger.new("A", 0.00, "Blake")
    train = Train.new("A")
    train.add_passenger(passenger)
    expect(passenger.currently_on).to eq(train)
  end

end