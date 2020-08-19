
$(document).ready ->
  $(".lang_selection").on "change", ->
    $.ajax
      url: "/faults/get_interviewers"
      type: "GET"
      dataType: "script"
      data:
        company_id: $('.lang_selection option:selected').val()