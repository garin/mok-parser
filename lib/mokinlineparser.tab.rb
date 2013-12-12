#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.10
# from Racc grammer file "".
#

require 'racc/parser.rb'

require "parserutility"
require 'strscan'
require 'mimemagic'
require 'erb'
require 'mokelement'

module Mok
class InlineParser < Racc::Parser

module_eval(<<'...end mokinlineparser.ry/module_eval...', 'mokinlineparser.ry', 272)
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

MEDIA_OPEN = '(($'
MEDIA_OPEN_RE = /\A#{Regexp.quote(MEDIA_OPEN)}/
MEDIA_CLOSE = '$))'
MEDIA_CLOSE_RE = /\A#{Regexp.quote(MEDIA_CLOSE)}/

LABEL_OPEN = '((>'
LABEL_OPEN_RE = /\A#{Regexp.quote(LABEL_OPEN)}/
LABEL_CLOSE = '<))'
LABEL_CLOSE_RE = /\A#{Regexp.quote(LABEL_CLOSE)}/

LABEL_HTML_OPEN = '((&gt;'
LABEL_HTML_OPEN_RE = /\A#{Regexp.quote(LABEL_HTML_OPEN)}/
LABEL_HTML_CLOSE = '&lt;))'
LABEL_HTML_CLOSE_RE = /\A#{Regexp.quote(LABEL_HTML_CLOSE)}/

LABEL_LINK_OPEN = '((='
LABEL_LINK_OPEN_RE = /\A#{Regexp.quote(LABEL_LINK_OPEN)}/
LABEL_LINK_CLOSE = '=))'
LABEL_LINK_CLOSE_RE = /\A#{Regexp.quote(LABEL_LINK_CLOSE)}/

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
                      "\\A.+?(?=#{Regexp.quote(EM_OPEN)}|#{Regexp.quote(EM_CLOSE)}|#{Regexp.quote(ITALIC_OPEN)}|#{Regexp.quote(ITALIC_CLOSE)}|#{Regexp.quote(STRIKE_OPEN)}|#{Regexp.quote(STRIKE_CLOSE)}|#{Regexp.quote(CODE_OPEN)}|#{Regexp.quote(CODE_CLOSE)}|#{Regexp.quote(KBD_OPEN)}|#{Regexp.quote(KBD_CLOSE)}|#{Regexp.quote(FOOTNOTE_OPEN)}|#{Regexp.quote(FOOTNOTE_CLOSE)}|#{Regexp.quote(RUBY_OPEN)}|#{Regexp.quote(RUBY_CLOSE)}|#{Regexp.quote(VARIABLE_OPEN)}|#{Regexp.quote(VARIABLE_CLOSE)}|#{Regexp.quote(MEDIA_OPEN)}|#{Regexp.quote(MEDIA_CLOSE)}|#{Regexp.quote(LABEL_OPEN)}|#{Regexp.quote(LABEL_CLOSE)}|#{Regexp.quote(LABEL_LINK_OPEN)}|#{Regexp.quote(LABEL_LINK_CLOSE)}|#{Regexp.quote(LABEL_HTML_OPEN)}|#{Regexp.quote(LABEL_HTML_CLOSE)}|#{Regexp.quote(REFERENCE_OPEN)}|#{Regexp.quote(REFERENCE_CLOSE)}|#{Regexp.quote(REFERENCE_HTML_OPEN)}|#{Regexp.quote(REFERENCE_HTML_CLOSE)}|#{Regexp.quote(MANUEDO_OPEN)}|#{Regexp.quote(MANUEDO_CLOSE)}|#{Regexp.quote(VERB_OPEN)}|#{Regexp.quote(VERB_CLOSE)})", other_re_mode)

def parse(src)
  @src = StringScanner.new(Array(src).join)
  @pre = ""
  @@yydebug = false
  @view_token_type = false
  do_parse
end
def initialize(options = {})
  @options = options
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
  elsif ret = @src.scan(LABEL_LINK_OPEN_RE)
    @pre << ret
    puts "i: LABEL_LINK_OPEN: #{ret}" if @view_token_type
    [:LABEL_LINK_OPEN, ret]
  elsif ret = @src.scan(LABEL_LINK_CLOSE_RE)
    puts "i: LABEL_LINK_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:LABEL_LINK_CLOSE, ret]
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
  elsif ret = @src.scan(MEDIA_OPEN_RE)
    puts "i: MEDIA_OPEN: #{ret}" if @view_token_type
    @pre << ret
    [:MEDIA_OPEN, ret]
  elsif ret = @src.scan(MEDIA_CLOSE_RE)
    puts "i: MEDIA_CLOSE: #{ret}" if @view_token_type
    @pre << ret
    [:MEDIA_CLOSE, ret]
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

