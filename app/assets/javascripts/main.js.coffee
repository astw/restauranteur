# app/assets/javascripts/main.js.coffee

# This line is related to our Angular app, not to our
# HomeCtrl specifically. This is basically how we tell
# Angular about the existence of our application.

@restauranteur = angular.module('restauranteur', [])

# This routing directive tells Angular about the default
# route for our application. The term "otherwise" here
# might seem somewhat awkward, but it will make more
# sense as we add more routes to our application.


@restauranteur.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.

     when('/aa',
        templateUrl: "assets/templates/index.html"
        controller: 'HomeCtrl'
      ).
      when('/restaurants/:id', {
      templateUrl: '../templates/restaurants/show.html',
      controller: 'RestaurantShowCtrl'
    }).
      when("/restaurants",
        templateUrl:'../templates/restaurants/index.html',
        controller:'RestaurantIndexCtrl'
      ).
      otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])

