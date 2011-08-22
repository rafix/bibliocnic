// unobtrusive datepicker for symfony
// copyright Massimiliano Arione 2010
// released under LGPL
// http://garakkio.altervista.org/datepickerui/

jQuery(document).ready(function() {
  var updateSelects = function(name, selectedDate)
  {
    var sDate = new Date(selectedDate);
    $('#' + name + 'day option[value=' + sDate.getDate() + ']').attr('selected', 'selected');
    $('#' + name + 'month option[value=' + (sDate.getMonth() + 1) + ']').attr('selected', 'selected');
    $('#' + name + 'year option[value=' + (sDate.getFullYear()) + ']').attr('selected', 'selected');
  }
  var updatePicker = function(name)
  {
    var d = new Date(
      $('#' + name + 'year').val(),
      $('#' + name + 'month').val() - 1,
      $('#' + name + 'day').val()
    );
    $('#datepick_' + name).datepicker('option', 'defaultDate', d);
    var lang = $('html').attr('lang')
    if (lang != 'en')
    {
      $('#datepick_' + name).datepicker('option', $.datepicker.regional[lang]);
    }
    else
    {
      $('#datepick_' + name).datepicker('option', $.datepicker.regional['']);
    }
  }
  $('select[id$=year]').each(function(i) {
    // skip calendar, if not wanted
    if ($(this).hasClass('nocal'))
    {
      return;
    }
    var name = this.id.slice(0, -4)
    // default the position of the selects to today
    // except if: we are in filters, there is noauto class, there is a selected option
    if ($(this).parents('div.sf_admin_filter').length == 0 && !$(this).hasClass('noauto'))
    {
      if ($('#' + name + 'year option:selected').length == 0 || $('#' + name + 'year option:selected').val() == '')
      {
        var today = new Date();
        updateSelects(name, today.getTime());
      }
    }
    // update datepicker when change one of selects
    $('#' + name + 'day, #' + name + 'month, #' + name + 'year').change(function() {
      var name = this.id.slice(0, this.id.lastIndexOf('_')) + '_';
      updatePicker(name);
    });

    // calculate date ranges for datepicker
    var minYear = $(this).children(':eq(1)').val();
    var maxYear = $(this).children(':last').val();
    var minY = minYear > maxYear ? maxYear : minYear;
    var maxY = minYear < maxYear ? maxYear : minYear;

    // datepicker!
    $('<input style="width:0;height:0;border:0" id="datepick_' + name + '">').insertAfter(this).datepicker({
      buttonImage: '/images/calendar.png',
      buttonImageOnly: true,
      showOn: 'button',
      minDate: '01/01/' + minY,
      maxDate: '12/31/' + maxY,
      onSelect: function(date, inst) {
        updateSelects(name, date)
      }
    });
    updatePicker(name);
  });
});

