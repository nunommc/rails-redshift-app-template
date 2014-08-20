require 'rails_helper'

RSpec.describe "fact_sales/index", :type => :view do
  before(:each) do
    assign(:fact_sales, [
      FactSale.create!(
        :started_at => "Started At",
        :charged_amount => 1,
        :estimated_amount => 2,
        :location => "Location"
      ),
      FactSale.create!(
        :started_at => "Started At",
        :charged_amount => 1,
        :estimated_amount => 2,
        :location => "Location"
      )
    ])
  end

  it "renders a list of fact_sales" do
    render
    assert_select "tr>td", :text => "Started At".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
