require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? method returns true for draft blog post" do
    assert blog_posts(:draft).draft?
  end

  test "draft? method returns false for published blog post" do
    refute blog_posts(:published).draft?
  end

  test "draft? method returns false for scheduled blog post" do
    refute blog_posts(:scheduled).draft?
  end

  test "published? method returns true for a published blog post" do 
    assert blog_posts(:published).published?
  end

  test "published? method returns false for a draft blog post" do 
    refute blog_posts(:draft).published?
  end

  test "published? method returns false for a scheduled blog post" do 
    refute blog_posts(:scheduled).published?
  end

  test "scheduled? method returns true for a scheduled blog post" do 
    assert blog_posts(:scheduled).schedule?
  end

  test "scheduled? method returns false for a draft blog post" do 
    refute blog_posts(:draft).schedule?
  end

  test "scheduled? method returns false for a published blog post" do 
    refute blog_posts(:published).schedule?
  end
end
