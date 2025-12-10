class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end
  
  def update
    @profile = Profile.find(params[:id])
    @profile.message = params[:profile][:message]
    @profile.save
    redirect_to profile_path(@profile)
  end
end
