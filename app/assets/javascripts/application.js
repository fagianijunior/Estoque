// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree 

function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".form-inputs").hide(300);
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).before(content.replace(regexp, new_id));
}
// Fecha o formulário Show do Material Handlings
function close_form() {
	$('#material_info').on('click', '.close', function() {
		$('#material_info').hide(300);
	})	
}
// Exibe as janelas para cadastro em diálogos
function show_modal(form_name, titulo, altura, largura) {
	$(form_name).dialog({ 
	    autoOpen: false, 
	    title: titulo,
	    hide: 'fade',
	    show: 'fade',
	    modal: true,
	    draggable: true,
	    resizable: false,
	    width: largura,
	    height: altura
	}).dialog('open');
}

function clear_field() {
	var $search_input = $('input.search-input');
	$('.content').on('click', '.clear-field', function() {
		$search_input.val("").focus();
	});
}

$(document).ready(function(){

  // Ajax para filtro das tabelas
  $('#search input').keyup(function(e) {
  	$.get($('#search').attr('action'), $('#search').serialize(), null, 'script');
  	e.preventDefault();
  });
});