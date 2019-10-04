class PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
  end

  def edit
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to property_path(@property.id), notice: '物件を作成しました'
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to property_path(@property.id), notice: '物件を更新しました'
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: '物件を削除しました'
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:name, :price, :address, :year, :note)
  end

end
