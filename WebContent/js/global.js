// The common js code goes here..

$(document).ready(function(){
	$("#showModal").click(function(){
		console.log("inside");
		$('#addTackModal').modal('show');
	});
});