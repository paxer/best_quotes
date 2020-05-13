class QuotesController < YoHoHo::Controller
  def index
    quotes = FileModel.all
    render_response :index, quotes: quotes
  end

  def show
    quote = FileModel.find(params['id'])
    render_response :show, obj: quote
  end

  def a_quote
    render_response :a_quote, wizard_name: 'Gandalf'
  end

  def quote_1
    quote = FileModel.find(1)
    render_response :quote_1, obj: quote
  end
end