module CommentsHelper
  def show_delete_link(comment)
    # TODO implement proper user login and change this here.
    link_to("Delete", comment_path(comment), :method => :delete)
  end
end
