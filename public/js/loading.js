var result = undefined;

var id = $('#target').data("id")

var prod = function() {
  $.get("/results/" + id, function(data) {
    if (data != "no results yet") {
      $('#message').remove();
      $('#target').append(data);
    } else {
      setTimeout(prod, 1000);
    };
  });;
};

prod();
