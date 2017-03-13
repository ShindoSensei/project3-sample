require 'test_helper'

class PublisherTest < ActiveSupport::TestCase

  def setup
    @the_publisher = publishers(:penguin)
    @nobody = authors(:new_author)
    @jk = authors(:jk_rowling)
    @tolkien = authors(:tolkien)
  end
  # test "the truth" do
  #   assert true
  # end
  test "name of publisher is penguin" do
    assert_equal "Penguin",@the_publisher.name, "Name is not matched"
  end

  test "one of the authors is JK Rowling" do
    assert(@the_publisher.authors.include?(@jk) , "JK Rowling not found")
  end

  test "assert fail for @nobody" do
    assert_not(@the_publisher.authors.include?(@nobody), "No author is not one of our authors")
  end

  test "list out all my books from jk rowling" do
    p @the_publisher.books
    p @jk.books
    assert_equal @the_publisher.books, @jk.books.push(@tolkien.books), "Relationship between publisher and book is not established"
  end



end
