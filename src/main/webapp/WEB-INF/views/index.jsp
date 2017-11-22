<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>AngularJS Spring MVC Example</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<c:url value='/assets/css/app.css' />" rel="stylesheet"></link>
</head>
<body ng-app="myCrudApp" class="ng-cloak">
      <div class="generic-container" ng-controller="ProductController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Create new bug</span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.product.id" />
                      <!-- <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="name">Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.name" id="name" class="field form-control input-sm" placeholder="Enter product name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>  -->
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="name">Location</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.location" id="name" class="field form-control input-sm" placeholder="Enter location" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>                         
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="name">Status</label>
                              <div class="col-md-7">
                              		<div ng-init="items = ['Open', 'Close', 'Hold']">
									  <select ng-options="item for item in items" ng-model="ctrl.product.status">
									    <option value="">Select item</option>
									  </select>
									</div>
                                  <!-- <input type="text" ng-model="ctrl.product.status" id="name" class="field form-control input-sm" 
                                  		placeholder="Enter Status" required ng-minlength="3"/> -->
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="name">Type</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.type" id="name" class="field form-control input-sm" placeholder="Enter Type" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="name">Severity</label>
                              <div class="col-md-7">
                              		<div ng-init="severityItems = ['High', 'Low', 'Medium']">
									  <select ng-options="severityItem for severityItem in severityItems" ng-model="ctrl.product.severity">
									    <option value="">Select item</option>
									  </select>
									</div>
                                  <!-- <input type="text" ng-model="ctrl.product.status" id="name" class="field form-control input-sm" 
                                  		placeholder="Enter Status" required ng-minlength="3"/> -->
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="bugDescription">Bug Desc</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.bugDescription" id="bugDescription" class="field form-control input-sm" placeholder="Enter Bug Description" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="foundBy">Found By</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.foundBy" id="foundBy" class="field form-control input-sm" placeholder="Enter Found By" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="againstVersion">Against Version</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.againstVersion" id="againstVersion" class="field form-control input-sm" placeholder="Enter Against Version" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="dateFound">Date found</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.dateFound" id="dateFound" class="field form-control input-sm" placeholder="Enter Date Found" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="assignedTo">Assignd To</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.assignedTo" id="assignedTo" class="field form-control input-sm" placeholder="Enter Assgned To" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="fixDescription">Fix Desc</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.product.fixDescription" id="fixDescription" class="field form-control input-sm" placeholder="Enter Fix Desc" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.name.$error.required">This is a required field</span>
                                      <span ng-show="myForm.name.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.name.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <!-- <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="price">Price</label>
                              <div class="col-md-7">
                                  <input type="number" ng-model="ctrl.product.price" id="price" min="1" class="field form-control input-sm" placeholder="Enter product price"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.price.$error.required">This is a required field</span>
                                      <span ng-show="myForm.price.$error.number">Not a valid number</span>
                                  </div>
                              </div>
                          </div>
                      </div> -->
 
                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="{{!ctrl.product.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Bugs</span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th><a href=""
								        ng-click="sortBy('id')">Location
								        <span class="sortorder" ng-show="propertyName === 'id'" ng-class="{reverse: reverse}"></span>
							        </a>
						        </th>
                              <!-- <th>Name</th> -->
                              <th>
                               <!-- working -->
	                               <a href=""
								        ng-click="sortBy('location')">Location
								        <span class="sortorder" ng-show="propertyName === 'location'" ng-class="{reverse: reverse}"></span>
							        </a>
						      </th>
                              <th><a href=""
									ng-click="sortBy('status')">Status
									<span class="sortorder" ng-show="propertyName === 'status'" ng-class="{reverse: reverse}"></span>
							</a></th>
							<th><a href=""
								ng-click="sortBy('type')">Type
								<span class="sortorder" ng-show="propertyName === 'type'" ng-class="{reverse: reverse}"></span>
							</a></th>
							
							<th><a href=""
								ng-click="sortBy('severity')">Severity
								<span class="sortorder" ng-show="propertyName === 'severity'" ng-class="{reverse: reverse}"></span>
							</a></th>
							<th><a href=""
								ng-click="sortBy('bugDescription')">Bug Description
								<span class="sortorder" ng-show="propertyName === 'bugDescription'" ng-class="{reverse: reverse}"></span>
							</a></th>
							<th><a href=""
								ng-click="sortBy('foundBy')">Found By
								<span class="sortorder" ng-show="propertyName === 'foundBy'" ng-class="{reverse: reverse}"></span>
							</a></th>
							<th><a href=""
								ng-click="sortBy('againstVersion')">Against Version
								<span class="sortorder" ng-show="propertyName === 'againstVersion'" ng-class="{reverse: reverse}"></span>
							</a></th>
							<th><a href=""
								ng-click="sortBy('dateFound')">Date Found
								<span class="sortorder" ng-show="propertyName === 'dateFound'" ng-class="{reverse: reverse}"></span>
							</a></th>
							<th><a href=""
								ng-click="sortBy('assignedTo')">Assigned To
								<span class="sortorder" ng-show="propertyName === 'assignedTo'" ng-class="{reverse: reverse}"></span>
							</a></th>
							<th><a href=""
								ng-click="sortBy('fixDescription')">Fix Description
								<span class="sortorder" ng-show="propertyName === 'fixDescription'" ng-class="{reverse: reverse}"></span>
							</a></th>
                              <!-- <th>Price</th> -->
                              <th width="25%"></th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="p in ctrl.products | orderBy:propertyName:reverse">
                              <td><span ng-bind="p.id"></span></td>
                              <!-- <td><span ng-bind="p.name"></span></td> -->
                              <td><span ng-bind="p.location"></span></td>
                              <td><span ng-bind="p.status"></span></td>
                              <td><span ng-bind="p.type"></span></td>
                              <td><span ng-bind="p.severity"></span></td>
                              <td><span ng-bind="p.bugDescription"></span></td>
                              <td><span ng-bind="p.foundBy"></span></td>
                              <td><span ng-bind="p.againstVersion"></span></td>
                              <td><span ng-bind="p.dateFound"></span></td>
                              <td><span ng-bind="p.assignedTo"></span></td>
                              <td><span ng-bind="p.fixDescription"></span></td>
                              <!-- <td><span ng-bind="p.price"></span></td> -->
                              <td>
                              	<button type="button" ng-click="ctrl.edit(p.id)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(p.id)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.js"></script>
	<script src="<c:url value='/assets/js/app.js' />"></script>
	<script src="<c:url value='/assets/js/productService.js' />"></script>
	<script src="<c:url value='/assets/js/productController.js' />"></script>
</body>
</html>
