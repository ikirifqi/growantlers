require 'rails_helper'

RSpec.describe "teams/show", :type => :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "Name",
      :position => "Position",
      :description => "MyText",
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Photo/)
  end
end
