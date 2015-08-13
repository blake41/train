class Train

  def initialize(name)
    @name = name
    @passengers = []
  end

  def name
    @name
  end

  def add_passenger(passenger)
    @passengers << passenger
    passenger.get_on_train(self)
  end

  def passengers
    @passengers
  end

  def remove_passenger(passenger)
    @passengers.reject! {|pass| pass == passenger}
  end

  def remove_drunk_passengers
    @passengers.each do |pass|
      remove_passenger(pass) if pass.drunk?
    end
  end

end