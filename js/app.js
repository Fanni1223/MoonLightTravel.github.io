; (function (window, angular) {

  //'use strict';

  // Application module
  angular.module('app', ['ui.router', 'app.common'])

    /* Application config */
    .config([
      '$stateProvider',
      '$urlRouterProvider',
      function ($stateProvider, $urlRouterProvider) {

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
          })
          .state('rolunk', {
            url: '/rolunk',
            templateUrl: './html/rolunk.html',
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
            params: {
              nyaralas: null,
              ut_id: null
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

          .state('foglalasok', {
            url: '/foglalasok',
            templateUrl: './html/foglalasok.html',
            controller: 'foglalasokController',

          })
          .state('hajosblog', {
            url: '/hajosblog',
            templateUrl: './html/hajosblog.html',
          })

          .state('programok', {
            url: '/programok',
            templateUrl: './html/programok.html',
          })

          .state('utazasiInformaciok', {
            url: '/utazasiInformaciok',
            templateUrl: './html/utazasiInformaciok.html',
          })

          .state('tengerpartiNyaralasok', {
            url: '/tengerpartiNyaralasok',
            templateUrl: './html/tengerpartiNyaralasok.html',
          })

          .state('turak', {
            url: '/turak',
            templateUrl: './html/turak.html',
          })

          .state('tengerparti', {
            url: '/tengerparti',
            templateUrl: './html/tengerparti.html',
          })
          .state('kalandturak', {
            url: '/kalandturak',
            templateUrl: './html/kalandturak.html',
          })

          .state('sport', {
            url: '/sport',
            templateUrl: './html/sport.html',
          })

          .state('fesztivalok', {
            url: '/fesztivalok',
            templateUrl: './html/fesztivalok.html',
          })

          .state('wellnes', {
            url: '/wellnes',
            templateUrl: './html/wellnes.html',
          })

          .state('varoslatogatas', {
            url: '/varoslatogatas',
            templateUrl: './html/varoslatogatas.html',
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
      "$state",
      "$transitions",
      "$timeout",
      "util",
      function ($rootScope, $state, $transitions, $timeout, util) {

        // Set global variables
        $rootScope.state = { id: null, prev: null };

        let data = localStorage.getItem("user");
        if (util.isJson(data))
          $rootScope.user = JSON.parse(data);
        else $rootScope.user = { id: null, nev: null };

        // On before transaction
        $transitions.onBefore({}, function (transition) {
          return $timeout(function () {
            if ($rootScope.state.id === null) {
              if (transition.to().name !== "home")
                return transition.router.stateService.target("home");
            }
            $rootScope.state.prev = $rootScope.state.id;
            $rootScope.state.id = transition.to().name;
            console.log($rootScope.state.id);
            return true;
          }).catch((e) => console.log(e));
        });

        // Add nagyit function to $rootScope
        $rootScope.nagyit = function (elem) {
          var nagy_kep_elem = document.getElementById("nagy_kep");
          nagy_kep_elem.src = elem.src;
          nagy_kep_elem.alt = elem.alt;
        };
        $rootScope.nagyit2 = function (elem) {
          var nagy_kep_elem = document.getElementById("nagy_kep2");
          nagy_kep_elem.src = elem.src;
          nagy_kep_elem.alt = elem.alt;
        };
        $rootScope.nagyit3 = function (elem) {
          var nagy_kep_elem = document.getElementById("nagy_kep3");
          nagy_kep_elem.src = elem.src;
          nagy_kep_elem.alt = elem.alt;
        };



        $rootScope.logout = () => {
          localStorage.removeItem("user");
          location.reload();
        };


        // Az overlay és popup elemek kiválasztása
        var overlay = document.querySelector('.overlay_popup');

        // A felugró ablak bezárásának függvénye
        $rootScope.closePopup = () => {
          overlay.style.display = 'none';
        };

        // Az oldal betöltődésekor megjelenő felugró ablak
        window.onload = function () {
          overlay.style.display = 'flex';
        };

        $rootScope.scrollTo = function (elementId) {
          var element = document.getElementById(elementId);
          element.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });
        };

        $rootScope.scrollAndRedirect = function () {
          $state.go('home');
          $timeout(function () {
            $rootScope.scrollTo('bejelentkezes');
          });
        };





      },
    ])

    // Application controller
    .controller('appController', [
      '$rootScope',
      '$scope',
      '$state',
      'http',
      function ($rootScope, $scope, $state, http) {
        // Search
        $scope.place = "";
        $scope.searchForPlace = (place) => {
          place = place.trim();
          if (place.length) {
            http.request({
              url: "./php/kereses.php",
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

        $scope.model = {
          login: {
            email: null,
            jelszo: null
          },
          register: {
            nev: null,
            email: null,
            jelszo: null
          }
        };

        $scope.register = function () {
          http.request({
            url: "./php/register.php",
            method: "POST",
            data: $scope.model.register
          })
            .then(data => {
              if (data.affectedRows) {
                $rootScope.user = {
                  id: parseInt(data.lastInsertId),
                  nev: $scope.model.register.nev
                };
                alert('Sikeres regisztráció!');
              } else {
                alert('A regisztráció nem sikerült!');
              }
              $scope.model.register = {
                nev: null,
                email: null,
                jelszo: null
              };
              $scope.$applyAsync();
            })
        };

        $scope.login = function () {
          http.request({
            url: "./php/login.php",
            method: "POST",
            data: $scope.model.login
          })
            .then(data => {
              $scope.model.login = {
                email: null,
                jelszo: null
              };
              $scope.$applyAsync();
              if (data) {
                $rootScope.user = {
                  id: data[0].id,
                  nev: data[0].nev
                };
                localStorage.setItem("user", JSON.stringify($rootScope.user));
                alert('Sikeres bejelentkezés!');
              } else {
                alert('Hibás email, vagy jelszó!');
              }
            })
        };

        $scope.scrollTo = (elementId, align = false) => {
          let element = document.getElementById(elementId);
          if (element) element.scrollIntoView(align);
        };

        // Login/Register change active
        $scope.changeActive = (event) => {
          let elementId = event.currentTarget.id,
            container = document.getElementById('bejelentkezes');
          if (elementId === 'signUp') {
            container.classList.add("right-panel-active");
          } else {
            container.classList.remove("right-panel-active");
          }

        }
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
          url: "./php/utak.php",
          method: "POST",
          data: { ut: $scope.ut }
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
      '$rootScope',
      "$scope",
      "http",
      "util",
      "$stateParams",
      function ($state, $rootScope, $scope, http, util, $stateParams) {

        $scope.nyaralas = $stateParams.nyaralas;
        if (!$scope.nyaralas) {
          $state.go('home');
          return;
        }

        http.request({
          url: "./php/ut.php",
          method: "POST",
          data: { nyaralas: $scope.nyaralas }
        })
          .then((data) => {
            $scope.data = data;
            $scope.model = {
              nev2: null,
              telefonsz: null,
              email: null,
              fo: 1,
              vegosszeg: $scope.data[0].ut_ar + $scope.data[0].szallas_ar,
              evszam: null,
              honap: null,
              nap: null,
              oda_ora: 8,
              vissza_ora: 8,
              kisagy: 0,
              ut_id2: $stateParams.ut_id
            };
            $scope.$applyAsync();
          })
          .catch((e) => console.log(e));

        // Validálás
        $scope.changed = function () {
          let foglalas = document.getElementById('foglalas-btn'),
            isDisabled = false,
            keys = Object.keys($scope.model);

          // When date has not valid property
          if (!$scope.model.evszam || !$scope.model.honap || !$scope.model.nap) {

            // Set button enable/disable
            foglalas.disabled = true;
            return;
          }

          // Crete date
          let now = moment().startOf('day'),
            date = moment($scope.model.evszam + "-" +
              $scope.model.honap + "-" +
              $scope.model.nap, 'YYYY-MM-DD'),
            diff = now.diff(date, 'days');
          if (!date.isValid() || diff >= 0) {

            let a = now.diff(date);

            // Set button enable/disable
            foglalas.disabled = true;
            return;
          }

          // Each keys
          keys.every(function (key) {

            // Get/Check value
            let value = $scope.model[key];
            if (value === null) {
              isDisabled = true;
              return false;
            }

            switch (key) {
              case 'nev2':
                isDisabled = !value.length;
                break;
              case 'telefonsz':
                isDisabled = !value.length;
                break;
              case 'email':
                isDisabled = !util.isEmail(value);
                break;
              case 'fo':
                value = parseInt(value);
                isDisabled = isNaN(value) || value < 1;
                break;
              case 'evszam':
                value = parseInt(value);
                isDisabled = value < 2023 || value > 9999;
                break;
              case 'honap':
                value = parseInt(value);
                isDisabled = value < 1 || value > 12;
                break;
              case 'nap':
                value = parseInt(value);
                isDisabled = value < 1 || value > 31;
                break;
            }
            return !isDisabled;
          });

          // Set button enable/disable
          foglalas.disabled = isDisabled;
        };

        // Foglalás
        $scope.insertData = function () {
          let args = util.cloneVariable($scope.model);
          args.userId = $rootScope.user.id;
          http.request({
            url: "./php/foglalas.php",
            method: "POST",
            data: args,
          })
            .then((data) => {
              alert("Sikeresen lefoglalta az utat! Foglalását megtekintheti a foglalások menüpontban.");
              console.log(data);
            })
            .catch((error) => {
              console.log(error);
            });
        };

        $scope.changed2 = function () {
          $scope.model.vegosszeg = ($scope.data[0].ut_ar + $scope.data[0].szallas_ar) * $scope.model.fo;
        };

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
          url: "./php/ajanlatok.php",
          method: "POST",
          data: { ajanlatok: $scope.ajanlatok }
        })
          .then((data) => {
            $scope.data = data;
            $scope.$applyAsync();
          })
          .catch((e) => console.log(e));
      },
    ])

    // Foglalások controller
    .controller("foglalasokController", [
      "$scope",
      "$element",
      "$timeout",
      "http",
      "$stateParams",
      function ($scope, $element, $timeout, http, $stateParams) {

        http.request({
          url: "./php/foglalas-leker.php",
          method: "POST",
          data: $scope.user.id,
        })
          .then((data) => {
            $scope.data = data;
            $scope.$applyAsync();
          })
          .catch((e) => console.log(e));
      },
    ])



})(window, angular);






