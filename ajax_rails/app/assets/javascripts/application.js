// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var appendTask = function(task){
	var completeButton = $('<button class="complete">complete</button>');
	var deleteButton = $('<button class="delete">delete</button>');
	var actions = $('<div class="actions"></div>').append(completeButton).append(deleteButton);
	var taskText = $('<div class="items">'+task.name+'</div>').append(actions);
	var htmlTask = $('<li></li>').append(taskText);

	completeButton.click(function(){
		$.ajax({
			url: '/tasks/complete/' + task.id,
			dataType: 'script',
			type: 'PUT'
		})
	});

	deleteButton.click(function(){
		$.ajax({
			url: '/tasks/delete/' + task.id,
			dataType: 'script',
			type: 'PUT'
		})
	});

	htmlTask.attr("data-id", task.id);
	$('#todo-items').append(htmlTask);
};

$(function(){
	$.ajax({
		url: '/',
		dataType: 'json',
		type: 'GET'
	}).done(function(data){
		var length = data.length;
		for (var i = 0; i < length; i++) {
			appendTask(data[i]);
		}
	});

	$('#add-item').click(function(){
		var task = { name: $('#new-task-field').val() };
		if (task.name.length!==0){
			$.ajax({
				url: '/create/' + task.name,
        dataType: 'json',
        type: 'POST'
			}).done(function(data){
				appendTask(task);
			});
		}
	});
});
