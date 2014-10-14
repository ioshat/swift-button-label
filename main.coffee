_ = require './helpers'

class Swift
  render: ($) ->
    $ "let #{@name} = UIButton()"
    $ "#{@name}.setTranslatesAutoresizingMaskIntoConstraints(false)"
    $ "#{@name}.setTitleColor(UIColor(#{_.swiftColor(@baseTextStyle.color)}), forState: .Normal)"
    $ "#{@name}.setTitle(\"#{@name}\", forState: .Normal)"
    $ "#{@name}.titleLabel.font = UIFont(name: \"#{@baseTextStyle.font.name}\", size: 24)"
    $.newline()
    $ "#{@options.superviewName}.addSubview(#{@name})"


exports.renderClass = Swift
