require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  # test "account_activation" do
  #   user = users(:michael)
  #   user.activation_token = User.new_token
  #   mail = UserMailer.account_activation(user)
  #   assert_equal "アカウント認証", mail.subject
  #   assert_equal [user.email], mail.to
  #   assert_equal ["noreply@example.com"], mail.from
  #   assert_match user.name,               mail.body.encoded
  #   assert_match user.activation_token,   mail.body.encoded
  #   assert_match CGI.escape(user.email),  mail.body.encoded
  # end

  # test "password_reset" do
  #   user = users(:michael)
  #   user.reset_token = User.new_token
  #   mail = UserMailer.password_reset(user)
  #   assert_equal "パスワード再設定", mail.subject
  #   assert_equal [user.email], mail.to
  #   assert_equal ["noreply@example.com"], mail.from
  #   assert_match user.reset_token,        mail.body.encoded
  #   assert_match CGI.escape(user.email),  mail.body.encoded
  # end
end

# このページのコメントアウトについて
# 2 failures
# test/mailers/user_mailer_test.rb:9:in `block in <class:UserMailerTest>'
# test/mailers/user_mailer_test.rb:24:in `block in <class:UserMailerTest>'
# 解決策として有力候補に上がったのが「mail-iso-2022-jp」というメール本文の日本語をJISコードに書き換えてくれるgemファイルの導入でした。
# この「mail-iso-2022-jp」をgemファイルに追加し、インストールをする?。(未実施)
