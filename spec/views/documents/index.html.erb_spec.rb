require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        title: "First Title",
        description: "MyText"
      ),
      Document.create!(
        title: "Second Title",
        description: "MyText"
      )
    ])
  end

  it "renders a list of documents" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
