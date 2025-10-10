require 'rails_helper'

RSpec.describe "pages/my_logs.html.erb", type: :view do
  before(:each) do
    assign(:document, Document.new(
      title: "MyString",
      description: "MyText"
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "input[name=?]", "document[title]"

      assert_select "textarea[name=?]", "document[description]"
    end
  end
end
