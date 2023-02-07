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
        .state('ut', {
          url: '/ut',
          templateUrl: './html/ut.html',
          controller: 'utController',
          params: {
            ut: null
          }
        })
        .state('utak', {
          url: '/utak',
          templateUrl: './html/utak.html',
          controller: 'utakController',
          params: {
            utak: null
          }
        })
        .state('ajanlatok', {
          url: '/ajanlatok',
          templateUrl: './html/ajanlatok.html',
          controller: 'ajanlatokController',
          params: {
            ajanlatok: null
          }
        })
        .state('hajosblog', {
          url: '/hajosblog',
          templateUrl: './html/hajosblog.html',
          controller: 'appController'
        })
        .state('programok', {
          url: '/programok',
          templateUrl: './html/programok.html',
          controller: 'appController'
        })
        .state('utazasiInformaciok', {
          url: '/utazasiInformaciok',
          templateUrl: './html/utazasiInformaciok.html',
          controller: 'appController'
        })
        .state('tengerpartiNyaralasok', {
          url: '/tengerpartiNyaralasok',
          templateUrl: './html/tengerpartiNyaralasok.html',
          controller: 'appController'
        })
        .state('kalandturak', {
          url: '/kalandturak',
          templateUrl: './html/kalandturak.html',
          controller: 'appController'
        })
      $urlRouterProvider.otherwise('/');
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
            query: "SELECT * FROM `utak` WHERE varos = 'Kairó';",
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

  // Ut controller
  .controller("utController", [
    '$state',
    "$scope",
    "$element",
    "$timeout",
    "http",
    "$stateParams",
    function ($state, $scope, $element, $timeout, http, $stateParams) {


      $scope.ut = $stateParams.ut;
      if (!$scope.ut) {
        $state.go('home');
        return;
      }

      http.request({
        url: "./php/get.php",
        method: "POST",
        data: {
          db: "moonlighttravel",
          query: "SELECT `utak`.*, `szallas`.* FROM `utak` INNER JOIN `szallas` ON `utak`.`szallas_id2` = `szallas`.`szallas_id` WHERE `kontinens` = :ut",
          params: {ut: $scope.ut},
          isAssoc: true,
        },
      })
      .then((data) => {
        $scope.data = data;
        $scope.$applyAsync();
      })
      .catch((e) => console.log(e));
    },
  ])

// Utak controller
.controller("utakController", [
  '$state',
  "$scope",
  "$element",
  "$timeout",
  "http",
  "$stateParams",
  function ($state, $scope, $element, $timeout, http, $stateParams) {


    $scope.utak = $stateParams.utak;
    if (!$scope.utak) {
      $state.go('home');
      return;
    }

    http.request({
      url: "./php/get.php",
      method: "POST",
      data: {
        db: "moonlighttravel",
        query: "SELECT `utak`.*, `szallas`.* FROM `utak` INNER JOIN `szallas` ON `utak`.`szallas_id2` = `szallas`.`szallas_id` WHERE `varos` = :utak",
        params: {utak: $scope.utak},
        isAssoc: true,
      },
    })
    .then((data) => {
      $scope.data = data;
      $scope.$applyAsync();
    })
    .catch((e) => console.log(e));
  },
])

 // Ajánlatok controller
 .controller("ajanlatokController", [
  "$scope",
  "$element",
  "$timeout",
  "http",
  "$stateParams",
  function ($scope, $element, $timeout, http, $stateParams) {


    $scope.ajanlatok = $stateParams.ajanlatok;
    if (!$scope.ajanlatok) {
      $state.go('home');
      return;
    }

    http.request({
      url: "./php/get.php",
      method: "POST",
      data: {
        db: "moonlighttravel",
        query: "SELECT `utak`.*, `szallas`.* FROM `utak` INNER JOIN `szallas` ON `utak`.`szallas_id2` = `szallas`.`szallas_id` WHERE `allapot` = :ajanlatok",
        params: {ajanlatok: $scope.ajanlatok},
        isAssoc: true,
      },
    })
    .then((data) => {
      $scope.data = data;
      $scope.$applyAsync();
    })
    .catch((e) => console.log(e));
  },
])

})(window, angular);


function myFunction(imgs) {
  // Get the expanded image
  var expandImg = document.getElementById("expandedImg");
  // Get the image text
  var imgText = document.getElementById("imgtext");
  // Use the same src in the expanded image as the image being clicked on from the grid
  expandImg.src = imgs.src;
  // Use the value of the alt attribute of the clickable image as text inside the expanded image
  imgText.innerHTML = imgs.alt;
  // Show the container element (hidden with CSS)
  expandImg.parentElement.style.display = "block";
}
