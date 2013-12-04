#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.10
# from Racc grammer file "".
#

require 'racc/parser.rb'

require "parserutility"
require 'strscan'
require 'erb'
require 'rafelement'

module Raf
class InlineParser < Racc::Parser

module_eval(<<'...end rafinlineparser.ry/module_eval...', 'rafinlineparser.ry', 238)
include ParserUtility

EM_OPEN = '((*'
EM_OPEN_RE = /\A#{Regexp.quote(EM_OPEN)}/
EM_CLOSE = '*))'
EM_CLOSE_RE = /\A#{Regexp.quote(EM_CLOSE)}/

ITALIC_OPEN = '((_'
ITALIC_OPEN_RE = /\A#{Regexp.quote(ITALIC_OPEN)}/
ITALIC_CLOSE = '_))'
ITALIC_CLOSE_RE = /\A#{Regexp.quote(ITALIC_CLOSE)}/

STRIKE_OPEN = '((-'
STRIKE_OPEN_RE = /\A#{Regexp.quote(STRIKE_OPEN)}/
STRIKE_CLOSE = '-))'
STRIKE_CLOSE_RE = /\A#{Regexp.quote(STRIKE_CLOSE)}/

CODE_OPEN = '(({'
CODE_OPEN_RE = /\A#{Regexp.quote(CODE_OPEN)}/
CODE_CLOSE = '}))'
CODE_CLOSE_RE = /\A#{Regexp.quote(CODE_CLOSE)}/

KBD_OPEN = '((%'
KBD_OPEN_RE = /\A#{Regexp.quote(KBD_OPEN)}/
KBD_CLOSE = '%))'
KBD_CLOSE_RE = /\A#{Regexp.quote(KBD_CLOSE)}/

RUBY_OPEN = '((^'
RUBY_OPEN_RE = /\A#{Regexp.quote(RUBY_OPEN)}/
RUBY_CLOSE = '^))'
RUBY_CLOSE_RE = /\A#{Regexp.quote(RUBY_CLOSE)}/

VARIABLE_OPEN = '((@'
VARIABLE_OPEN_RE = /\A#{Regexp.quote(VARIABLE_OPEN)}/
VARIABLE_CLOSE = '@))'
VARIABLE_CLOSE_RE = /\A#{Regexp.quote(VARIABLE_CLOSE)}/

FOOTNOTE_OPEN = '((['
FOOTNOTE_OPEN_RE = /\A#{Regexp.quote(FOOTNOTE_OPEN)}/
FOOTNOTE_CLOSE = ']))'
FOOTNOTE_CLOSE_RE = /\A#{Regexp.quote(FOOTNOTE_CLOSE)}/

IMAGE_OPEN = '(($'
IMAGE_OPEN_RE = /\A#{Regexp.quote(IMAGE_OPEN)}/
IMAGE_CLOSE = '$))'
IMAGE_CLOSE_RE = /\A#{Regexp.quote(IMAGE_CLOSE)}/

LABEL_OPEN = '((>'
LABEL_OPEN_RE = /\A#{Regexp.quote(LABEL_OPEN)}/
LABEL_CLOSE = '<))'
LABEL_CLOSE_RE = /\A#{Regexp.quote(LABEL_CLOSE)}/

LABEL_HTML_OPEN = '((&gt;'
LABEL_HTML_OPEN_RE = /\A#{Regexp.quote(LABEL_HTML_OPEN)}/
LABEL_HTML_CLOSE = '&lt;))'
LABEL_HTML_CLOSE_RE = /\A#{Regexp.quote(LABEL_HTML_CLOSE)}/

REFERENCE_OPEN = '((<'
REFERENCE_OPEN_RE = /\A#{Regexp.quote(REFERENCE_OPEN)}/
REFERENCE_CLOSE = '>))'
REFERENCE_CLOSE_RE = /\A#{Regexp.quote(REFERENCE_CLOSE)}/

