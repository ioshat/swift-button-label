_ = require './helpers'

class Swift
  render: ($) ->
    $ "let #{@name} = UIButton()"
    $ "#{@name}.setTranslatesAutoresizingMaskIntoConstraints(false)"
    $ "#{@name}.setTitleColor(UIColor(#{_.swiftColor(@baseTextStyle.color)}), forState: .Normal)"
    $ "#{@name}.setTitle(#{_.nsLocalizedString(this)}, forState: .Normal)"
    if @baseTextStyle.font.postScriptName
      $ "#{@name}.titleLabel.font = UIFont(name: \"#{@baseTextStyle.font.postScriptName}\", size: #{@baseTextStyle.font.size / 2})"
    $.newline()
    $ "#{@options.superviewName}.addSubview(#{@name})"


exports.renderClass = Swift
