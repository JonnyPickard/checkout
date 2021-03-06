class RepeatTravelCardPromotion

  def apply(basket, working_total)
    sum = basket.inject { | sum, item_code | item_code == 001 ? sum + 1 : sum }

    sum >= 2 ? (working_total -= Money.new(sum * 100, "GBP") * 0.75) : working_total
  end

end