REFERENCE_HTML_OPEN = '((<'
REFERENCE_HTML_OPEN_RE = /\A#{Regexp.quote(REFERENCE_HTML_OPEN)}/
REFERENCE_HTML_CLOSE = '>))'
REFERENCE_HTML_CLOSE_RE = /\A#{Regexp.quote(REFERENCE_HTML_CLOSE)}/

VERB_OPEN = "(('"
VERB_OPEN_RE = /\A#{Regexp.quote(VERB_OPEN)}/
VERB_CLOSE = "'))"
VERB_CLOSE_RE = /\A#{Regexp.quote(VERB_CLOSE)}/

MANUEDO_OPEN = "((/"
MANUEDO_OPEN_RE = /\A#{Regexp.quote(MANUEDO_OPEN)}/
MANUEDO_CLOSE = "/))"
MANUEDO_CLOSE_RE = /\A#{Regexp.quote(MANUEDO_CLOSE)}/

# URL = "URL:"
# URL_RE = /\A#{Regexp.quote(URL)}/

#other_re_mode = Regexp::EXTENDED
other_re_mode = Regexp::MULTILINE
OTHER_RE = Regexp.new(
                      "\\A.+?(?=#{Regexp.quote(EM_OPEN)}|#{Regexp.quote(EM_CLOSE)}|#{Regexp.quote(ITALIC_OPEN)}|#{Regexp.quote(ITALIC_CLOSE)}|#{Regexp.quote(STRIKE_OPEN)}|#{Regexp.quote(STRIKE_CLOSE)}|#{Regexp.quote(CODE_OPEN)}|#{Regexp.quote(CODE_CLOSE)}|#{Regexp.quote(KBD_OPEN)}|#{Regexp.quote(KBD_CLOSE)}|#{Regexp.quote(FOOTNOTE_OPEN)}|#{Regexp.quote(FOOTNOTE_CLOSE)}|#{Regexp.quote(RUBY_OPEN)}|#{Regexp.quote(RUBY_CLOSE)}|#{Regexp.quote(VARIABLE_OPEN)}|#{Regexp.quote(VARIABLE_CLOSE)}|#{Regexp.quote(IMAGE_OPEN)}|#{Regexp.quote(IMAGE_CLOSE)}|#{Regexp.quote(LABEL_OPEN)}|#{Regexp.quote(LABEL_CLOSE)}|#{Regexp.quote(LABEL_HTML_OPEN)}|#{Regexp.quote(LABEL_HTML_CLOSE)}|#{Regexp.quote(REFERENCE_OPEN)}|#{Regexp.quote(REFERENCE_CLOSE)}|#{Regexp.quote(REFERENCE_HTML_OPEN)}|#{Regexp.quote(REFERENCE_HTML_CLOSE)}|#{Regexp.quote(MANUEDO_OPEN)}|#{Regexp.quote(MANUEDO_CLOSE)}|#{Regexp.quote(VERB_OPEN)}|#{Regexp.quote(VERB_CLOSE)})", other_re_mode)

def parse(src)
  @src = StringScanner.new(Array(src).join)
  @pre = ""
  @@yydebug = false
  @view_token_type = false
  do_parse
end
def initialize
  @index = {}
end
attr_reader :index

