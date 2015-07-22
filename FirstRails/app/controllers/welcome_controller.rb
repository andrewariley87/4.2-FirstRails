class WelcomeController < ApplicationController

  def index
  end

  def show
    @name = params[:name]
  end

  def lorem
    lipsum_wanted = params[:type]
    if lipsum_wanted == "old_fashioned"
      @lipsum = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    elsif lipsum_wanted == "hipster"
      @lipsum = "Oh. You need a little dummy text for your mockup? How quaint. I bet you’re still using Bootstrap too…"
    elsif lipsum_wanted == "samuel"
      @lipsum = "My money's in that office, right? If she start giving me some bullshit about it ain't there, and we got to go someplace else and get it, I'm gonna shoot you in the head then and there."
    else
      @lipsum = "please insert old_fashioned, hipster, or samuel"
    end
  end
end
