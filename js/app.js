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
          templateUrl: './html/home.html'
        })
        .state('blog', {
          url: '/blog',
          templateUrl: './html/blog.html'
        })
        .state('rolunk', {
          url: '/rolunk',
          templateUrl: './html/rolunk.html'
        })
        .state('afrika', {
          url: '/afrika',
          templateUrl: './html/afrika.html'
        })
        .state('amerika', {
          url: '/amerika',
          templateUrl: './html/amerika.html'
        })
        .state('ausztralia', {
          url: '/ausztralia',
          templateUrl: './html/ausztralia.html'
        })
        .state('azsia', {
          url: '/azsia',
          templateUrl: './html/azsia.html'
        })
        .state('europa', {
          url: '/europa',
          templateUrl: './html/europa.html'
        })
      
      $urlRouterProvider.otherwise('/');
    }
  ])

})(window, angular);