def next_token
  return [false, false] if @src.eos?
  if ret = @src.scan(EM_OPEN_RE)
    puts "i: EM_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:EM_OPEN, ret]
  elsif ret = @src.scan(EM_CLOSE_RE)
    puts "i: EM_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:EM_CLOSE, ret]
  elsif ret = @src.scan(ITALIC_OPEN_RE)
    puts "i: ITALIC_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:ITALIC_OPEN, ret]
  elsif ret = @src.scan(ITALIC_CLOSE_RE)
    puts "i: ITALIC_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:ITALIC_CLOSE, ret]
  elsif ret = @src.scan(STRIKE_OPEN_RE)
    @pre << ret
    puts "i: STRIKE_OPEN: #{ret}" if @view_token_type
    [:STRIKE_OPEN, ret]
  elsif ret = @src.scan(STRIKE_CLOSE_RE)
    @pre << ret
    puts "i: STRIKE_CLOSE: #{ret}" if @view_token_type
    [:STRIKE_CLOSE, ret]
  elsif ret = @src.scan(CODE_OPEN_RE)
    @pre << ret
    puts "i: CODE_OPEN: #{ret}" if @view_token_type
    [:CODE_OPEN, ret]
  elsif ret = @src.scan(CODE_CLOSE_RE)
    @pre << ret
    puts "i: CODE_CLOSE: #{ret}" if @view_token_type
    [:CODE_CLOSE, ret]
  elsif ret = @src.scan(KBD_OPEN_RE)
    @pre << ret
    puts "i: KBD_OPEN: #{ret}" if @view_token_type
    [:KBD_OPEN, ret]
  elsif ret = @src.scan(KBD_CLOSE_RE)
    @pre << ret
    puts "i: KBD_CLOSE: #{ret}" if @view_token_type
    [:KBD_CLOSE, ret]
  elsif ret = @src.scan(LABEL_OPEN_RE)
    @pre << ret
    puts "i: LABEL_OPEN: #{ret}" if @view_token_type
    [:LABEL_OPEN, ret]
  elsif ret = @src.scan(LABEL_CLOSE_RE)
    puts "i: LABEL_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:LABEL_CLOSE, ret]
  elsif ret = @src.scan(LABEL_HTML_OPEN_RE)
    @pre << ret
    puts "i: LABEL_OPEN: #{ret}" if @view_token_type
    [:LABEL_OPEN, ret]
  elsif ret = @src.scan(LABEL_HTML_CLOSE_RE)
    puts "i: LABEL_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:LABEL_CLOSE, ret]
  elsif ret = @src.scan(REFERENCE_OPEN_RE)
    puts "i: REFERENCE_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:REFERENCE_OPEN, ret]
  elsif ret = @src.scan(REFERENCE_CLOSE_RE)
    puts "i: REFERENCE_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:REFERENCE_CLOSE, ret]
  elsif ret = @src.scan(REFERENCE_HTML_OPEN_RE)
    puts "i: REFERENCE_HTML_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:REFERENCE_OPEN, ret]
  elsif ret = @src.scan(REFERENCE_HTML_CLOSE_RE)
    puts "i: REFERENCE_HTML_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:REFERENCE_CLOSE, ret]
  elsif ret = @src.scan(VERB_OPEN_RE)
    puts "i: VERB_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:VERB_OPEN, ret]
  elsif ret = @src.scan(VERB_CLOSE_RE)
    puts "i: VERB_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:VERB_CLOSE, ret]
  elsif ret = @src.scan(RUBY_OPEN_RE)
    puts "i: RUBY_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:RUBY_OPEN, ret]
  elsif ret = @src.scan(RUBY_CLOSE_RE)
    puts "i: RUBY_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:RUBY_CLOSE, ret]
  elsif ret = @src.scan(VARIABLE_OPEN_RE)
    puts "i: VARIABLE_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:VARIABLE_OPEN, ret]
  elsif ret = @src.scan(VARIABLE_CLOSE_RE)
    puts "i: VARIABLE_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:VARIABLE_CLOSE, ret]
  elsif ret = @src.scan(FOOTNOTE_OPEN_RE)
    puts "i: FOOTNOTE_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:FOOTNOTE_OPEN, ret]
  elsif ret = @src.scan(FOOTNOTE_CLOSE_RE)
    puts "i: FOOTNOTE_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:FOOTNOTE_CLOSE, ret]
  elsif ret = @src.scan(IMAGE_OPEN_RE)
    puts "i: IMAGE_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:IMAGE_OPEN, ret]
  elsif ret = @src.scan(IMAGE_CLOSE_RE)
    puts "i: IMAGE_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:IMAGE_CLOSE, ret]
  elsif ret = @src.scan(MANUEDO_OPEN_RE)
    puts "i: MANUEDO_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:MANUEDO_OPEN, ret]
  elsif ret = @src.scan(MANUEDO_CLOSE_RE)
    puts "i: MANUED_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:MANUEDO_CLOSE, ret]
  elsif ret = @src.scan(OTHER_RE)
    puts "i: OTHER_RE: #{ret}" if @view_token_type
    @pre << ret
    [:OTHER, ret]
  else
    puts "i: OTHER_RE(else): #{ret}" if @view_token_type
    ret = @src.rest
    @pre << ret
    @src.terminate
    [:OTHER, ret]
  end
