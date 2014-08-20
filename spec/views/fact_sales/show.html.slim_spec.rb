require 'rails_helper'

RSpec.describe "fact_sales/show", :type => :view do
  before(:each) do
    @fact_sale = assign(:fact_sale, FactSale.create!(
      :started_at => "Started At",
      :charged_amount => 1,
      :estimated_amount => 2,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Started At/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Location/)
  end
end
