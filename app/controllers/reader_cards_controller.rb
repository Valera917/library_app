class ReaderCardsController < ApplicationController
  def index
    @reader_cards = ReaderCard.all
  end

  def show
    @reader_card = ReaderCard.find(params[:id])
  end

  def edit
    @reader_card = ReaderCard.find(params[:id])
  end

  def update
    @reader_card = ReaderCard.find(params[:id])

    @reader_card.update(library_params)

    redirect_to author_path(@reader_card)
  end

  def new
    @reader_card = ReaderCard.new
  end

  def create
    @reader_card = ReaderCard.create(author_params)

    redirect_to root_path
  end

  def destroy
    @reader_card = ReaderCard.find(params[:id])
    @reader_card.destroy

    redirect_to root_path
  end

  private
  def author_params
    params.require(:reader_card).permit(:name)
  end
end
