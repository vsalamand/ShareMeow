require 'app/emoji_helper'

module ImageTemplates
  class Menu < Base
    def render_options
      @options[:title] = EmojiHelper.emojify(@options[:title])
      @options[:content] = EmojiHelper.emojify(":shallow_pan_of_food: #{@options[:content]}")

      super
    end

    def allowed_options
      %w(title avatar_url username content)
    end

    def erb_template
      'app/views/menu.erb'
    end

    def css_stylesheet
      'app/css/menu.css'
    end

    def image_width
      500
    end
  end
end
