jQuery(function() {
  jQuery(document).on('turbolinks:visit',   function() { NProgress.start();  });
  jQuery(document).on('turbolinks:request-end', function() { NProgress.set(0.7); });
  jQuery(document).on('turbolinks:render',  function() { NProgress.done();   });
});
