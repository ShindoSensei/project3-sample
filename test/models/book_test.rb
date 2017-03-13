require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @the_book = books(:harry_potter)
    @new_book = books(:new_book)
  # test "the truth" do
  #   assert true
  end

  test "name must be Harry Potter" do
    assert_equal 'Harry Potter and the Chamber', @the_book.name, 'The book is not named as per fixture'
  end

  test "book.author must be JK Rowling" do
    assert_equal 'JK Rowling', @the_book.author.name, 'The book is not authored as per fixture'
  end

  test "name must be present" do
    assert_not @new_book.valid?, 'Book name must be validated'
  end

end