...end mokinlineparser.ry/module_eval...
##### State transition tables begin ###

racc_action_table = [
    19,   133,    20,   175,    21,   176,    22,   177,    23,   178,
    29,   174,    30,    34,    31,    35,    32,   185,    24,   136,
    26,   173,    27,   172,    25,   139,    28,   nil,    34,   103,
   104,   105,   106,   107,   108,   109,   110,   111,   112,   119,
   120,   121,   122,   117,   118,   128,   129,   126,   127,   123,
   124,   125,   184,   113,   114,   115,   116,   102,    19,   nil,
    20,   nil,    21,   nil,    22,   nil,    23,   nil,    29,   nil,
    30,   nil,    31,   nil,    32,   nil,    24,   nil,    26,   nil,
    27,   nil,    25,   nil,    28,   nil,    34,    75,    76,    77,
    78,    79,    80,    81,    82,    83,    84,    91,    92,    93,
    94,    89,    90,    98,    99,    96,    97,    95,   182,   nil,
   nil,    85,    86,    87,    88,    74,    19,    19,    20,    20,
    21,    21,    22,    22,    23,    23,    29,    29,    30,    30,
    31,    31,    32,    32,    24,    24,    26,    26,    27,    27,
    25,    25,    28,    28,    34,    34,    19,    19,    20,    20,
    21,    21,    22,    22,    23,    23,    29,    29,    30,    30,
    31,    31,    32,    32,    24,    24,    26,    26,    27,    27,
    25,    25,    28,    28,    34,    34,    19,    19,    20,    20,
    21,    21,    22,    22,    23,    23,    29,    29,    30,    30,
    31,    31,    32,    32,    24,    24,    26,    26,    27,    27,
    25,    25,    28,    28,    34,    34,    45,    46,    47,    48,
    49,    50,    51,    52,    53,    54,    63,    64,    65,    66,
    61,    62,    69,    70,    67,    68,    55,    56,    57,    58,
    71,   nil,    59,    60,    44,    75,    76,    77,    78,    79,
    80,    81,    82,    83,    84,    91,    92,    93,    94,    89,
    90,    98,    99,    96,    97,    95,   nil,   nil,   nil,    85,
    86,    87,    88,    74,   103,   104,   105,   106,   107,   108,
   109,   110,   111,   112,   119,   120,   121,   122,   117,   118,
   128,   129,   126,   127,   123,   124,   125,   187,   113,   114,
   115,   116,   102,    19,   nil,    20,   nil,    21,   nil,    22,
   nil,    23,   nil,    29,   133,    30,   nil,    31,   nil,    32,
   nil,    24,   nil,    26,   nil,    27,   nil,    25,   nil,    28,
   nil,    34,    45,    46,    47,    48,    49,    50,    51,    52,
    53,    54,    63,    64,    65,    66,    61,    62,    69,    70,
    67,    68,    55,    56,    57,    58,    71,   180,    59,    60,
    44,   143,   144,   145,   146,   147,   148,   149,   150,   151,
   152,   159,   160,   161,   162,   157,   158,   169,   nil,   167,
   168,   163,   164,   165,   166,   153,   154,   155,   156,   142,
   143,   144,   145,   146,   147,   148,   149,   150,   151,   152,
   159,   160,   161,   162,   157,   158,   169,   193,   167,   168,
   163,   164,   165,   166,   153,   154,   155,   156,   142,   189,
   191,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   139,   136 ]

