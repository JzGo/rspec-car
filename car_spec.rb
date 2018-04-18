require 'rspec'
require_relative 'car'

describe Car do

  let(:car) {Car.new("Blue")}

  it "has to be real" do
    expect{Car.new("Blue")}.to_not raise_error
  end

  it "has a color" do
    expect(car.color).to be_a String
  end

  it "can change color" do
    car.color = "red"
    expect(car.color).to eq "red"
  end

  it "has a color when it's created" do
    expect(car.color).to be_a String
    expect(car.color).to eq "Blue"
  end

  it "requires color when created" do
    expect{Car.new("Blue")}.to_not raise_error
  end

  it "has a speed" do
    expect(car.speed).to be_a Numeric
  end

  it "starts at speed zero" do
    expect(car.speed).to be 0
  end

  it "doesn't allow user to set speed" do
    expect{car.speed = 15}.to raise_error NoMethodError
  end

  it "can accelerate by an amount" do
    car.accelerate_by 42

    # A weak expectation
    expect(car.speed).to be > 0

    # Simple way to test
    expect(car.speed).to be 42

    # Alternative way to test
    expect{car.accelerate_by(13)}.to change{car.speed}.from(42).to(13+42)
  end
end
