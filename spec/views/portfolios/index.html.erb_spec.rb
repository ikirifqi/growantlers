require 'rails_helper'

RSpec.describe "portfolios/index", :type => :view do
  before(:each) do
    assign(:portfolios, [
      Portfolio.create!(
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
      ),
      Portfolio.create!(
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
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    assert_select "tr>td", :text => "Main Image".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Image".to_s, :count => 2
    assert_select "tr>td", :text => "Optional Image".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Agency".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Footer Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Brief Description".to_s, :count => 2
  end
end
