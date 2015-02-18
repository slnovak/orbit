'use strict'

###*
 # @ngdoc function
 # @name orbitApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the orbitApp
###
angular.module 'orbitApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
