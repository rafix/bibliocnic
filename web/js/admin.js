(function($)
{
    if($(document).ready(function() {
        $('input.datepicker_me').live('focus', function() { 
            $(this).datetimepicker({
                 timeFormat: 'h:mm tt',
                 ampm: true,
                 hourGrid: 6,
                 minuteGrid: 15
            });
        });
    }));
})(jQuery);