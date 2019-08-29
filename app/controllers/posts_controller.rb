class PostsController < ApplicationController
	 before_action :find_post, only: [:show, :update, :edit, :destroy]

<<<<<<< HEAD
def new
  @post = Post.new
end

def index
  @posts = Post.all
end
=======
   def new
     @post = Post.new
   end

	def index
		@posts = Post.all.order("created_at DESC")
	end
>>>>>>> 61dd6560b29c157768f733c51fa7a5b577799b4a

def create
@post = Post.new(params[:post].permit(:title, :content))

<<<<<<< HEAD
  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end

def show
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])

  if @post.update(params[:post].permit(:title, :content))
    redirect_to @post
  else
    render 'edit'
  end
end

def edit
		@post = Post.find(params[:id])
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy

  redirect_to posts_path
end


=======

  def edit
		@post = Post.find(params[:id])
	end

  def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def show
	end

	def update

		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end



	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path

	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end

	def find_post
		@post = Post.find(params[:id])
	end
>>>>>>> 61dd6560b29c157768f733c51fa7a5b577799b4a

private
 def post_params
  params.require(:post).permit(:title, :content)
 end
end
