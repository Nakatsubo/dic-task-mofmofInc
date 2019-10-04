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
      redirect_to access_path(@access.id), notice: 'アクセスを作成しました'
    else
      render :new
    end
  end

  def update
    if @access.update(access_params)
      redirect_to @access, notice: 'アクセスを更新しました'
    else
      render :edit
    end
  end

  def destroy
    @access.destroy
    redirect_to accesses_url, notice: 'アクセスを削除しました'
  end

  private

  def set_access
    @access = Access.find(params[:id])
  end

  def access_params
    params.require(:access).permit(:route, :station, :distance)
  end

end
