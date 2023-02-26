class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true
  belongs_to :customer
  has_rich_text :body

  after_create_commit :notify_recipient
  before_destroy :cleanup_notifications
  has_noticed_notifications model_name: 'Notification'

  private

  def notify_recipient
    return if post.customer == customer

    CommentNotification.with(comment: self, post: post).deliver_later(post.customer)
  end

  def cleanup_notifications
    notifications_as_comment.destroy_all
  end
end