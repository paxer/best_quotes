class QuotesController < YoHoHo::Controller
  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def a_quote
    render 'a_quote', wizard_name: 'Gandalf'
  end

  def quote_1
    quote = FileModel.find(1)
    render :quote_1, obj: quote
  end
end