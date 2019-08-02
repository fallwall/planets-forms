# Rails Planet Server
_Introduction_

In this exercise we will practice defining routes and controller actions in Rails.

#### Deliverable
The "finished" state of this lab should be a rails app for creating and viewing planets
	- The `Planet` resource should have a `name` field, a `num_moons` field, and a `color` field
	- There should be working routes for viewing all planets, creating a planet, and viewing one planet

## Setup

- fork and clone
- - `cd` into the repo directory
- run `rails new . -G --database=postgresql`
 - the `-G` prevents rails from making a new `.git` repo inside the rails app. 
- run `rails db:create`

## The Routes + Controller

Inside `config/routes.rb` use `resources` to declare RESTful routes for `planets`.  Verify that the routes have been created using `rails routes`

Either by hand or using `rails g` in the terminal, create the boilerplate for a `PlanetsController`.

Go ahead and write actions for `index` and `create` that return dummy responses.

## The Model

- Generate a Rails model for `Planet` and include the name num_moons and color protperties.
- run `rails db:migrate`
- open up the rails console with `rails c` and create a few planets from the console using `Planet.create!`

## The `index` Route

Now head back over the `PlanetsController` and properly implement the `index` route.  Remember, you can just use the `Planet` model in the controller.

Render the data using erb (i.e. squids and flounders).

## The `create` Route

- First, write a `planet_params` helper method that calls `require` and `permit` appropriately on the params.
- In the `create` method, use `planet_params` to gather the form data from the request and pass it to `Planet.create!`
- Return the newly created planet resource


## The `show` Route
  Implement `show` by extracting the `id` for the planet to be shown from the `params` hash, fetch the correct Planet from the db and then return it to the client.
  
## The `destroy` Route
Implement `destroy` that gets a planet `id` from the `show` route and deletes it using the `destroy` controller methods. Add a button or link to your `show` view to delete that planet
  
## Bonus

- Implement the `update` action.
- Implement a customer route that gets a random planet and displays it. Add a link to this route to your `index` view.

## Resources 
- [Rails Guides](https://guides.rubyonrails.org/v5.0/)
- [Forms on Rails Guides](https://guides.rubyonrails.org/form_helpers.html)
