module AppHelper
  def awesome_button title, path=nil, o={}
    html_options = {}.tap do |h|
      size = case o[:size]
             when nil then ''
             when :s then 'small '
             when :l then 'large '
             end
      hide = o[:hide] ? " hidden" : ""
      klass = " " << o[:class].to_s unless o[:class].blank?
      h[:class] = "#{size.to_s}awesome#{hide}#{klass}" 
      h[:onclick] = o[:onclick] << ';return false;' unless o[:onclick].blank?
    end

    link_to title, path || '', html_options
  end

  def awesome_submit o={}
    klass = o[:class]
    click = o[:onclick]
    title = o[:title] || 'Create'

    awesome_button title, nil, :class => klass, :onclick => [click, "$(this).parents('form').submit()"].compact.join(';')
  end
end
