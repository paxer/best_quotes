class QuotesController < YoHoHo::Controller
  def a_quote
    render 'a_quote', wizard_name: 'Gandalf'
  end
end