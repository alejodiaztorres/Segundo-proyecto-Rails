class StudensController < ApplicationController
  before_action :set_studen, only: [:show, :edit, :update, :destroy]

  # GET /studens
  # GET /studens.json
  def index
    @studens = Studen.all
  end

  # GET /studens/1
  # GET /studens/1.json
  def show
  end

  # GET /studens/new
  def new
    @studen = Studen.new
  end

  # GET /studens/1/edit
  def edit
  end

  # POST /studens
  # POST /studens.json
  def create
    @studen = Studen.new(studen_params)

    respond_to do |format|
      if @studen.save
        format.html { redirect_to @studen, notice: 'Studen was successfully created.' }
        format.json { render :show, status: :created, location: @studen }
      else
        format.html { render :new }
        format.json { render json: @studen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studens/1
  # PATCH/PUT /studens/1.json
  def update
    respond_to do |format|
      if @studen.update(studen_params)
        format.html { redirect_to @studen, notice: 'Studen was successfully updated.' }
        format.json { render :show, status: :ok, location: @studen }
      else
        format.html { render :edit }
        format.json { render json: @studen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studens/1
  # DELETE /studens/1.json
  def destroy
    @studen.destroy
    respond_to do |format|
      format.html { redirect_to studens_url, notice: 'Studen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studen
      @studen = Studen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studen_params
      params.require(:studen).permit(:name, :age)
    end
end