end

...end rafinlineparser.ry/module_eval...
##### State transition tables begin ###

racc_action_table = [
    18,   125,    19,   162,    20,   163,    21,   164,    22,   165,
    28,   161,    29,    32,    30,    33,    23,   172,    25,   159,
    26,   160,    24,   128,    27,   nil,    32,    97,    98,    99,
   100,   101,   102,   103,   104,   105,   106,   113,   114,   111,
   112,   120,   121,   118,   119,   115,   116,   117,   171,   107,
   108,   109,   110,    96,    18,   nil,    19,   nil,    20,   nil,
    21,   nil,    22,   nil,    28,   nil,    29,   nil,    30,   nil,
    23,   nil,    25,   nil,    26,   nil,    24,   nil,    27,   nil,
    32,    71,    72,    73,    74,    75,    76,    77,    78,    79,
    80,    87,    88,    85,    86,    92,    93,    90,    91,    89,
   169,   nil,   nil,    81,    82,    83,    84,    70,    18,    18,
    19,    19,    20,    20,    21,    21,    22,    22,    28,    28,
    29,    29,    30,    30,    23,    23,    25,    25,    26,    26,
    24,    24,    27,    27,    32,    32,    18,    18,    19,    19,
    20,    20,    21,    21,    22,    22,    28,    28,    29,    29,
    30,    30,    23,    23,    25,    25,    26,    26,    24,    24,
    27,    27,    32,    32,    18,    18,    19,    19,    20,    20,
    21,    21,    22,    22,    28,    28,    29,    29,    30,    30,
    23,    23,    25,    25,    26,    26,    24,    24,    27,    27,
    32,    32,    43,    44,    45,    46,    47,    48,    49,    50,
    51,    52,    61,    62,    59,    60,    65,    66,    63,    64,
    53,    54,    55,    56,    67,   nil,    57,    58,    42,    71,
    72,    73,    74,    75,    76,    77,    78,    79,    80,    87,
    88,    85,    86,    92,    93,    90,    91,    89,   nil,   nil,
   nil,    81,    82,    83,    84,    70,    97,    98,    99,   100,
   101,   102,   103,   104,   105,   106,   113,   114,   111,   112,
   120,   121,   118,   119,   115,   116,   117,   174,   107,   108,
   109,   110,    96,    18,   nil,    19,   nil,    20,   nil,    21,
   nil,    22,   125,    28,   nil,    29,   nil,    30,   nil,    23,
   nil,    25,   nil,    26,   nil,    24,   nil,    27,   nil,    32,
    43,    44,    45,    46,    47,    48,    49,    50,    51,    52,
    61,    62,    59,    60,    65,    66,    63,    64,    53,    54,
    55,    56,    67,   167,    57,    58,    42,   132,   133,   134,
   135,   136,   137,   138,   139,   140,   141,   148,   149,   146,
   147,   156,   nil,   154,   155,   150,   151,   152,   153,   142,
   143,   144,   145,   131,   132,   133,   134,   135,   136,   137,
   138,   139,   140,   141,   148,   149,   146,   147,   156,   178,
   154,   155,   150,   151,   152,   153,   142,   143,   144,   145,
   131,   176,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   128 ]

