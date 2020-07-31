<html>
<head>
    <title>坐标转换</title>

    <!--jquery-->
    <script src="//cdn.bootcss.com/jquery/3.1.0/jquery.min.js"></script>
    <!--bootstrap-->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <style>
        .textarea {
            width: 500px;
            height: 300px;
        }
    </style>

</head>
<body>
<div class="container-fluid">
    <div>
        转换类型：
        <select id="type">
            <option value="wgs2bd09">wgs84转bd09</option>
            <option value="wgs2utm">wgs84转墨卡托</option>
            <option value="utm2wgs">墨卡托转wgs84</option>
        </select>
        <input type="button" id="btnConvert" value="转换"/>
    </div>
    <div>
        原来坐标：(格式：经度,纬度;经度,纬度;经度,纬度;......;)
        <div>
            <textarea id="source" class="textarea"></textarea>
        </div>
    </div>
    <div>
        目标坐标：(格式：经度,纬度;经度,纬度;经度,纬度;......;)
        <div>
            <textarea id="target" class="textarea"></textarea>
        </div>
    </div>
</div>
</body>
</html>

<script type="text/javascript">

    $(document).ready(function () {
        $("#btnConvert").click(convert);
    });

    // 转换
    function convert() {
        var type = $("#type").val();
        var source = $.trim($("#source").val());

        if (source.length == 0) {
            alert("原来坐标不能为空");
            return;
        }

        var data = {};
        data.type = type;
        data.source = source;

        $.ajax({
            type: 'POST',
            url: "${request.contextPath}/api/coordinate/convert",
            dataType: "json",
            data: data,
            success: function (result) {
                if (!result.success) {
                    alert(result.message);
                }

                var values = "";
                var coords = result.data;
                for (var i = 0; i < coords.length; i++) {
                    var coord = coords[i];
                    values += coord.x + "," + coord.y + ";\n";
                }
                $("#target").val(values);
            }
        });
    }
</script>