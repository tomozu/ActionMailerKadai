class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog = blog
    
    mail to: @blog.user.email, subject:"ブログ作成完了メール"
  end
end
