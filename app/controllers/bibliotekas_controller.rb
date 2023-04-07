class BibliotekasController < ApplicationController
  def index
    @libraries = Biblioteka.all
  end

  def show
    @library = Biblioteka.find(params[:id])
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
