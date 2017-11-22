'use strict';
 
angular.module('myCrudApp').factory('ProductService', ['$http', '$q', function($http, $q){
 
    var REST_SERVICE_URI = 'http://localhost:8080/angularjs-spring/';
 
    var factory = {
    	findAllProducts: findAllProducts,
        createProduct: createProduct,
        updateProduct: updateProduct,
        deleteProduct: deleteProduct
    };
 
    return factory;
 
    function findAllProducts() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'products')
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching products');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
    function createProduct(product) {
        var deferred = $q.defer();
        $http.post(REST_SERVICE_URI+'product', product)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while creating product');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
 
    function updateProduct(product) {
        var deferred = $q.defer();
        $http.put(REST_SERVICE_URI+'product', product)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while updating product');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
    function deleteProduct(id) {
        var deferred = $q.defer();
        $http.delete(REST_SERVICE_URI+'product/'+id)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while deleting product');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
}]);