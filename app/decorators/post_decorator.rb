class PostDecorator < ApplicationDecorator
  delegate_all

  def body
    helpers.simple_format(object.body)
  end

end
