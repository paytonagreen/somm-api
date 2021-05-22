class CountriesWinesController < ApplicationController
    def index
        @countries_wines = CountriesWine.all
        render json: @countries_wines
    end

    def show
        @countries_wine = CountriesWine.find(params[:id])
        render json: @countries_wine
    end

    def create
        @country = Country.find(params[:country_id])
        @wine = Wine.find(params[:wine_id])
        @country.wines << @wine
        render json: @country.wines
    end

    def update
    end

    def destroy
        @countries_wines = CountriesWine.all
        @countries_wine = Wine.find(params[:id])
        @countries_wine.destroy
        render json: @countries_wines
    end
end
