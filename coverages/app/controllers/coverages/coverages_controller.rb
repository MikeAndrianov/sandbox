require_dependency "coverages/application_controller"

module Coverages
  class CoveragesController < ApplicationController
    before_action :set_coverage, only: [:show, :edit, :update, :destroy]

    # GET /coverages
    def index
      @coverages = []
    end

    # GET /coverages/1
    def show
    end

    # GET /coverages/new
    def new
      @coverage = Coverage.new
    end

    # GET /coverages/1/edit
    def edit
    end

    # POST /coverages
    def create
      @coverage = Coverage.new(coverage_params)

      if @coverage.save
        redirect_to @coverage, notice: 'Coverage was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /coverages/1
    def update
      if @coverage.update(coverage_params)
        redirect_to @coverage, notice: 'Coverage was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /coverages/1
    def destroy
      @coverage.destroy
      redirect_to coverages_url, notice: 'Coverage was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_coverage
        @coverage = Coverage.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def coverage_params
        params.require(:coverage).permit(:title)
      end
  end
end
