class IssueStatusesController < ApplicationController
  before_action :set_issue_status, only: [:show, :update, :destroy]

  # GET /issue_statuses
  def index
    @issue_statuses = IssueStatus.all

    render json: @issue_statuses
  end

  # GET /issue_statuses/1
  def show
    render json: @issue_status
  end

  # POST /issue_statuses
  def create
    @issue_status = IssueStatus.new(issue_status_params)

    if @issue_status.save
      render json: @issue_status, status: :created, location: @issue_status
    else
      render json: @issue_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /issue_statuses/1
  def update
    if @issue_status.update(issue_status_params)
      render json: @issue_status
    else
      render json: @issue_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /issue_statuses/1
  def destroy
    @issue_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_status
      @issue_status = IssueStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def issue_status_params
      params.require(:issue_status).permit(:name, :marks_as_closed, :color)
    end
end
