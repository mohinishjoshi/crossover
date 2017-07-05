angular.module('crossover')
  .controller('LoginController', ['Auth', '$scope', '$state', '$http',
    function(Auth, $scope, $state, $http) {

      $scope.signin = function() {
        Auth.login($scope.customer.credentials, config).then(function(user) {
          $state.go('home');
        }, function(error) {
          console.info('Error in authenticating user!');
          alert('Error in signing in user!');
        });
      };

      var config = {
            headers: {
                'X-HTTP-Method-Override': 'POST'
            }
      };
      $scope.signup = function() {
        $http.post('/customer', $scope.customer)
          .then(function(user) {
            Auth.login($scope.customer.credentials, config).then(function(user) {
              $state.go('home');
            }, function(error) {
              console.info('Error in authenticating user!');
            });
          }, function(error) {
            console.info('Error in authenticating user!');
            alert('Error in signing in user!');
          });
      };
    }
  ]);
