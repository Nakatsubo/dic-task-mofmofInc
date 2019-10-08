$(function() {
  function set_name_func() {
    $('h2.name.set_name span:visible').each(function(index) {
      $(this).html(index + 1);
    });
  };

  $(document).on('nested:fieldAdded nested:fieldRemoved', function(event) {
    set_name_func();
  });
});