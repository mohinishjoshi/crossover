angular.module('crossover')
  .controller('sessionController', ['Auth', '$scope', '$state',
    function(Auth, $scope, $state) {
      // Check on load if user signed in
      Auth.currentUser().then(function(user) {
        $scope.isAuthenticated = true;
        $scope.user = user;
      }, function(error) {

      });

      $scope.$on('devise:login', function(event, currentUser) {
        $scope.isAuthenticated = true;
        console.log(currentUser.inspect);
      });

      $scope.$on('devise:new-session', function(event, currentUser) {
        $scope.isAuthenticated = true;
      });

      $scope.$on('devise:logout', function(event, oldCurrentUser) {
        $scope.isAuthenticated = false;
      });

      $scope.$on('devise:new-registration', function(event, user) {
        $scope.isAuthenticated = true;
      });

      this.logout = function() {
        Auth.logout().then(function(oldUser) {
          alert("Successfully logged out!");
        }, function(error) {

        });
      }
    }
  ]);