racc_action_check = [
     0,    29,     0,    40,     0,    41,     0,    42,     0,    43,
     0,    39,     0,    18,     0,     1,     0,   132,     0,    30,
     0,    38,     0,    35,     0,    31,     0,   nil,     0,   130,
   130,   130,   130,   130,   130,   130,   130,   130,   130,   130,
   130,   130,   130,   130,   130,   130,   130,   130,   130,   130,
   130,   130,   130,   130,   130,   130,   130,   130,     2,   nil,
     2,   nil,     2,   nil,     2,   nil,     2,   nil,     2,   nil,
     2,   nil,     2,   nil,     2,   nil,     2,   nil,     2,   nil,
     2,   nil,     2,   nil,     2,   nil,     2,   100,   100,   100,
   100,   100,   100,   100,   100,   100,   100,   100,   100,   100,
   100,   100,   100,   100,   100,   100,   100,   100,   100,   nil,
   nil,   100,   100,   100,   100,   100,    19,    20,    19,    20,
    19,    20,    19,    20,    19,    20,    19,    20,    19,    20,
    19,    20,    19,    20,    19,    20,    19,    20,    19,    20,
    19,    20,    19,    20,    19,    20,    21,    22,    21,    22,
    21,    22,    21,    22,    21,    22,    21,    22,    21,    22,
    21,    22,    21,    22,    21,    22,    21,    22,    21,    22,
    21,    22,    21,    22,    21,    22,    23,    24,    23,    24,
    23,    24,    23,    24,    23,    24,    23,    24,    23,    24,
    23,    24,    23,    24,    23,    24,    23,    24,    23,    24,
    23,    24,    23,    24,    23,    24,    25,    25,    25,    25,
    25,    25,    25,    25,    25,    25,    25,    25,    25,    25,
    25,    25,    25,    25,    25,    25,    25,    25,    25,    25,
    25,   nil,    25,    25,    25,    26,    26,    26,    26,    26,
    26,    26,    26,    26,    26,    26,    26,    26,    26,    26,
    26,    26,    26,    26,    26,    26,   nil,   nil,   nil,    26,
    26,    26,    26,    26,    27,    27,    27,    27,    27,    27,
    27,    27,    27,    27,    27,    27,    27,    27,    27,    27,
    27,    27,    27,    27,    27,    27,    27,   134,    27,    27,
    27,    27,    27,    28,   nil,    28,   nil,    28,   nil,    28,
   nil,    28,   nil,    28,   134,    28,   nil,    28,   nil,    28,
   nil,    28,   nil,    28,   nil,    28,   nil,    28,   nil,    28,
   nil,    28,    72,    72,    72,    72,    72,    72,    72,    72,
    72,    72,    72,    72,    72,    72,    72,    72,    72,    72,
    72,    72,    72,    72,    72,    72,    72,    72,    72,    72,
    72,    32,    32,    32,    32,    32,    32,    32,    32,    32,
    32,    32,    32,    32,    32,    32,    32,    32,   nil,    32,
    32,    32,    32,    32,    32,    32,    32,    32,    32,    32,
   171,   171,   171,   171,   171,   171,   171,   171,   171,   171,
   171,   171,   171,   171,   171,   171,   171,   171,   171,   171,
   171,   171,   171,   171,   171,   171,   171,   171,   171,   137,
   140,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   140,   137 ]

racc_action_pointer = [
    -2,    15,    56,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   -17,   114,
   115,   144,   145,   174,   175,   204,   233,   262,   291,   -29,
   -11,    -5,   349,   nil,   nil,    23,   nil,   nil,    18,     6,
    -4,    -4,    -4,   -12,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   320,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    85,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    27,   nil,   -12,   nil,   274,   nil,   nil,   394,   nil,   nil,
   393,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   378,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil ]

racc_action_default = [
    -1,  -164,    -2,    -4,    -5,    -6,    -7,    -8,    -9,   -10,
   -11,   -12,   -13,   -14,   -15,   -16,   -17,   -18,   -19,    -1,
    -1,    -1,    -1,    -1,    -1,  -164,  -164,  -164,    -1,  -164,
  -164,  -164,  -164,  -161,  -163,  -164,    -3,  -162,  -164,  -164,
  -164,  -164,  -164,  -164,   -26,   -27,   -28,   -29,   -30,   -31,
   -32,   -33,   -34,   -35,   -36,   -37,   -38,   -39,   -40,   -41,
   -42,   -43,   -44,   -45,   -46,   -47,   -48,   -49,   -50,   -51,
   -52,   -53,  -164,   -55,   -57,   -58,   -59,   -60,   -61,   -62,
   -63,   -64,   -65,   -66,   -67,   -68,   -69,   -70,   -71,   -72,
   -73,   -74,   -75,   -76,   -77,   -78,   -79,   -80,   -81,   -82,
  -164,   -84,   -86,   -87,   -88,   -89,   -90,   -91,   -92,   -93,
   -94,   -95,   -96,   -97,   -98,   -99,  -100,  -101,  -102,  -103,
  -104,  -105,  -106,  -107,  -108,  -109,  -110,  -111,  -112,  -113,
  -164,  -115,  -164,  -118,  -164,  -120,  -122,  -164,  -124,  -126,
  -164,  -128,  -130,  -131,  -132,  -133,  -134,  -135,  -136,  -137,
  -138,  -139,  -140,  -141,  -142,  -143,  -144,  -145,  -146,  -147,
  -148,  -149,  -150,  -151,  -152,  -153,  -154,  -155,  -156,  -157,
  -158,  -164,   194,   -20,   -21,   -22,   -23,   -24,   -25,   -54,
   -56,   -83,   -85,  -114,  -116,  -117,  -119,  -121,  -123,  -125,
  -127,  -129,  -159,  -160 ]

