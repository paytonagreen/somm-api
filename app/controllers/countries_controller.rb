class CountriesController < ApplicationController
    def index
        @countries = Country.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            countries: @countries,
            total_pages: @countries.total_pages,
            total_entries: @countries.total_entries
        }
    end

    def show
        @country = Country.find(params[:id])
        render json: @country
    end

    def show_wines
        @country = Country.find(params[:country_id])
        render json: @country.wines
    end
    
    def show_grapes
        @country = Country.find(params[:country_id])
        render json: @country.grapes
    end

    def create
        @country = Country.create(
            name: params[:name]
        )
        render json: @country
    end

    def update
        @country = Country.find(params[:id])
        @country.update(
            name: params[:name]
        )
        render json: @country
    end

    def destroy
        @countries = Country.all
        @country = Country.find(params[:id])
        render json: @countries
        @country.destroy
    end
end
