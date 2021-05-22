class ProducersController < ApplicationController
    def index
        @producers = Producer.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            producers: @producers,
            total_pages: @producers.total_pages,
            total_entries: @producers.total_entries
        }
    end

    def show
        @producer = Producer.find(params[:id])
        render json: @producer
    end

    def show_wines
        @producer = Producer.find(params[:producer_id])
        render json: @producer.wines
    end
    
    def show_grapes
        @producer = Producer.find(params[:producer_id])
        render json: @producer.grapes
    end

    def create
        @producer = Producer.create(
            name: params[:name]
        )
        render json: @producer
    end

    def update
        @producer = Producer.find(params[:id])
        @producer.update(
            name: params[:name]
        )
        render json: @producer
    end

    def destroy
        @producers = Producer.all
        @producer = Producer.find(params[:id])
        render json: @producers
        @producer.destroy
    end
end
