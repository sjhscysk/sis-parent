<html>
<head>
    <title>轨迹生成</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <div id="map"></div>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div class="col-md-3">imei:</div>
                <div class="col-md-9"><input type="text" id="imei" value="868120135720370"/></div>
            </div>
            <div class="row">
                <div class="col-md-3">&nbsp;</div>
                <div class="col-md-9">
                    <input type="button" id="start" value="开始取点"/>
                    <input type="button" id="clear" value="清理" title="清理图层及数据"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" id="lnglats"></div>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="lngLat" value=""/>
</body>
</html>

<script src="//cdn.bootcss.com/jquery/3.1.0/jquery.min.js"></script>

<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://openlayers.org/en/v3.18.1/css/ol.css" type="text/css">
<script src="http://openlayers.org/en/v3.18.1/build/ol.js" type="text/javascript"></script>

<style type="text/css">
    body {
        margin: 0;
    }

    #map {
        width: 100%;
        height: 100%;
        margin: 0px;
        padding: 0px;
    }

    .row {
        margin: 5px;
    }
</style>

<script type="text/javascript">

    $(document).ready(function () {
        $("#start").click(function () {
            if ($.trim($("#imei").val()).length == 0) {
                alert("请输入IMEI");
                return;
            }

            if ($("#start").val() == "开始取点") {
                startGetPoint();
            } else {
                endGetPoint()
            }
        });

        $("#clear").click(function () {
            clearMap()
        });
    });

    var _lines = new Array();
    var _markers = new Array();
    var _lngLats = new Array();

    var osmLayer = new ol.layer.Tile({
        source: new ol.source.OSM()
    })

    var vectorLayer = new ol.layer.Vector({
        source: new ol.source.Vector()
    });

    var view = new ol.View({
        projection: 'EPSG:4326',
        center: [118.77149898285755, 31.978658506178405],
        zoom: 17
    });

    var map = new ol.Map({
        target: 'map',
        layers: [
            osmLayer,
            vectorLayer
        ],
        view: view,
        controls: ol.control.defaults({
            attribution: false
        }).extend([
            //new ol.control.FullScreen(),
            //new ol.control.MousePosition(),
            new ol.control.ScaleLine()
        ])
    });

    var mapClick = function (e) {
        var _lngLat = {};
        _lngLat.lng = e.coordinate[0];
        _lngLat.lat = e.coordinate[1];

        if (_lngLats.length > 0) {
            var lngLat = _lngLats[_lngLats.length - 1];
            var points = lngLat.lng + "," + lngLat.lat + ";" + _lngLat.lng + "," + _lngLat.lat + ";";
            showLine(points, "#436EEE");
        }
        _lngLats.push(_lngLat);
        showLngLat(_lngLat.lng, _lngLat.lat);
        savePoint(_lngLat.lng, _lngLat.lat);
    }

    // 添加地图点击事件
    function addMapClickEvent() {
        map.on('singleclick', mapClick);
    }

    // 移除地图点击事件
    function removeMapClickEvent() {
        map.un('singleclick', mapClick);
    }

    // 显示坐标点到地图
    function showPoint(lng, lat) {
        var markerStyle = new ol.style.Style({
            image: new ol.style.Icon({
                anchor: [0.5, 1],
                src: 'http://www.easyicon.net/api/resizeApi.php?id=1185658&size=16'
            })
        });

        var marker = new ol.Feature({
            type: 'icon',
            geometry: new ol.geom.Point([lng, lat])
        });

        marker.setStyle(markerStyle);
        vectorLayer.getSource().addFeature(marker);
        _markers.push(marker);
    }

    // 显示坐标到列表
    function showLngLat(lng, lat) {
        $("#lnglats").append('<p>' + lng + ',' + lat + '</p>');
    }

    // 显示折线
    function showLine(points, color) {
        var path = new Array();

        var pointArr = points.split(';');
        for (var i = 0; i < pointArr.length; i++) {
            if (pointArr[i].length == 0) {
                continue;
            }

            var lngLat = pointArr[i].split(',');
            var point = [];
            point.push(parseFloat(lngLat[0]));
            point.push(parseFloat(lngLat[1]));
            path.push(point);
        }

        //线要素
        var polyline = new ol.Feature({
            geometry: new ol.geom.LineString(path)
        });

        var lineStyle = new ol.style.Style({
            stroke: new ol.style.Stroke({
                color: 'red',
                width: 1
            })
        });

        polyline.setStyle(lineStyle);
        vectorLayer.getSource().addFeature(polyline);
    }

    // 开始取点
    function startGetPoint() {
        $('#start').val("停止取点");
        addMapClickEvent();
    }

    // 停止取点
    function endGetPoint() {
        $('#start').val("开始取点")
        removeMapClickEvent();
        _lngLats.length = 0;
    }

    // 清理地图
    function clearMap() {
        vectorLayer.getSource().clear();

        _markers.length = 0;
        _lines.length = 0;

        $("#lnglats").html("");
    }

    // 保存轨迹点
    function savePoint(lng, lat) {
        var data = {};
        data.imei = $("#imei").val();
        data.lng = lng;
        data.lat = lat;

        $.ajax({
            type: 'POST',
            url: "${request.contextPath}/api/track/save",
            dataType: "json",
            data: data,
            success: function (result) {
                if (!result.success) {
                    alert(result.message);
                }
            }
        });
    }
</script>
</html>
