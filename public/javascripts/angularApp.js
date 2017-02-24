// JavaScript Document

var modernApp = angular.module('modernApp', ['ui.router', 'ngAnimate']);

modernApp.config(['$stateProvider','$urlRouterProvider', function($stateProvider, $urlRouterProvider){
	$stateProvider
	.state('list', {  
		url: '/list', 
		templateUrl: 'views/list.html', 
		controller: 'movementCtrl'		
		})
		
	.state('details', {
		url:'/details/{id}',
		templateUrl:'views/details.html',
		controller:'artistCtrl'
	});

	$urlRouterProvider.otherwise('/list');			
	}]);
	
modernApp.controller('movementCtrl', ['$scope','$http', function($scope, $http){
	$http.get('/movements').then(function(movements){
		//console.log(movements.data);
		$scope.movements = movements.data;

		});	
	}]);	

modernApp.controller('artistCtrl', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
	$http.get('/movements/'+$stateParams.id).then(function(artists){
		//console.log(artists.data.artists);
		$scope.move = artists.data;
		$scope.artists = artists.data.artists;
	});
}]);