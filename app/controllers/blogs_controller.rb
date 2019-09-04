class BlogsController < ApplicationController
    def  create
        blog=Blog.create(blog_params)
        render json: blog
    end

    private

    def  blog_params
    params.require(:blog).permit(:user_id,:title,:url)
    end
end
