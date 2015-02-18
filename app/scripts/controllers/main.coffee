'use strict'

###*
 # @ngdoc function
 # @name orbitApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the orbitApp
###
angular.module 'orbitApp'
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
