class HTMLGenerator

  def initialize(wrapper=nil) #Makes initialize accept wrapper
    @wrapper = wrapper
  end

  def drapper(text)
    if @wrapper == nil
      @wrapper.sub! 'CONTENT', text
    else
      text
  end
  end


  def section(text) #interpolate the string argument
    drapper("<section>#{text}</section>") #Argument
  end


    def unordered_list(items) #Need to add an argument or a method
      def unordered_list(list_items)
        drapper("<ul>#{list.map{ |list_item| "<li>#{list_item}</li>" }.join}</ul>")


    def button(button_text, class_hash = nil)
          if class_hash
            drapper("<button class='#{class_hash[:class]}'>#{button_text}</button>")
          else
            drapper("<button>#{button_text}</button>")
      end
    end
  end



