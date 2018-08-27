class ArticlesController < ApplicationController
	def index
		@articles=Article.all
	end

	def show
		begin
			@article=Article.find(params[:id])
		rescue => ex
			redirect_to action: 'new'
		end
	end

	def new
		@article = Article.new
	end

	def edit
		@article=Article.find(params[:id])
	end

	def create
		@article=Article.new(article_params)
	#	@user='zubairpunjab786'
		if @article.save
			NewMailer.signup_confirmation.deliver
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article=Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
  		@article = Article.find(params[:id])
  		@article.destroy
		redirect_to articles_path
	end

	private
	def article_params
		params.require(:article).permit(:title,:text)
	end
end
