jQuery(document).ready(function($){

  // AJAX Forms
  // need livequery here so that ajax forms loaded up in 
  // facebox can still use the "xhr" class
  $("form.xhr").livequery(function(){
    $(this).jaxy();
  });

  $('#markdown_comatose_upload_body').markItUp(markdownComatoseUploadSettings);
  
  $("#resizing_options").livequery(function(){
    $(this).change(function(){
      var option = $("#resizing_options option:selected").val();
      var fields = $("#page_image_image_height, #page_image_image_width");
      switch (option) {
        // width of container is 500px, but 3px of padding on images
        case "20": fields.val(94); $("#image_dimension_input").hide(); break;
        case "25": fields.val(119); $("#image_dimension_input").hide(); break;
        case "100": fields.val(494); $("#image_dimension_input").hide(); break;
        case "custom": $("#image_dimension_input").show(); break;
        default: fields.val(null); $("#image_dimension_input").hide();
      }
    }).change();
  });
  

});