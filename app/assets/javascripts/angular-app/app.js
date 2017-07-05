angular
    .module('crossover', [
        'ngAnimate',
        'ui.router',
        'templates',
        'Devise'
    ])
    .config(function ($stateProvider, $urlRouterProvider, $locationProvider, AuthProvider) {
      $stateProvider
        .state('home', {
          url: '/',
          templateUrl: 'home.html',
          controller: 'HomeController'
        })
        .state('login', {
          url: '/login',
          templateUrl: 'login.html',
          controller: 'LoginController'
        });

      // default fall back route
      $urlRouterProvider.otherwise('/');

      // enable HTML5 Mode for SEO
      $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
      });
      AuthProvider.loginPath('/customers/sign_in.json');
      AuthProvider.loginMethod('POST');
      AuthProvider.resourceName('customer');
      AuthProvider.registerPath('/customers.json');
      AuthProvider.registerMethod('POST');
      AuthProvider.logoutPath('/customers/sign_out.json');
      AuthProvider.logoutMethod('DELETE');
    });
