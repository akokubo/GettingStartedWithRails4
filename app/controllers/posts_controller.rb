# coding: utf-8
class PostsController < ApplicationController
	def new
	end

	def create
		@post = Post.new(post_params)

		@post.save
		redirect_to @post
	end

private
	def post_params
		# require(キー) キーが存在している場合、それを返す
		# permit(キー) 指定したキーのみを返す
		params.require(:post).permit(:title, :text)
	end
end
