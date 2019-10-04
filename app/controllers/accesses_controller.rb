class AccessesController < ApplicationController

  before_action :set_access, only: [:show, :edit, :update, :destroy]

  def index
    @accesses = Access.all
  end

  def show
  end

  def new
    @access = Access.new
  end

  def edit
  end

  def create
    @access = Access.new(access_params)
    if @access.save
      redirect_to @access, notice: '最寄り駅を作成しました'
    else
      render :new
    end
  end

  def update
    if @access.update(access_params)
      redirect_to @access, notice: '最寄り駅を更新しました'
    else
      render :edit
    end
  end

  def destroy
    @access.destroy
    redirect_to accesses_url, notice: '最寄り駅を削除しました'
  end

  private

  def set_access
    @access = Access.find(params[:id])
  end

  def access_params
    params.require(:access).permit(:route1, :station1, :distance1, :route2, :station2, :distance2)
  end

end
