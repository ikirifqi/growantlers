require 'rails_helper'

RSpec.describe "portfolios/show", :type => :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :main_image => "Main Image",
      :secondary_image => "Secondary Image",
      :optional_image => "Optional Image",
      :title => "Title",
      :main_description => "MyText",
      :client => "Client",
      :role => "Role",
      :agency => "Agency",
      :left_description => "MyText",
      :right_description => "MyText",
      :team => nil,
      :footer_title => "Footer Title",
      :footer_description => "MyText",
      :slug_id => "Slug",
      :brief_description => "Brief Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Main Image/)
    expect(rendered).to match(/Secondary Image/)
    expect(rendered).to match(/Optional Image/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Agency/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Footer Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Brief Description/)
  end
end
