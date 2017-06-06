class CachorrosController < ApplicationController
  before_action :set_cachorro, only: [:show, :edit, :update, :destroy]
  before_action :set_lista_raca, only: [:show, :edit]

  # GET /cachorros
  # GET /cachorros.json
  def index
    if params[:pesquisar]
      @cachorros = Cachorro.pesquisa(params[:pesquisar]).paginate(:page => params[:page], :per_page => 50) 
    else
      @cachorros = Cachorro.all.paginate(:page => params[:page], :per_page => 50) 
    end   
  end

  # GET /cachorros/1
  # GET /cachorros/1.json
  def show
  end

  # GET /cachorros/new
  def new
    @cachorro = Cachorro.new    
  end

  # GET /cachorros/1/edit
  def edit
  end

  # POST /cachorros
  # POST /cachorros.json
  def create
    @cachorro = Cachorro.new(cachorro_params)

    respond_to do |format|
      if @cachorro.save
        format.html { redirect_to @cachorro, notice: 'Cachorro was successfully created.' }
        format.json { render :show, status: :created, location: @cachorro }
      else
        format.html { render :new }
        format.json { render json: @cachorro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cachorros/1
  # PATCH/PUT /cachorros/1.json
  def update
    respond_to do |format|
      if @cachorro.update(cachorro_params)
        format.html { redirect_to @cachorro, notice: 'Cachorro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cachorro }
      else
        format.html { render :edit }
        format.json { render json: @cachorro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cachorros/1
  # DELETE /cachorros/1.json
  def destroy
    @cachorro.destroy
    respond_to do |format|
      format.html { redirect_to cachorros_url, notice: 'Cachorro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cachorro
      @cachorro = Cachorro.find(params[:id])
    end

    def set_lista_raca
      @lista_racas = ListaRaca.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cachorro_params
      params.require(:cachorro).permit(:lista_raca_id, :castrado, :nascimento, :nome_cao, :nome_dono, :telefone, :data_ultima_vez_petshop, :sexo)
    end
end
