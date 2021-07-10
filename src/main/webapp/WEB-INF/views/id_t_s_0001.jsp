<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
    window.onload = function(){
        getMessageList();
    };
</script>

<head>
    <meta charset="utf-8">
    <title>JSON受信確認</title>
</head>
<body>
<p id="p1"></p>
<p id="p2"></p>
<p id="p3"></p>
</body>

<script type="text/javascript">
    $("#p0").text("");
    $("#p1").text("");
    $("#p2").text("");
    $("#p3").text("");

    //var jsonsample = "{ \"header\" : \"0001\", \"result\" : \"{\"resultcode\":\"\",\"message\":\"\"}\",\"body\" : {\"request\":{\"userid\": \"testuser\"}, \"response\":\"null\"} }";
    //var jsonsample = "{'header' : '0001', 'result' : { 'resultcode': '','message': ''}, 'body' : {'request':'{'userid':'testuser'}', 'response':''}";
    var jsonsample = {"header" : "0001"};

    function getMessageList() {
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/id00001",
            data: JSON.stringify(jsonsample),
            dataType:"json",
        })
            .done(function (data,textStatus,xhr){
                $("#p1").text(xhr.status);
                $("#p2").text(textStatus);
                $("#p3").text(JSON.stringify(data));

            })
            .fail(function (xhr,textStatus,errorThrown){
                $("#p1").text(xhr.status);
                $("#p2").text(textStatus);
                $("#p3").text(errorThrown);
            })
            .always(function (){});
    }
</script>

</html>
