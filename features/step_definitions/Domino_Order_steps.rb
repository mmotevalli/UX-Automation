When(/^I visit the Dominos home page$/) do
  visit('https://order.dominos.com/en/')
end
 
Then(/^I should see the Dominos home page$/) do
  expect(page).to have_css('.js-siteMainNavigation')
end

Then(/^I will click on Menu$/) do
    
    first('.qa-Cl_Loc').click
    find(".form__input--icon.Carryout").click
    find("#Address_Type_Select").set("House")
    first(".category card")
    #find(first('.none--handheld')).click
    find("#City").set("Herndon")
    print "***************************"
end
When(/^I click carry out button$/) do
    find(".form__input--icon.Carryout").click
    end
When(/^I enter details$/) do
    find("#Address_Type_Select").set("House")
    
    find("#City").set("Herndon")
    find("#Region").set("VA")
    find("#Postal_Code").set("20171")
    sleep 10
    print "*************************"
    
    
    first(".js-search-result").find(".btn--block").click
  
    find(".btn--large", :text => "CONTINUE").click
end