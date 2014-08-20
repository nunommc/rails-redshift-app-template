require 'rails_helper'

RSpec.describe "fact_sales/new", :type => :view do
  before(:each) do
    assign(:fact_sale, FactSale.new(
      :started_at => "MyString",
      :charged_amount => 1,
      :estimated_amount => 1,
      :location => "MyString"
    ))
  end

  it "renders new fact_sale form" do
    render

    assert_select "form[action=?][method=?]", fact_sales_path, "post" do

      assert_select "input#fact_sale_started_at[name=?]", "fact_sale[started_at]"

      assert_select "input#fact_sale_charged_amount[name=?]", "fact_sale[charged_amount]"

      assert_select "input#fact_sale_estimated_amount[name=?]", "fact_sale[estimated_amount]"

      assert_select "input#fact_sale_location[name=?]", "fact_sale[location]"
    end
  end
end
