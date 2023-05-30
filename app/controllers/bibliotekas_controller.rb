require 'ransack'
require 'kaminari'


class BibliotekasController < ApplicationController
  before_action :authenticate_admin!

  def index
    @up = false
    @up_genre = false
    @q = Biblioteka.ransack(params[:q])
    @libraries = @q.result(distinct: true).includes(:books)

    @libraries = @libraries.order(:name) if params[:sort] == "name"
    if params[:sort] == "book_count"
      @libraries = @libraries.sort_by { |biblioteka| biblioteka.books.count }
      @up = false
    end

    if params[:sort] == "book_count_desc"
      @libraries = @libraries.sort_by { |biblioteka| biblioteka.books.count }.reverse
      @up = true
    end

    if params[:sort] == "genre_count"
      @libraries = @libraries.sort_by { |biblioteka| biblioteka.books.select(:genre_id).distinct.count }
      @up_genre = false
    end
    if params[:sort] == "genre_count_desc"
      @libraries = @libraries.sort_by { |biblioteka| biblioteka.books.select(:genre_id).distinct.count }.reverse
      @up_genre = true
    end

    @libraries = Kaminari.paginate_array(@libraries).page(params[:page]).per(10)
  end

  def show
    @up_age = false
    @up_card = false
    @biblioteka = Biblioteka.find(params[:id])
    @users = User.joins(:reader_card).where(reader_cards: { biblioteka_id: @biblioteka.id })
    @users = @users.where("name LIKE ?", "%#{params[:name]}%") if params[:name].present?
    @users = @users.where(age: params[:age]) if params[:age].present?

    @users = @users.order(:name) if params[:sort] == "name"
    if params[:sort] == "age_desc"
      @users = @users.sort_by { |user| user.age }.reverse
      @up_age = true
    end
    if params[:sort] == "card"
      @users = @users.sort_by { |user| user.reader_card.id }
      @up_card = false
    end
    if params[:sort] == "card_desc"
      @users = @users.sort_by { |user| user.reader_card.id }.reverse
      @up_card = true
    end

    @users = Kaminari.paginate_array(@users).page(params[:page]).per(10)
  end

  def edit
    @library = Biblioteka.find(params[:id])
  end

  def update
    @library = Biblioteka.find(params[:id])

    @library.update(library_params)

    redirect_to biblioteka_path(@library)
  end

  def new
    @library = Biblioteka.new
  end

  def create
    @library = Biblioteka.create(user_params)

    redirect_to root_path
  end

  def destroy
    @library = Biblioteka.find(params[:id])
    @library.destroy

    redirect_to root_path
  end

  private

  def library_params
    params.require(:biblioteka).permit(:name, :email)
  end
end
