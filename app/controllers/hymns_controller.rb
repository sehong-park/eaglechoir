class HymnsController < ApplicationController
  before_action :set_hymn, only: [:show, :edit, :update, :destroy]

  # GET /hymns
  # GET /hymns.json
  def index
    @hymns = Hymn.all
  end

  # GET /hymns/1
  # GET /hymns/1.json
  def show
  end

  # GET /hymns/new
  def new
    @hymn = Hymn.new
  end

  # GET /hymns/1/edit
  def edit
  end

  # POST /hymns
  # POST /hymns.json
  def create
    @hymn = Hymn.new(hymn_params)

    respond_to do |format|
      if @hymn.save
        format.html { redirect_to @hymn, notice: 'Hymn was successfully created.' }
        format.json { render :show, status: :created, location: @hymn }
      else
        format.html { render :new }
        format.json { render json: @hymn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hymns/1
  # PATCH/PUT /hymns/1.json
  def update
    respond_to do |format|
      if @hymn.update(hymn_params)
        format.html { redirect_to @hymn, notice: 'Hymn was successfully updated.' }
        format.json { render :show, status: :ok, location: @hymn }
      else
        format.html { render :edit }
        format.json { render json: @hymn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hymns/1
  # DELETE /hymns/1.json
  def destroy
    @hymn.destroy
    respond_to do |format|
      format.html { redirect_to hymns_url, notice: 'Hymn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hymn
      @hymn = Hymn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hymn_params
      params.require(:hymn).permit(:title, :index)
    end
end
