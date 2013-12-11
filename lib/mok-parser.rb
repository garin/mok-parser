# -*- coding: utf-8 -*-
# Copyright (C) garin <garin54@gmail.com> 2011-2013
# See the included file COPYING for details.
require 'bundler/setup'
require "mokblockparser.tab"

module Mok
  VERSION = File.readlines(File.join(File.dirname(__FILE__),"../VERSION"))[0].strip
  RELEASE = File.readlines(File.join(File.dirname(__FILE__),"../RELEASE"))[0].strip
end