racc_action_check = [
     0,    28,     0,    38,     0,    39,     0,    40,     0,    41,
     0,    37,     0,    17,     0,     1,     0,   124,     0,    33,
     0,    36,     0,    29,     0,   nil,     0,   122,   122,   122,
   122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
   122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
   122,   122,   122,   122,     2,   nil,     2,   nil,     2,   nil,
     2,   nil,     2,   nil,     2,   nil,     2,   nil,     2,   nil,
     2,   nil,     2,   nil,     2,   nil,     2,   nil,     2,   nil,
     2,    94,    94,    94,    94,    94,    94,    94,    94,    94,
    94,    94,    94,    94,    94,    94,    94,    94,    94,    94,
    94,   nil,   nil,    94,    94,    94,    94,    94,    18,    19,
    18,    19,    18,    19,    18,    19,    18,    19,    18,    19,
    18,    19,    18,    19,    18,    19,    18,    19,    18,    19,
    18,    19,    18,    19,    18,    19,    20,    21,    20,    21,
    20,    21,    20,    21,    20,    21,    20,    21,    20,    21,
    20,    21,    20,    21,    20,    21,    20,    21,    20,    21,
    20,    21,    20,    21,    22,    23,    22,    23,    22,    23,
    22,    23,    22,    23,    22,    23,    22,    23,    22,    23,
    22,    23,    22,    23,    22,    23,    22,    23,    22,    23,
    22,    23,    24,    24,    24,    24,    24,    24,    24,    24,
    24,    24,    24,    24,    24,    24,    24,    24,    24,    24,
    24,    24,    24,    24,    24,   nil,    24,    24,    24,    25,
    25,    25,    25,    25,    25,    25,    25,    25,    25,    25,
    25,    25,    25,    25,    25,    25,    25,    25,   nil,   nil,
   nil,    25,    25,    25,    25,    25,    26,    26,    26,    26,
    26,    26,    26,    26,    26,    26,    26,    26,    26,    26,
    26,    26,    26,    26,    26,    26,    26,   126,    26,    26,
    26,    26,    26,    27,   nil,    27,   nil,    27,   nil,    27,
   nil,    27,   126,    27,   nil,    27,   nil,    27,   nil,    27,
   nil,    27,   nil,    27,   nil,    27,   nil,    27,   nil,    27,
    68,    68,    68,    68,    68,    68,    68,    68,    68,    68,
    68,    68,    68,    68,    68,    68,    68,    68,    68,    68,
    68,    68,    68,    68,    68,    68,    68,    30,    30,    30,
    30,    30,    30,    30,    30,    30,    30,    30,    30,    30,
    30,    30,   nil,    30,    30,    30,    30,    30,    30,    30,
    30,    30,    30,    30,   158,   158,   158,   158,   158,   158,
   158,   158,   158,   158,   158,   158,   158,   158,   158,   158,
   158,   158,   158,   158,   158,   158,   158,   158,   158,   158,
   158,   129,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   129 ]

racc_action_pointer = [
    -2,    15,    52,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   -15,   106,   107,
   134,   135,   162,   163,   190,   217,   244,   271,   -27,    -5,
   325,   nil,   nil,    19,   nil,   nil,    18,     6,    -4,    -4,
    -4,   -10,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   298,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    79,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    25,   nil,   -10,   nil,   254,   nil,   nil,   366,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   352,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil ]

racc_action_default = [
    -1,  -151,    -2,    -4,    -5,    -6,    -7,    -8,    -9,   -10,
   -11,   -12,   -13,   -14,   -15,   -16,   -17,   -18,    -1,    -1,
    -1,    -1,    -1,    -1,  -151,  -151,  -151,    -1,  -151,  -151,
  -151,  -148,  -150,  -151,    -3,  -149,  -151,  -151,  -151,  -151,
  -151,  -151,   -25,   -26,   -27,   -28,   -29,   -30,   -31,   -32,
   -33,   -34,   -35,   -36,   -37,   -38,   -39,   -40,   -41,   -42,
   -43,   -44,   -45,   -46,   -47,   -48,   -49,   -50,  -151,   -52,
   -54,   -55,   -56,   -57,   -58,   -59,   -60,   -61,   -62,   -63,
   -64,   -65,   -66,   -67,   -68,   -69,   -70,   -71,   -72,   -73,
   -74,   -75,   -76,   -77,  -151,   -79,   -81,   -82,   -83,   -84,
   -85,   -86,   -87,   -88,   -89,   -90,   -91,   -92,   -93,   -94,
   -95,   -96,   -97,   -98,   -99,  -100,  -101,  -102,  -103,  -104,
  -105,  -106,  -151,  -108,  -151,  -111,  -151,  -113,  -115,  -151,
  -117,  -119,  -120,  -121,  -122,  -123,  -124,  -125,  -126,  -127,
  -128,  -129,  -130,  -131,  -132,  -133,  -134,  -135,  -136,  -137,
  -138,  -139,  -140,  -141,  -142,  -143,  -144,  -145,  -151,   179,
   -19,   -20,   -21,   -22,   -23,   -24,   -51,   -53,   -78,   -80,
  -107,  -109,  -110,  -112,  -114,  -116,  -118,  -146,  -147 ]

