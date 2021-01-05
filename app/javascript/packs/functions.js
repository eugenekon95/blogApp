$(function () {
  $("#comments_select").change(function () {
    $('#comments_show').submit()
  })
  $(".edit_comment").click(function () {
    $(this).parent().find('.update_comment').removeClass("invisible")
    $(this).addClass('invisible')
  })
})

