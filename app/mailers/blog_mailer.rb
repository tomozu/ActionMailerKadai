class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog.user = blog
    
    mail to: @blog.user.mail, subject:"ブログ作成完了メール"
  end
end
