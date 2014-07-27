require 'sinatra'

set :notes_directory, File.dirname(__FILE__) + "/notes"

get '/' do
  @notes = Dir.glob(settings.notes_directory + "/*.md").map{|path|
    File.basename(path)
  }

  erb :index
end

get '/:note.:format' do |note, format|
  # ignore format

  # render the markdown file in the remark template
  erb :template do
    File.read(settings.notes_directory + "/" + note + ".md")
  end
end

__END__

@@ index
<html>
  <head>
  </head>
  <body>
    <ul>
      <% @notes.each do |note| %>
        <li>
          <a href="/<%= note.sub('md', 'html') %>">
            <%= note.sub('.md', '').gsub('_', ' ') %>
          </a>
        </li>
      <% end %>
    </ul>
  </body>
</html>