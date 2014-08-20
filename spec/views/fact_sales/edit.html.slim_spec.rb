require 'rails_helper'

RSpec.describe "fact_sales/edit", :type => :view do
  before(:each) do
    @fact_sale = assign(:fact_sale, FactSale.create!(
      :started_at => "MyString",
      :charged_amount => 1,
      :estimated_amount => 1,
      :location => "MyString"
    ))
  end

  it "renders the edit fact_sale form" do
    render

    assert_select "form[action=?][method=?]", fact_sale_path(@fact_sale), "post" do

      assert_select "input#fact_sale_started_at[name=?]", "fact_sale[started_at]"

      assert_select "input#fact_sale_charged_amount[name=?]", "fact_sale[charged_amount]"

      assert_select "input#fact_sale_estimated_amount[name=?]", "fact_sale[estimated_amount]"

      assert_select "input#fact_sale_location[name=?]", "fact_sale[location]"
    end
  end
end
