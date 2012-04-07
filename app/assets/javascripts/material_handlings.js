function add_fields_for_mhi(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $("#nested-items").append(content.replace(regexp, new_id));
}