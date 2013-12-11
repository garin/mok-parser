# -*- encoding: utf-8 -*-
# Copyright (C) garin <garin54@gmail.com> 2011
# See the included file COPYING for details.
# = MokObject
module Mok
  class HeadIndex
    def initialize
      @head_index = []
      @point_pre = 0
    end

    def update(level)
      point = level - 2
      if @point_pre > point
        (@point_pre - point).times do
          @head_index.pop
          @point_pre -= 1
        end
      end
      @head_index[point] ||= 0
      @head_index[point] += 1
      @point_pre = point
    end

    def to_s
      @head_index.map{|n|
        n = 0 if n.nil?
        n
      }.join(".") + "."
    end

    def clear
      @heade_index = [0,0,0,0,0,0,0]
    end
  end
end
module Mok
  class Element
    def initialize(contents = "")
      @contents = Array(contents)
    end
    attr_reader :contents

    def apply
      @contents
    end
    def add=(content)
      @contents.concat(content.lines)
    end
  end

  # ----- Blocks
  class WhiteLine < Element
    def apply  # noop
      ""
    end
  end

  class PlainTextBlock < Element
    def apply
      @contents.map {|c| c.apply }
    end
  end

  class HeadLine < Element
    # @contents = [level, title]
    def apply
      "=" * @contents[0] + " #{@contents[1]}\n"
    end
  end

  class Paragraph < Element
    def apply
      "#{@contents.map{|c| c.apply}}"
    end
  end

  class Quote < Element
    def apply
      "#{@contents}"
    end
  end

  class ItemList < Element
    def apply
      str = "<ItemList>"
      @contents.map  do |c|
        if c == :INDENT
          str += "<INDENT/>"
        elsif c == :DEDENT
          str +="<DEDENT/>"
        else
          str += "<ItemListItem>#{c.apply}</ItemListItem>"
        end
      end
      str += "</ItemList>"
      str
    end
  end

  class NumList < Element
    def apply
      str = "<NumList>"
      num = 1
      @contents.map  do |c|
        if c == :INDENT
          str += "<INDENT/>"
        elsif c == :DEDENT
          str +="<DEDENT/>"
        else
          str += "<NumListItem>#{num}. #{c.apply}</NumListItem>"
          num += 1
        end
      end
      str += "</NumList>"
      str
    end
  end

  class Desc < Element
    def apply
      ":#{@contents[0]}\n#{@contents[1].map {|c| c.apply} }"
    end
  end

  class Table < Element
    def apply
      str = ""
      @contents.each do |line|
        line.each do |item|
          if item.split(//)[0] == "*"
            str += "|*#{item.sub(/^\*/, "").sub(/\*$/,"")}"
          else
            str += "|#{item}"
          end
        end
        str += "\n"
      end
      str
    end
  end

  # -- Blocks end

  # -- Inlines
  class Empty < Element
    def apply
      ""
    end
  end

  class Plain < Element
    def apply
      "#{contents}"
    end
  end

  class Label < Element
    # @contents = [label, title, id]
    def apply
#      "#{@contents[1]}(#{@contents[0]}) mok-label-#{@contents[2]}"
      "#{@contents[1]}(#{@contents[0]}):#{@contents[2]}"
    end
  end

  class LabelLink < Element
    # @contents = [title, uri]
    def apply
      "<LabelLink>Label:#{@contents[0]},Title:#{@contents[1]}</LabelLink>"
    end
  end

  class Reference < Element
    # @contents = [title, uri]
    def apply
      "<Reference>Title:#{@contents[0]},Url:#{@contents[1]}</Reference>"
    end
  end

  class Emphasis < Element
    def apply
      "<Emphasis>#{@contents.map{|c| c.apply}}</Emphasis>"
    end
  end

  class Italic < Element
    def apply
      "<Italic>#{@contents.map{|c| c.apply}}</Italic>"
    end
  end

  class Strike < Element
    def apply
      "<Strike>#{@contents.map{|c| c.apply}}</Strike>"
    end
  end

  class Code < Element
    def apply
      "<Code>#{@contents.map{|c| c.apply}}</Code>"
    end
  end

  class Kbd < Element
    def apply
      "<Kbd>#{@contents.map{|c| c.apply}}</Kbd>"
    end
  end

  class Ruby < Element
    def apply
      "<Ruby>Base:#{@contents[0]},Text:#{@contents[1]}</Ruby>"
    end
  end

  class Variable < Element
    def apply
      "<Variable>#{@contents}</Variable>"
    end
  end

  class Footnote < Element
    #@contents = [contents, id]
    def apply
      "<Footnote>#{@contents[0].map{|c| c.apply}}</Footnote>"
    end
  end

  class Media < Element
    def apply
      # @contents = [Name, Mime::MediaType, Mime::SubType]
      "<Media>Name:#{@contents[0]},Mime::MediaType:#{@contents[1]},Mime::SubType:#{@contents[2]}</Media>"
    end
  end

  class Verb       < Element
    def apply
      "<Verb>#{@contents}</Verb>"
    end
  end

  class Manuedo       < Element
    def apply
      "<Manuedo>#{@contents}</Manuedo>"
    end
  end
end

class String
  def to_code
    self.lines.to_a.pack('m').tr("012345679+/=\n", 'abcdefghiPSIQ').strip
  end
end

# support for ruby-2.0.0
class Array
  def to_s
    self.join
  end
end