racc_goto_table = [
   157,   130,   127,   123,    95,    69,     1,   122,    94,   126,
    68,   129,    34,   158,    35,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    36,    37,    38,    39,    40,    41,
   nil,   nil,   nil,   124,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   166,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   168,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   170,
   173,   175,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   177 ]

racc_goto_check = [
    28,    26,    24,    22,    20,    18,     1,    23,    21,    25,
    19,    27,     3,    29,    30,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,     1,     1,     1,     1,     1,     1,
   nil,   nil,   nil,     1,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    18,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    20,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    22,
    24,    26,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    28 ]

racc_goto_pointer = [
   nil,     6,   nil,    10,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   -19,   -14,
   -21,   -17,   -23,   -19,   -26,   -19,   -28,   -18,   -30,   -17,
    -3 ]

racc_goto_default = [
   nil,   nil,     2,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,    14,    15,    16,    17,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    31 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 30, :_reduce_none,
  1, 30, :_reduce_none,
  2, 31, :_reduce_3,
  1, 31, :_reduce_4,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  3, 33, :_reduce_19,
  3, 34, :_reduce_20,
  3, 35, :_reduce_21,
  3, 36, :_reduce_22,
  3, 37, :_reduce_23,
  3, 42, :_reduce_24,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  2, 48, :_reduce_51,
  1, 48, :_reduce_52,
  3, 43, :_reduce_53,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  2, 50, :_reduce_78,
  1, 50, :_reduce_79,
  3, 40, :_reduce_80,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  2, 52, :_reduce_107,
  1, 52, :_reduce_108,
  3, 41, :_reduce_109,
  3, 45, :_reduce_110,
  1, 53, :_reduce_111,
  2, 54, :_reduce_112,
  1, 54, :_reduce_113,
  3, 38, :_reduce_114,
  1, 55, :_reduce_115,
  2, 56, :_reduce_116,
  1, 56, :_reduce_117,
  3, 39, :_reduce_118,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 57, :_reduce_none,
  1, 58, :_reduce_none,
  2, 58, :_reduce_146,
  3, 44, :_reduce_147,
  1, 46, :_reduce_148,
  2, 46, :_reduce_149,
  1, 59, :_reduce_150 ]

racc_reduce_n = 151

racc_shift_n = 179

racc_token_table = {
  false => 0,
  :error => 1,
  :EM_OPEN => 2,
  :EM_CLOSE => 3,
  :ITALIC_OPEN => 4,
  :ITALIC_CLOSE => 5,
  :STRIKE_OPEN => 6,
  :STRIKE_CLOSE => 7,
  :CODE_OPEN => 8,
  :CODE_CLOSE => 9,
  :KBD_OPEN => 10,
  :KBD_CLOSE => 11,
  :LABEL_OPEN => 12,
  :LABEL_CLOSE => 13,
  :REFERENCE_OPEN => 14,
  :REFERENCE_CLOSE => 15,
  :VERB_OPEN => 16,
  :VERB_CLOSE => 17,
  :FOOTNOTE_OPEN => 18,
  :FOOTNOTE_CLOSE => 19,
  :RUBY_OPEN => 20,
  :RUBY_CLOSE => 21,
  :VARIABLE_OPEN => 22,
  :VARIABLE_CLOSE => 23,
  :IMAGE_OPEN => 24,
  :IMAGE_CLOSE => 25,
  :MANUEDO_OPEN => 26,
  :MANUEDO_CLOSE => 27,
  :OTHER => 28 }