racc_goto_table = [
   170,   141,   138,   135,   131,   101,    73,     1,   130,   134,
   100,   137,    72,   140,    36,   171,    37,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    38,    39,    40,    41,
    42,    43,   nil,   nil,   nil,   132,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   179,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   181,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   183,   186,   188,
   190,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   192 ]

racc_goto_check = [
    31,    29,    27,    25,    23,    21,    19,     1,    24,    26,
    22,    28,    20,    30,     3,    32,    33,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     1,     1,     1,     1,
     1,     1,   nil,   nil,   nil,     1,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    19,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    21,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    23,    25,    27,
    29,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    31 ]

racc_goto_pointer = [
   nil,     7,   nil,    12,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   -19,
   -13,   -21,   -16,   -23,   -19,   -26,   -20,   -28,   -19,   -30,
   -18,   -32,   -17,    -2 ]

racc_goto_default = [
   nil,   nil,     2,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,    14,    15,    16,    17,    18,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    33 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 32, :_reduce_none,
  1, 32, :_reduce_none,
  2, 33, :_reduce_3,
  1, 33, :_reduce_4,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  1, 34, :_reduce_none,
  3, 35, :_reduce_20,
  3, 36, :_reduce_21,
  3, 37, :_reduce_22,
  3, 38, :_reduce_23,
  3, 39, :_reduce_24,
  3, 45, :_reduce_25,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 50, :_reduce_none,
  2, 51, :_reduce_54,
  1, 51, :_reduce_55,
  3, 46, :_reduce_56,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  2, 53, :_reduce_83,
  1, 53, :_reduce_84,
  3, 43, :_reduce_85,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 54, :_reduce_none,
  2, 55, :_reduce_114,
  1, 55, :_reduce_115,
  3, 44, :_reduce_116,
  3, 48, :_reduce_117,
  1, 56, :_reduce_118,
  2, 57, :_reduce_119,
  1, 57, :_reduce_120,
  3, 40, :_reduce_121,
  1, 58, :_reduce_122,
  2, 59, :_reduce_123,
  1, 59, :_reduce_124,
  3, 41, :_reduce_125,
  1, 60, :_reduce_126,
  2, 61, :_reduce_127,
  1, 61, :_reduce_128,
  3, 42, :_reduce_129,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 63, :_reduce_none,
  2, 63, :_reduce_159,
  3, 47, :_reduce_160,
  1, 49, :_reduce_161,
  2, 49, :_reduce_162,
  1, 64, :_reduce_163 ]

racc_reduce_n = 164

racc_shift_n = 194

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
  :LABEL_LINK_OPEN => 14,
  :LABEL_LINK_CLOSE => 15,
  :REFERENCE_OPEN => 16,
  :REFERENCE_CLOSE => 17,
  :VERB_OPEN => 18,
  :VERB_CLOSE => 19,
  :FOOTNOTE_OPEN => 20,
  :FOOTNOTE_CLOSE => 21,
  :RUBY_OPEN => 22,
  :RUBY_CLOSE => 23,
  :VARIABLE_OPEN => 24,
  :VARIABLE_CLOSE => 25,
  :MEDIA_OPEN => 26,
  :MEDIA_CLOSE => 27,
  :MANUEDO_OPEN => 28,
  :MANUEDO_CLOSE => 29,
  :OTHER => 30 }

racc_nt_base = 31

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
  "LABEL_LINK_OPEN",
  "LABEL_LINK_CLOSE",
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
  "MEDIA_OPEN",
  "MEDIA_CLOSE",
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
  "label_link",
  "reference",
  "ruby",
  "variable",
  "footnote",
  "media",
  "verb",
  "manuedo",
  "normal_strings",
  "media_string",
  "media_strings",
  "ruby_string",
  "ruby_strings",
  "variable_string",
  "variable_strings",
  "label_string",
  "label_strings",
  "label_link_string",
  "label_link_strings",
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

module_eval(<<'.,.,', 'mokinlineparser.ry', 9)
  def _reduce_3(val, _values)
     val[0].push(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 10)
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

# reduce 19 omitted

module_eval(<<'.,.,', 'mokinlineparser.ry', 29)
  def _reduce_20(val, _values)
     Emphasis.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 30)
  def _reduce_21(val, _values)
     Italic.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 31)
  def _reduce_22(val, _values)
     Strike.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 32)
  def _reduce_23(val, _values)
     Code.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 33)
  def _reduce_24(val, _values)
     Kbd.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 35)
  def _reduce_25(val, _values)
                   @index[:footnote] ||= []
               @index[:footnote] << {:content => val[1] }
               Footnote.new([val[1], @index[:footnote].size])
               
  end
