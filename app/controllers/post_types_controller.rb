class PostTypesController < ApplicationController
    def index
        @post_types = PostType.all
    end

    def new
        @post_type = PostType.new
    end
    
    def create
        @post_type = PostType.new(post_type_params)
        @post_type.save
    end

    private
    def post_type_params
        params.require(:post_type).permit(:title)
    end
end