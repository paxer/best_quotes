class QuotesController < YoHoHo::Controller
  def a_quote
    render 'a_quote', wizard_name: 'Gandalf'
  end

  def quote_1
    quote = FileModel.find(1)
    render :quote_1, obj: quote
  end
end