require 'page-object/elements'

module PageObject
  class WatirPageObject
    def initialize(browser)
      @browser = browser      
    end

    #
    # platform method to navigate to a provided url
    # See PageObject#navigate_to
    #
    def navigate_to(url)
      @browser.goto url
    end

    #
    # platform method to retrieve the text from the current page
    # See PageObject#text
    #
    def text
      @browser.text
    end

    #
    # platform method to retrieve the html for the current page
    # See PageObject#html
    #
    def html
      @browser.html
    end

    #
    # platform method to retrieve the title for the current page
    # See PageObject#title
    #
    def title
      @browser.title
    end

    #
    # platform method to get the value stored in a text field
    # See PageObject::Accessors#text_field
    #
    def text_field_value_for(identifier)
      identifier = Elements::TextField.watir_identifier_for identifier
      @browser.text_field(identifier).value
    end
    
    #
    # platform method to set the value for a text field
    # See PageObject::Accessors#text_field
    #
    def text_field_value_set(identifier, value)
      identifier = Elements::TextField.watir_identifier_for identifier
      @browser.text_field(identifier).set(value)
    end
    
    #
    # platform method to retrieve a text field element
    # See PageObject::Accessors#text_field
    #
    def text_field_for(identifier)
      identifier = Elements::TextField.watir_identifier_for identifier
      element = @browser.text_field(identifier)
      Elements::TextField.new(element, :platform => :watir)
    end
    
    #
    # platform method to get the currently selected value from a select list
    # See PageObject::Accessors#select_list
    #
    def select_list_value_for(identifier)
      identifier = Elements::SelectList.watir_identifier_for identifier
      @browser.select_list(identifier).value
    end
    
    #
    # platform method to select a value from a select list
    # See PageObject::Accessors#select_list
    #
    def select_list_value_set(identifier, value)
      identifier = Elements::SelectList.watir_identifier_for identifier
      @browser.select_list(identifier).select(value)
    end
    
    #
    # platform method to return the select list element
    # See PageObject::Accessors#select_list
    #
    def select_list_for(identifier)
      identifier = Elements::SelectList.watir_identifier_for identifier
      element = @browser.select_list(identifier)
      Elements::SelectList.new(element, :platform => :watir)
    end
        
    #
    # platform method to click a link
    # See PageObject::Accessors#link
    #
    def click_link_for(identifier)
      identifier = Elements::Link.watir_identifier_for identifier
      @browser.link(identifier).click if identifier
    end
    
    #
    # platform method to return a PageObject::Elements::Link object
    # see PageObject::Accessors#link
    #
    def link_for(identifier)
      identifier = Elements::Link.watir_identifier_for identifier
      element = @browser.link(identifier)
      Elements::Link.new(element, :platform => :watir)
    end

    #
    # platform method to check a checkbox
    # See PageObject::Accessors#checkbox
    #
    def check_checkbox(identifier)
      identifier = Elements::CheckBox.watir_identifier_for identifier
      @browser.checkbox(identifier).set
    end

    #
    # platform method to uncheck a checkbox
    # See PageObject::Accessors#checkbox
    #
    def uncheck_checkbox(identifier)
      identifier = Elements::CheckBox.watir_identifier_for identifier
      @browser.checkbox(identifier).clear
    end

    #
    # platform method to determine if a checkbox is checked
    # See PageObject::Accessors#checkbox
    #
    def checkbox_checked?(identifier)
      identifier = Elements::CheckBox.watir_identifier_for identifier
      @browser.checkbox(identifier).set?
    end
    
    #
    # platform method to return a PageObject::Elements::CheckBox element
    # See PageObject::Accessors#checkbox
    #
    def checkbox_for(identifier)
      identifier = Elements::CheckBox.watir_identifier_for identifier
      element = @browser.checkbox(identifier)
      Elements::CheckBox.new(element, :platform => :watir)
    end

    #
    # platform method to select a radio button
    # See PageObject::Accessors#radio_button
    #
    def select_radio(identifier)
      identifier = Elements::RadioButton.watir_identifier_for identifier
      @browser.radio(identifier).set
    end

    #
    # platform method to clear a radio button
    # See PageObject::Accessors#radio_button
    #
    def clear_radio(identifier)
      identifier = Elements::RadioButton.watir_identifier_for identifier
      @browser.radio(identifier).clear
    end

    #
    # platform method to determine if a radio button is selected
    # See PageObject::Accessors#radio_button
    #
    def radio_selected?(identifier)
      identifier = Elements::RadioButton.watir_identifier_for identifier
      @browser.radio(identifier).set?
    end
    
    #
    # platform method to return a PageObject::Eements::RadioButton element
    # See PageObject::Accessors#radio_button
    #
    def radio_button_for(identifier)
      identifier = Elements::RadioButton.watir_identifier_for identifier
      element = @browser.radio(identifier)
      PageObject::Elements::RadioButton.new(element, :platform => :watir)
    end
    
    #
    # platform method to return the text for a div
    # See PageObject::Accessors#div
    #
    def div_text_for(identifier)
      identifier = Elements::Div.watir_identifier_for identifier
      @browser.div(identifier).text
    end
    
    #
    # platform method to return a PageObject::Elements::Div element
    # See PageObject::Accessors#div
    #
    def div_for(identifier)
      identifier = Elements::Div.watir_identifier_for identifier
      element = @browser.div(identifier)
      PageObject::Elements::Div.new(element, :platform => :watir)
    end
    
    #
    # platform method to click a button
    # See PageObject::Accessors#button
    #
    def click_button_for(identifier)
      identifier = Elements::Button.watir_identifier_for identifier
      @browser.button(identifier).click
    end
    
    #
    # platform method to retrieve a button element
    # See PageObject::Accessors#button
    #
    def button_for(identifier)
      identifier = Elements::Button.watir_identifier_for identifier
      element = @browser.button(identifier)
      PageObject::Elements::Button.new(element, :platform => :watir)
    end
    
    def table_for(identifier)
      identifier = Elements::Table.watir_identifier_for identifier
      element = @browser.table(identifier)
      PageObject::Elements::Table.new(element, :platform => :watir)
    end
  end
end