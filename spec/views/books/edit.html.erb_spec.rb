require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :isbn => "MyString",
      :title => "MyString",
      :price => 1,
      :publish => "MyString",
      :dl => false
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[isbn]"

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[price]"

      assert_select "input[name=?]", "book[publish]"

      assert_select "input[name=?]", "book[dl]"
    end
  end
end
