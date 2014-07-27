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

  @title = note

  # render the markdown file in the remark template
  erb :template do
    File.read(settings.notes_directory + "/" + note + ".md")
  end
end

__END__

@@ index
<html>
  <head>
    <title>Intro to Web Development Course</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
  </head>
  <body>
    <div class="container">
      <h1>Introduction to Web Development</h1>
      <h3>by <a href="http://christian.gen.co">Christian Genco</a></h3>
      <hr/>
      <ul>
        <% @notes.each do |note| %>
          <li>
            <a href="/<%= note.sub('md', 'html') %>">
              <%= note.sub('.md', '').gsub('_', ' ') %>
            </a>
          </li>
        <% end %>
      </ul>
    </div>

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>
