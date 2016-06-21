require 'rails_helper'

RSpec.describe "portfolios/new", :type => :view do
  before(:each) do
    assign(:portfolio, Portfolio.new(
      :main_image => "MyString",
      :secondary_image => "MyString",
      :optional_image => "MyString",
      :title => "MyString",
      :main_description => "MyText",
      :client => "MyString",
      :role => "MyString",
      :agency => "MyString",
      :left_description => "MyText",
      :right_description => "MyText",
      :team => nil,
      :footer_title => "MyString",
      :footer_description => "MyText",
      :slug_id => "MyString",
      :brief_description => "MyString"
    ))
  end

  it "renders new portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolios_path, "post" do

      assert_select "input#portfolio_main_image[name=?]", "portfolio[main_image]"

      assert_select "input#portfolio_secondary_image[name=?]", "portfolio[secondary_image]"

      assert_select "input#portfolio_optional_image[name=?]", "portfolio[optional_image]"

      assert_select "input#portfolio_title[name=?]", "portfolio[title]"

      assert_select "textarea#portfolio_main_description[name=?]", "portfolio[main_description]"

      assert_select "input#portfolio_client[name=?]", "portfolio[client]"

      assert_select "input#portfolio_role[name=?]", "portfolio[role]"

      assert_select "input#portfolio_agency[name=?]", "portfolio[agency]"

      assert_select "textarea#portfolio_left_description[name=?]", "portfolio[left_description]"

      assert_select "textarea#portfolio_right_description[name=?]", "portfolio[right_description]"

      assert_select "input#portfolio_team_id[name=?]", "portfolio[team_id]"

      assert_select "input#portfolio_footer_title[name=?]", "portfolio[footer_title]"

      assert_select "textarea#portfolio_footer_description[name=?]", "portfolio[footer_description]"

      assert_select "input#portfolio_slug_id[name=?]", "portfolio[slug_id]"

      assert_select "input#portfolio_brief_description[name=?]", "portfolio[brief_description]"
    end
  end
end