racc_nt_base = 29

racc_use_result_var = false

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "EM_OPEN",
  "EM_CLOSE",
  "ITALIC_OPEN",
  "ITALIC_CLOSE",
  "STRIKE_OPEN",
  "STRIKE_CLOSE",
  "CODE_OPEN",
  "CODE_CLOSE",
  "KBD_OPEN",
  "KBD_CLOSE",
  "LABEL_OPEN",
  "LABEL_CLOSE",
  "REFERENCE_OPEN",
  "REFERENCE_CLOSE",
  "VERB_OPEN",
  "VERB_CLOSE",
  "FOOTNOTE_OPEN",
  "FOOTNOTE_CLOSE",
  "RUBY_OPEN",
  "RUBY_CLOSE",
  "VARIABLE_OPEN",
  "VARIABLE_CLOSE",
  "IMAGE_OPEN",
  "IMAGE_CLOSE",
  "MANUEDO_OPEN",
  "MANUEDO_CLOSE",
  "OTHER",
  "$start",
  "content",
  "elements",
  "element",
  "emphasis",
  "italic",
  "strike",
  "code",
  "kbd",
  "label",
  "reference",
  "ruby",
  "variable",
  "footnote",
  "image",
  "verb",
  "manuedo",
  "normal_strings",
  "image_string",
  "image_strings",
  "ruby_string",
  "ruby_strings",
  "variable_string",
  "variable_strings",
  "label_string",
  "label_strings",
  "reference_string",
  "reference_strings",
  "verb_string",
  "verb_strings",
  "normal_string" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

module_eval(<<'.,.,', 'rafinlineparser.ry', 9)
  def _reduce_3(val, _values)
     val[0].push(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 10)
  def _reduce_4(val, _values)
     val 
  end
.,.,

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

module_eval(<<'.,.,', 'rafinlineparser.ry', 28)
  def _reduce_19(val, _values)
     Emphasis.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 29)
  def _reduce_20(val, _values)
     Italic.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 30)
  def _reduce_21(val, _values)
     Strike.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 31)
  def _reduce_22(val, _values)
     Code.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 32)
  def _reduce_23(val, _values)
     Kbd.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 34)
  def _reduce_24(val, _values)
                   @index[:footnote] ||= []
               @index[:footnote] << {:content => val[1] }
               Footnote.new([val[1], @index[:footnote].size])
               
  end
.,.,

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

# reduce 28 omitted

# reduce 29 omitted

# reduce 30 omitted

# reduce 31 omitted

# reduce 32 omitted

# reduce 33 omitted

# reduce 34 omitted

# reduce 35 omitted

# reduce 36 omitted

# reduce 37 omitted

# reduce 38 omitted

# reduce 39 omitted

# reduce 40 omitted

# reduce 41 omitted

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

module_eval(<<'.,.,', 'rafinlineparser.ry', 69)
  def _reduce_51(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 70)
  def _reduce_52(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 71)
  def _reduce_53(val, _values)
     Image.new(val[1]) 
  end
.,.,

# reduce 54 omitted

# reduce 55 omitted

# reduce 56 omitted

# reduce 57 omitted

# reduce 58 omitted

# reduce 59 omitted

# reduce 60 omitted

# reduce 61 omitted

# reduce 62 omitted

# reduce 63 omitted

# reduce 64 omitted

# reduce 65 omitted

# reduce 66 omitted

# reduce 67 omitted

# reduce 68 omitted

# reduce 69 omitted

# reduce 70 omitted

# reduce 71 omitted

# reduce 72 omitted

# reduce 73 omitted

# reduce 74 omitted

# reduce 75 omitted

# reduce 76 omitted

# reduce 77 omitted

