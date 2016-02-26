#OCS Notes 02-11

###How to make dynamic links

```
<%= @movies.each do |movie| %>
  <p><a href="/view_movie/<%= movie.id %>"><%= movie.title %></a></p>
<% end %>

```

In this example we are using `.id` in another link tag in order to change the link based on the reference to the movie. 

###Setting up the controller for dynamic links

```

MyApp.get "view_movie/:banana" do

  @movie = Movie.find_by_id(params[:banana])

  erb :"single_movie"
end

```

###Creating Delete Links

```

<%= @movies.each do |movie| %>
  <p>
    <a href="/view_movie/<%= movie.id %>">
      <%= movie.title %>
    

    </a>
  </p>
<% end %>

````

###Linking Tables

```
class Swimmer < ActiveRecord::Base

  def team_name
    x = self.team_id
    y = Team.find_by_id(x)
    y.name
  end

```