class QuotesController < YoHoHo::Controller
  def a_quote
    render 'a_quote', wizard_name: 'Gandalf'
  end

  def quote_1
    quote = YoHoHo::Model::FileModel.find(1)
    render :quote, obj: quote
  end
end