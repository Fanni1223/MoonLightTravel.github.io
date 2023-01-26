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
          controller: 'page2Controller'
        })
        .state('egyiptom', {
          url: '/egyiptom',
          templateUrl: './html/egyiptom.html',
          controller: 'page2Controller'
        })
        .state('parizs', {
          url: '/parizs',
          templateUrl: './html/parizs.html',
          controller: 'appController'
        })
        .state('hajosblog', {
          url: '/hajosblog',
          templateUrl: './html/hajosblog.html',
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

//app run
.run([
  "$rootScope",
  "$transitions",
  "$timeout",
  "http",
  function ($rootScope, $transitions, $timeout, http) {
    // On before transaction
    let isFirstRun = true;
    $transitions.onBefore({}, function (transition) {
      return $timeout(function () {
        if (isFirstRun) {
          isFirstRun = false;
          if (transition.to().name !== "home")
            return transition.router.stateService.target("home");
        }
        return true;
      }).catch((e) => console.log(e));
    });

    // Set global variables
    $rootScope.state = { id: null, prev: null };
    $rootScope.user = { id: null, type: null, name: null };

    // Get Flies
    http
      .request({
        url: "./php/get.php",
        method: "POST",
        data: {
          db: "moonlighttravel",
          query: "SELECT * FROM `utak` WHERE orszag = 'Egyiptom';",
          isAssoc: true,
        },
      })
      .then((data) => {
        $rootScope.page2 = data;
        $rootScope.$applyAsync();
      })
      .catch((e) => console.log(e));
  },
])

// Page2 controller
.controller("page2Controller", [
  "$scope",
  "$element",
  "$timeout",
  "http",
  "$stateParams",
  function ($scope, $element, $timeout, http, $stateParams) {
    let getData = () => {
      $scope.pointer = null;
      $scope.prevView = "table";
      $scope.view = "table";
      $scope.isDisabled = true;
      $scope.isEdit = false;
      $scope.$applyAsync();

      http
        .request({
          url: "./php/get.php",
          method: "POST",
          data: {
            db: "moonlighttravel",
            query: "SELECT * FROM `utak` WHERE orszag = 'Egyiptom';",
            isAssoc: true,
          },
        })
        .then((data) => {
          $scope.data = data;
          if ($scope.data.length) $scope.pointer = 0;
          $scope.$applyAsync();
        })
        .catch((e) => console.log(e));
    };

    getData();
    console.log($stateParams);
  },
]);
})(window, angular);




