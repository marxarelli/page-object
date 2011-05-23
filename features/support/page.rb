class Page
  include PageObject

  text_field(:text_field_id, :id => "text_field_id")
  text_field(:text_field_class, :class => "text_field_class")
  text_field(:text_field_name, :name => "text_field_name")
  text_field(:text_field_xpath, :xpath => "//input[@type='text']")
  text_field(:text_field_css, :css => "input[type='text']")
  text_field(:text_field_tag_name, :tag_name => "input[type='text']")
  text_field(:text_field_index, :index => 0)
  text_field(:text_field_text, :text => "")
  text_field(:text_field_value, :value => "")

  link(:google_search_id, :id => "link_id")
  link(:google_search_name, :name => "link_name")
  link(:google_search_class, :class => "link_class")
  link(:google_search_xpath, :xpath => "//a[text()='Google Search']")
  link(:google_search_link, :link => "Google Search")
  link(:google_search_link_text, :link_text => "Google Search")
  link(:google_search_href, :href => "http://www.google.com")
  link(:google_search_text, :text => "Google Search")
  link(:google_search_index, :index => 0)
  
  select_list(:sel_list_id, :id => "sel_list_id")
  select_list(:sel_list_class, :class => "sel_list_class")
  select_list(:sel_list_index, :index => 0)
  select_list(:sel_list_name, :name => "sel_list_name")
  select_list(:sel_list_value, :value => "option1")
  select_list(:sel_list_xpath, :xpath => "//select")
  select_list(:sel_list_text, :text => "Test 1")

  checkbox(:cb_id, :id => 'cb_id')
  checkbox(:cb_name, :name => 'cb_name')
  checkbox(:cb_class, :class => 'cb_class')
  checkbox(:cb_index, :index => 0)
  checkbox(:cb_xpath, :xpath => "//input[@type='checkbox']")

  radio_button(:milk_id, :id => 'milk_id')
  radio_button(:milk_name, :name => 'milk_name')
  radio_button(:milk_class, :class => 'milk_class')
  radio_button(:milk_index, :index => 0)
  radio_button(:milk_xpath, :xpath => "//input[@type='radio']")
  
  radio_button(:butter_id, :id => 'butter_id')
  
  div(:div_id, :id => 'div_id')
  div(:div_name, :name => 'div_name')
  div(:div_class, :class => 'div_class')
  div(:div_index, :index => 0)
  div(:div_xpath, :xpath => '//div')
  
  table(:table_id, :id => 'table_id')
  table(:table_name, :name => 'table_name')
  table(:table_class, :class => 'table_class')
  table(:table_index, :index => 0)
  table(:table_xpath, :xpath => '//table')
  
  button(:button_id, :id => 'button_id')
  button(:button_name, :name => 'button_name')
  button(:button_class, :class => 'button_class')
  button(:button_index, :index => 0)
  button(:button_xpath, :xpath=> "//input[@type='submit']")
  button(:button_text, :text => 'Click Me')
end