require 'spec_helper'

describe "Basket 1" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(promotional_rules=Promotions.new)

    co.scan(001)
    co.scan(002)
    co.scan(003)

    price = co.total

    expect(price).to eq 66.78
  end
end

describe "Basket 2" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(promotional_rules=Promotions.new)

    co.scan(001)
    co.scan(003)
    co.scan(001)

    price = co.total

    expect(price).to eq 36.95
  end
end

describe "Basket 3" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(promotional_rules=Promotions.new)

    co.scan(001)
    co.scan(002)
    co.scan(001)
    co.scan(003)

    price = co.total

    expect(price).to eq 73.76
  end
end
