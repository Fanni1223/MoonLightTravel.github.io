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
        .state('nyaralas', {
          url: '/nyaralas',
          templateUrl: './html/nyaralas.html',
          controller: 'nyaralasController',
          contoller: 'foglalasController',
          params: {
            nyaralas: null
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
        .state('turak', {
          url: '/turak',
          templateUrl: './html/turak.html',
          controller: 'appController'
        })
        .state('tengerparti', {
          url: '/tengerparti',
          templateUrl: './html/tengerparti.html',
          controller: 'appController'
        })
        .state('kalandturak', {
          url: '/kalandturak',
          templateUrl: './html/kalandturak.html',
          controller: 'appController'
        })
        .state('sport', {
          url: '/sport',
          templateUrl: './html/sport.html',
          controller: 'appController'
        })
        .state('fesztivalok', {
          url: '/fesztivalok',
          templateUrl: './html/fesztivalok.html',
          controller: 'appController'
        })
        .state('wellnes', {
          url: '/wellnes',
          templateUrl: './html/wellnes.html',
          controller: 'appController'
        })
        .state('varoslatogatas', {
          url: '/varoslatogatas',
          templateUrl: './html/varoslatogatas.html',
          controller: 'appController'
        })
        .state('regisztracio', {
          controller: 'regisztracio'
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

// Nyaralás controller
.controller("nyaralasController", [
  '$state',
  "$scope",
  "$element",
  "$timeout",
  "http",
  "$stateParams",
  function ($state, $scope, $element, $timeout, http, $stateParams) {


    $scope.nyaralas = $stateParams.nyaralas;
    if (!$scope.nyaralas) {
      $state.go('home');
      return;
    }

    http.request({
      url: "./php/get.php",
      method: "POST",
      data: {
        db: "moonlighttravel",
        query: "SELECT `utak`.*, `szallas`.*, `utak_kepek`.*  FROM `utak` INNER JOIN `szallas` ON `utak`.`szallas_id2` = `szallas`.`szallas_id` INNER JOIN `utak_kepek` ON `utak`.`ut_id` = `utak_kepek`.`ut_id3` WHERE `varos` = :nyaralas",
        params: {nyaralas: $scope.nyaralas},
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

// Foglalás controller
  .controller('foglalasCtrl', function($scope, $http) {
    $scope.insertData = function() {
      $http.post('foglalas.php', {
        'teljesnev': $scope.teljesnev,
        'telefonszam': $scope.telefonszam,
        'email': $scope.email,
        'evszam': $scope.evszam,
        'honap': $scope.honap,
        'nap': $scope.nap,
        'induloido': $('input[name="payment-method"]:checked', '#foglalas').next('label').text(),
        'erkezoido': $('input[name="payment-method"]:checked', '#foglalas').nextAll('label').eq(2).text(),
        'fogyszam': $('input[placeholder="Fő"]').val(),
        'kisagy': $('input[name="payment-method"]:checked', '#foglalas').val()
      }).then(function(response) {
        $scope.data = response.data;
      });
    };
  });


/*
//create data
app.post('/felhasznalok',(req,res)=>{
  console.log(req.body, 'creatdata');

  let fullname = req.body.name;
  let eMail = req.body.email;
  let jElszo = req.body.jelszo ;

  let qr = `insert into felhasznalok (nev, email, jelszo) values('$(fullname)','$(eMail)','$(jElszo)')`;

  db.query(qr, (err,result)=>{
    if(err){console.log(err);}
    res.send({
      message: 'data.inserted',
    });
  })
})
*/




})(window, angular);






