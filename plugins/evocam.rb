##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Evo-Cam"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-15
]
version "0.1"
description "EvoCam is the ultimate webcam software for Mac OS X"
website "http://www.evological.com/evocam.html"

# Google results as at 2010-07-15 #
# 35 for intitle:"EvoCam" inurl:"webcam.html" -intitle

# Dorks #
dorks [
'intitle:"EvoCam" inurl:"webcam.html" -intitle'
]

matches [

{ :regexp => /<title>EvoCam( \d)*<\/title>/ },

{ :regexp => /<TITLE>EvoCam( Java| JavaScript)? Example Page<\/TITLE>/ },

{ :text => 'Powered by <A HREF="http://www.evological.com/evocam.html">EvoCam</A>' },

{ :regexp => /<applet archive="evocam.jar" code="com.evological.evocam.class"/ },

{ :regexp => /<param name="archive" value="evocam.jar">/i }

]

end

