$(document).ready(function () {
    $('#name_search').on('keyup',function(){
    $.ajax({
        url: 'testServlet',
        type: 'post',
        data:{
    name_search : $("#name_search").val()
        },
        success: function (data) {
            $("#playersTable").html(data);
        },
        error: function (xhr, ajaxOptions, thrownError) {
            var errorMsg = 'Ajax request failed: ' + xhr.responseText;
            $('#content').html(errorMsg);
        }
    });
    });
});
