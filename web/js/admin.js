(function($)
{

  // Here is the entry point for your admin javascript
  $(function(){  
    $('input.datepicker_me').live('focus', function() {  
        $(this).datepicker();  
    }); 
  
})(jQuery);