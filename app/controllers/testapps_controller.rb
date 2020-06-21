class TestappsController < ApplicationController

  def index
    @testItems = Testapp.all
  end

  def new
    @testItem = Testapp.new
  end

  def create
    @testItem = Testapp.new(params.require(:testapp).permit(:title, :body))
    respond_to do |format|
      if @testItem.save
        format.html { redirect_to testapps_path, notice: "" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @testItem = Testapp.find(params[:id])
  end

  def update
    @testItem = Testapp.find(params[:id])

    respond_to do |format|
      if @testItem.update(params.require(:testapp).permit(:title, :body))
        format.html { redirect_to testapps_path, notice: ""}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @testItem = Testapp.find(params[:id])
  end

  def destroy
    @testItem = Testapp.find(params[:id])

    @testItem.destroy
    respond_to do |format|
      format.html { redirect_to testapps_path, notice: "" }
    end
  end

end
