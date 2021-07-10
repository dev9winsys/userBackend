<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
    window.onload = function(){
        getJSON_Recieve();
    };
</script>

<head>
    <meta charset="utf-8">
    <title>JSON受信確認</title>
</head>
<body>
<p id="p1"></p>
<p id="p2"></p>
</body>

<script type="text/javascript">
    $("#p1").text("");
    $("#p2").text("");

    var jsonsample

    function getJSON_Recieve() {
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/id00001",
            data: JSON.stringify(jsonsample),
            dataType:"json",
        })
            .done(function (data,textStatus,xhr){
                $("#p1").text(xhr.status);
                $("#p2").text(JSON.stringify(data));
            })
            .fail(function (xhr,textStatus,errorThrown){
                $("#p1").text(xhr.status);
            })
            .always(function (){});
    }
</script>

</html>
