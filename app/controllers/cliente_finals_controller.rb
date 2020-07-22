class ClienteFinalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create]
  def index
  end

  def new
    @cliente = ClienteFinal.new
  end

  def create
    @cliente = ClienteFinal.new(clientes_params)
    redirect_to root_path if @cliente.save
  end

  private

  def clientes_params
    params.require(:cliente_final).permit(:name, :nro, :direccion, :email, :latitud, :longitud)
  end
end