.,.,

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

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

module_eval(<<'.,.,', 'mokinlineparser.ry', 72)
  def _reduce_54(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 74)
  def _reduce_55(val, _values)
    		     unless @options[:media_directory].nil? || @options[:media_directory].empty?
  		       val[0] = File.join(@options[:media_directory],val[0]) unless val[0] =~ /^.*:\/\/.*/
		     end
		     val[0]
		
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 80)
  def _reduce_56(val, _values)
    	     mime = MimeMagic.by_extension(val[1].split(".").last)
	     unless mime.nil?
 	       mediatype, subtype = mime.mediatype, mime.subtype
	     else
	       mediatype, subtype = "",""
	     end
             Media.new([val[1],mediatype,subtype])
             
  end
.,.,

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

# reduce 78 omitted

# reduce 79 omitted

# reduce 80 omitted

# reduce 81 omitted

# reduce 82 omitted

module_eval(<<'.,.,', 'mokinlineparser.ry', 118)
  def _reduce_83(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 119)
  def _reduce_84(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 122)
  def _reduce_85(val, _values)
                      base, text = val[1].split("|",2)
                  text ||= base
# 		  parser = InlineParser.new
# 		  text = parser.parse(text).map do |n| n.apply end
                  Ruby.new([base, text])
                
  end
.,.,

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

# reduce 107 omitted

# reduce 108 omitted

# reduce 109 omitted

# reduce 110 omitted

# reduce 111 omitted

# reduce 112 omitted

# reduce 113 omitted

module_eval(<<'.,.,', 'mokinlineparser.ry', 160)
  def _reduce_114(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 161)
  def _reduce_115(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 164)
  def _reduce_116(val, _values)
                      base, text = val[1].split("=",2)
		  @variables ||= {}
		  @variables[base] = text unless text.nil?
		  value = @variables[base]
		  unless value.nil?
		    parser = InlineParser.new
 		    value = parser.parse(value).map do |n| n.apply end
		  else	# 変数が未定義
		    value = base
		  end
		  Variable.new(value)
                
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 178)
  def _reduce_117(val, _values)
     Manuedo.new(val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 183)
  def _reduce_118(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 186)
  def _reduce_119(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 187)
  def _reduce_120(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 190)
  def _reduce_121(val, _values)
              label, title = val[1].split("|",2)
          title ||= label
          @index[:label] ||= []
          @index[:label] << {:title => title }
          Label.new([label.to_code, title, @index[:label].size])
          
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 199)
  def _reduce_122(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 201)
  def _reduce_123(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 202)
  def _reduce_124(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 205)
  def _reduce_125(val, _values)
                      label, title = val[1].split("|",2)
                  title ||= label
                  LabelLink.new([label.to_code, title])
                
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 212)
  def _reduce_126(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 214)
  def _reduce_127(val, _values)
     val.join 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 215)
  def _reduce_128(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 218)
  def _reduce_129(val, _values)
                      title, uri = val[1].split("|",2)
                  uri ||= title
                  if uri.strip[-2,2] == ".%" and ! @options[:reference_extension].nil?
		    uri.slice!(-2,2)
		    uri = "#{uri}#{@options[:reference_extension]}"
		  end
                  Reference.new([title, uri])
                
  end
.,.,

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

# reduce 146 omitted

# reduce 147 omitted

# reduce 148 omitted

# reduce 149 omitted

# reduce 150 omitted

# reduce 151 omitted

# reduce 152 omitted

# reduce 153 omitted

# reduce 154 omitted

# reduce 155 omitted

# reduce 156 omitted

# reduce 157 omitted

# reduce 158 omitted

module_eval(<<'.,.,', 'mokinlineparser.ry', 258)
  def _reduce_159(val, _values)
     val 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 260)
  def _reduce_160(val, _values)
      Verb.new(val[1])
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 264)
  def _reduce_161(val, _values)
     Plain.new(val[0]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 265)
  def _reduce_162(val, _values)
      Plain.new([val[0].contents, val[1]]) 
  end
.,.,

module_eval(<<'.,.,', 'mokinlineparser.ry', 267)
  def _reduce_163(val, _values)
     val[0] 
  end
.,.,

def _reduce_none(val, _values)
  val[0]
end

end   # class InlineParser

  if __FILE__ == $0
    mok = InlineParser.new
    src = $stdin.readline
    nodes = mok.parse(src)
    puts "----- output -----"
    nodes.each do |n|
      puts n.apply
    end
  end
end # end of module Mok
