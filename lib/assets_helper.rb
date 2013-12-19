require "assets_helper/version"

module AssetsHelper

  def view_context
    super.tap do |view|
      (@_content_for || {}).each do |name,content|
        view.content_for name, content
      end
    end
  end

  def content_for(name, content)
    @_content_for ||= {}
    if @_content_for[name].respond_to?(:<<)
      @_content_for[name] << content
    else
      @_content_for[name] = content
    end
  end

  def content_for?(name)
    @_content_for[name].present?
  end

  def include_css
    files = Dir.entries("app/assets/stylesheets/#{params[:controller]}")

    files.each do |file|
      file_name = file.split('.')[0]
      if file_name.present?
        content_for :asset, "<link href='/assets/#{params[:controller]}/#{file_name}.css?body=1' media='all' rel='stylesheet' type='text/css'>".html_safe
      end
    end
  end
  
  def include_javascript
    files = Dir.entries("app/assets/javascripts/#{params[:controller]}")

    files.each do |file|
      file_name = file.split('.')[0]
      if file_name.present?
        content_for :asset, "<script src='/assets/#{params[:controller]}/#{file_name}.js?body=1' type='text/javascript'></script>".html_safe
      end
    end
  end
  
end

ActionController::Base.send :include, AssetsHelper