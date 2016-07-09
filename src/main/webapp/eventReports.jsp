<!doctype html>
<html ng-app>
<head>
<title>Hello Events Angular</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
<script src="events.js"></script>
</head>
<body>
	<div ng-controller="Events">
		I have {{allEvents.length}} events!
		<ul class="events-container">
			<li ng-repeat="singleEvent in allEvents">
				{{singleEvent.name}}
			</li>
		</ul>
	</div>

</body>
</html>