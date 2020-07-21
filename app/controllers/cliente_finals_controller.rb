class ClienteFinalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @cliente = ClienteFinal.new
  end

  def create
    @cliente = ClienteFinal.new(clientes_params)
    x = (1..20_900).to_a.sample
    user = User.new(email: @cliente.email, password: "#{@cliente.name}#{x}")
    if user.save
    @cliente.save
    redirect_to root_path
    end
  end

  private

  def clientes_params
    params.require(:cliente_final).permit(:name, :nro, :direccion, :email, :latitud, :longitud)
  end
end
