class HomesController < ApplicationController
  def index
    @departments = Department.all
  end
end
