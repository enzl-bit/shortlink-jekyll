require 'yaml'

shortlinks = YAML.load_file('_data/shortlinks.yml')

shortlinks.each do |link|
  slug = link['slug']
  File.open("shortlinks/#{slug}.html", 'w') do |f|
    f.puts "---"
    f.puts "layout: redirect"
    f.puts "slug: #{slug}"
    f.puts "---"
  end
end
