class CommentsController < ApplicationController
  around_action :handle_shard

  def index
    @comments = Comment.all
  end

  private

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:message, :remark, :shard)
  end

  # Connect to the tenant database and yield the block. Use it as a around_action
  def handle_shard
    ComdevRecord.connected_to(shard: db_shard, role: :writing) do
      Rails.logger.warn { "shard used:'#{comment_params[:shard].to_sym}'" }
      yield
    end
  end

  def db_shard
    comment_params[:shard].to_sym
  end
end
