class ProductosController < ApplicationController
    def show
        @producto = Producto.find(params[:id])
    end

    def index
        @productos = Producto.all
    end

    def new
    end

    def create
        @producto = Producto.new(params.require(:producto).permit(:nombre, :nombre_bonito, :descripcion, :precio, :activo))
 
        @producto.save
        redirect_to @producto
    end
end
