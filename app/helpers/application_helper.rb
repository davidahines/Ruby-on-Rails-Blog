# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def toggle_button (div_id, first, second)
    output = toggle_button_maker(div_id, first,  second)
    output << toggle_button_maker(div_id, second, first)
    return output
  end
  def toggle_button_maker(div_id, action1, action2)
    unique_name_action1=div_id + "_" + action1
    unique_name_action2=div_id + "_" + action2
    output = "<div id=\'#{unique_name_action1}\' class='#{action1}'"
    if (action1 == "show")
      output << "style='display:none'"
    end
    output <<">"
    output << "<a href=\'javascript:void(0)\' onclick=\"$(\'#{div_id}\').toggle();$(\'#{unique_name_action1}\').hide();$(\'#{unique_name_action2}\').show()\">"
    output << image_tag("/images/icons/bullet_toggle_#{action1}.png")
    output << "</a></div>"
    return output
  end
end