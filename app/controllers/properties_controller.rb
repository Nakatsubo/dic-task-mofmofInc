class PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def show
    @accesses = Access.all.where(property_id: @property.id)
  end

  def new
    @property = Property.new
    #@property.accesses.build
    # 親モデル.子モデル.build
    # => 外部キーに値が入った状態でインスタンスが生成できる
    set_frequency.times {@property.accesses.build}
  end

  def edit
    t = set_frequency - @property.accesses.length
    t.times {@property.accesses.build}
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
    if @property.update(update_property_params)
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
    params.require(:property).permit(:name, :price, :address, :year, :note, accesses_attributes: %i(route station distance id))
    # => 外部キーの値を含めることができる
  end

  def update_property_params
    params.require(:property).permit(:name, :price, :address, :year, :note, accesses_attributes: %i(route station distance _destroy id))
    # => 外部キーの値を含めることができる
  end

  def set_frequency
    @frequency = 2
  end

end
