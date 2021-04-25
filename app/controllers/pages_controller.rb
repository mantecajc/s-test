class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @quizzes = Quiz.all
    @user = current_user
  end
end
