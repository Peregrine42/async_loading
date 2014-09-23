var result = undefined;

var id = $('#target').data("id")

var prod = function() {
  $.get("/pending_results/" + id, function(data) {
    if (data != "no results yet") {
      window.location = "../results/" + id;
    } else {
      setTimeout(prod, 1000);
    };
  });;
};

prod();
