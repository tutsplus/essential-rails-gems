$(function() {
  $(".task_done").on("change", function() {
    var _this = $(this);
    $.post(
      _this.data("toggle-path"),
      { "_method": "patch" },
      function() {
      _this.parent().effect("highlight");
    });
  });
});
