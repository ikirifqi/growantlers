require 'rails_helper'

RSpec.describe "teams/index", :type => :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :name => "Name",
        :position => "Position",
        :description => "MyText",
        :photo => "Photo"
      ),
      Team.create!(
        :name => "Name",
        :position => "Position",
        :description => "MyText",
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
