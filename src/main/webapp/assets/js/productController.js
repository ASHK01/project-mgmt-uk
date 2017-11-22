'use strict';
 
angular.module('myCrudApp').controller('ProductController', ['$scope', 'ProductService', function($scope, ProductService) {
    var self = this;
    self.product = { id: null, name:'', price: 0.0, bugId: '', location: '', status: '',type: '' };
    
  
    self.products = [];
 
    self.submit = submit;
    self.edit = edit;
    self.remove = remove;
    self.reset = reset;
    
    $scope.propertyName = 'location';
    $scope.reverse = true;
    $scope.friends = self.products;

    $scope.sortBy = function(propertyName) {
    	console.log("Test");
      $scope.reverse = ($scope.propertyName === propertyName) ? !$scope.reverse : false;
      $scope.propertyName = propertyName;
    };
 
    findAllProducts();
 
    function findAllProducts(){
    	ProductService.findAllProducts()
            .then(
            function(d) {
                self.products = d;
            },
            function(errResponse){
                console.error('Error while fetching products');
            }
        );
    }
 
    function createProduct(product){
    	ProductService.createProduct(product)
            .then(
            findAllProducts,
            function(errResponse){
                console.error('Error while creating product');
            }
        );
    }
 
    function updateProduct(product){
    	ProductService.updateProduct(product)
            .then(
            findAllProducts,
            function(errResponse){
                console.error('Error while updating product');
            }
        );
    }
 
    function deleteProduct(id){
    	ProductService.deleteProduct(id)
            .then(
            findAllProducts,
            function(errResponse){
                console.error('Error while deleting product');
            }
        );
    }
 
    function submit() {
        if(self.product.id===null){
            console.log('Saving New Product', self.product);
            createProduct(self.product);
        }else{
            updateProduct(self.product);
            console.log('Product updated with id ', self.product.id);
        }
        reset();
    }
 
    function edit(id){
        console.log('id to be edited', id);
        for(var i = 0; i < self.products.length; i++){
            if(self.products[i].id === id) {
                self.product = angular.copy(self.products[i]);
                break;
            }
        }
    }
 
    function remove(id){
        console.log('id to be deleted', id);
        if(self.product.id === id) {//clean form if the product to be deleted is shown there.
            reset();
        }
        deleteProduct(id);
    }
 
 
    function reset(){
        self.product={id:null, name:'', price:0.0, bugId: '', location: '', status: '',type: ''};
        $scope.myForm.$setPristine(); //reset Form
    }
 
}]);