module_eval(<<'.,.,', 'rafinlineparser.ry', 100)
  def _reduce_78(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 101)
  def _reduce_79(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 104)
  def _reduce_80(val, _values)
                      base, text = val[1].split("|",2)
                  text ||= base
# 		  parser = InlineParser.new
# 		  text = parser.parse(text).map do |n| n.apply end
                  Ruby.new([base, text])
                
  end
.,.,

# reduce 81 omitted

# reduce 82 omitted

# reduce 83 omitted

# reduce 84 omitted

# reduce 85 omitted

# reduce 86 omitted

# reduce 87 omitted

# reduce 88 omitted

# reduce 89 omitted

# reduce 90 omitted

# reduce 91 omitted

# reduce 92 omitted

# reduce 93 omitted

# reduce 94 omitted

# reduce 95 omitted

# reduce 96 omitted

# reduce 97 omitted

# reduce 98 omitted

# reduce 99 omitted

# reduce 100 omitted

# reduce 101 omitted

# reduce 102 omitted

# reduce 103 omitted

# reduce 104 omitted

# reduce 105 omitted

# reduce 106 omitted

module_eval(<<'.,.,', 'rafinlineparser.ry', 140)
  def _reduce_107(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 141)
  def _reduce_108(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 144)
  def _reduce_109(val, _values)
                      base, text = val[1].split("=",2)
		  unless text.nil?
  		    @variables ||= {}
		    @variables[base] = text
		    Empty.new("")
		  else
		    value = @variables[base]
		    unless value.nil?
		      parser = InlineParser.new
 		      value = parser.parse(value).map do |n| n.apply end
		    else	# 変数が未定義
		      value = base
		    end
		    Variable.new(value)
		  end
                
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 162)
  def _reduce_110(val, _values)
     Manuedo.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 167)
  def _reduce_111(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 170)
  def _reduce_112(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 171)
  def _reduce_113(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 174)
  def _reduce_114(val, _values)
              label, title = val[1].split("|",2)
          title ||= label
          @index[:label] ||= []
          @index[:label] << {:title => title }
          Label.new([label.to_code, title, @index[:label].size])
          
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 183)
  def _reduce_115(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 185)
  def _reduce_116(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 186)
  def _reduce_117(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 189)
  def _reduce_118(val, _values)
                      title, uri = val[1].split("|",2)
                  uri ||= title
                  uri = "#" + uri.to_code if uri.gsub(/^\s*https*:\/\//,"") == uri
                  Reference.new([title, uri])
                
  end
.,.,

# reduce 119 omitted

# reduce 120 omitted

# reduce 121 omitted

# reduce 122 omitted

# reduce 123 omitted

# reduce 124 omitted

# reduce 125 omitted

# reduce 126 omitted

# reduce 127 omitted

# reduce 128 omitted

# reduce 129 omitted

# reduce 130 omitted

# reduce 131 omitted

# reduce 132 omitted

# reduce 133 omitted

# reduce 134 omitted

# reduce 135 omitted

# reduce 136 omitted

# reduce 137 omitted

# reduce 138 omitted

# reduce 139 omitted

# reduce 140 omitted

# reduce 141 omitted

# reduce 142 omitted

# reduce 143 omitted

# reduce 144 omitted

# reduce 145 omitted

module_eval(<<'.,.,', 'rafinlineparser.ry', 224)
  def _reduce_146(val, _values)
     val 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 226)
  def _reduce_147(val, _values)
      Verb.new(val[1])
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 230)
  def _reduce_148(val, _values)
     Plain.new(val[0]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 231)
  def _reduce_149(val, _values)
      Plain.new([val[0].contents, val[1]]) 
  end
.,.,

module_eval(<<'.,.,', 'rafinlineparser.ry', 233)
  def _reduce_150(val, _values)
     val[0] 
  end
.,.,

def _reduce_none(val, _values)
  val[0]
end

end   # class InlineParser

  if __FILE__ == $0
    raf = InlineParser.new
    src = $stdin.readline
    nodes = raf.parse(src)
    puts "----- output -----"
    nodes.each do |n|
      puts n.apply
    end
  end
end # end of module Raf
