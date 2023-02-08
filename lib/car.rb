class Car

  attr_reader :monthly_payment, :make_model, :loan_length
  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color
  end

  def make
    @make_model.split.first
  end

  def model
    @make_model.split[1]
  end

  def total_cost
    total_cost = monthly_payment * @loan_length
    total_cost
  end

  def color 
    @color
  end

  def paint(color)
    @color = (color)
  end
end
