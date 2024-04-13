require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = CommentsMailer.submitted comments(:one)
    assert_equal "New comment!", mail.subject
    assert_equal ["mkeene@netspace.net.au"], mail.to
    assert_equal ["from@example.com"], mail.from
    #assert_match "Hi", mail.body.encoded
  end

end
