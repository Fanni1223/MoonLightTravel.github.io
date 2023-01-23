;(function(window, angular) {

  'use strict';

  // Application module
  angular.module('app', ['ui.router', 'app.common'])

  /* Application config */
  .config([
    '$stateProvider', 
    '$urlRouterProvider', 
    function($stateProvider, $urlRouterProvider) {

      $stateProvider
        .state('home', {
          url: '/',
          templateUrl: './html/home.html',
          controller: 'appController'
        })
        .state('kereses', {
          url: '/kereses',
          templateUrl: './html/kereses.html',
          controller: 'appController'
        })
        .state('blog', {
          url: '/blog',
          templateUrl: './html/blog.html',
          controller: 'appController'
        })
        .state('rolunk', {
          url: '/rolunk',
          templateUrl: './html/rolunk.html',
          controller: 'appController'
        })
        .state('afrika', {
          url: '/afrika',
          templateUrl: './html/afrika.html',
          controller: 'appController'
        })
        .state('amerika', {
          url: '/amerika',
          templateUrl: './html/amerika.html',
          controller: 'appController'
        })
        .state('ausztralia', {
          url: '/ausztralia',
          templateUrl: './html/ausztralia.html',
          controller: 'appController'
        })
        .state('azsia', {
          url: '/azsia',
          templateUrl: './html/azsia.html',
          controller: 'appController'
        })
        .state('europa', {
          url: '/europa',
          templateUrl: './html/europa.html',
          controller: 'appController'
        })
        .state('egyiptom', {
          url: '/egyiptom',
          templateUrl: './html/egyiptom.html',
          controller: 'appController'
        })
      $urlRouterProvider.otherwise('/');
    }
  ])

  // Application controller
  .controller('appController', [
    '$rootScope',
    '$scope',
    '$state',
    'http',
    function($rootScope, $scope, $state, http) {
      $scope.place = "";
      $scope.searchForPlace = (place) => {
        place = place.trim();
        if (place.length) {
          http.request({
            url: "./php/search.php",
            method: 'POST',
            data: place
          })
          .then(data => {
            $rootScope.keresesEredmenye = data;
            $rootScope.$applyAsync();
            $state.go('kereses');
          })
          .catch(e => console.log(e));
        }
      };
    }
  ])

})(window, angular);



