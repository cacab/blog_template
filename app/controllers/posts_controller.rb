class PostsController < ApplicationController
  def show
    if valid_post?
      render template: "posts/#{params[:post]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_post?
    File.exist?(Pathname.new(Rails.root + "app/views/posts/#{params[:post]}.html.erb"))
  end
end
