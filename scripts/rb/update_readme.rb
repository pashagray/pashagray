require "json"
require "faraday"

response = Faraday.get(
  "https://dev.to/api/articles/me/published",
  {},
  { "api-key": ENV["DEV_TO_API_KEY"] }
)

posts = JSON.parse(response.body).map do |article|
  <<~EOF
  __(#{article['title']})[#{article['url']}]__"
  #{article['description']}

  EOF
end

markdown = <<~EOF
# Hello friends!

I'm a fullstack ruby and js developer. Follow me on Dev.to

My last publications:

#{posts}

EOF

File.write("./README.md", markdown)
