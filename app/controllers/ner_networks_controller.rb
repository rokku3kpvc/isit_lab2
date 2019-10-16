class NerNetworksController < ApplicationController
  def index
    @results = NerNetwork.all
    @result = NerNetwork.new
  end

  def create
    @result = NerNetwork.new ner_params
    if @result.save
      respond_to { |f| f.js }
    else
      flash[:alert] = @result.errors.full_messages.to_sentence
    end
  end

  private

  def ner_params
    params.require(:ner_network).permit(:input)
  end
end
