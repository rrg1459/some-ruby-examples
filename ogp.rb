# require 'faraday'

# require 'ogp'
# https://github.com/jhass/open_graph_reader
require 'open_graph_reader'
require 'byebug'

# byebug

# object = OpenGraphReader.fetch("http://examples.opengraphprotocol.us/article.html")

ogp = OpenGraphReader.fetch("https://famera.co")

byebug

puts ogp

# response = Faraday.get('http://ogp.me')
# response = Faraday.get('http://ogp.me?title=hola')

# open_graph = OGP::OpenGraph.new(response.body)
# open_graph.title # => "Open Graph protocol"
# open_graph.type # => "website"
# open_graph.image.url # => "http://ogp.me/logo.png"
# open_graph.url # => "http://ogp.me/"
# 
# All open graph tags are additionally stored in a `data` hash so that custom
# open graph tags can still be accessed.
# open_graph.data["title"] # => "Open Graph protocol"