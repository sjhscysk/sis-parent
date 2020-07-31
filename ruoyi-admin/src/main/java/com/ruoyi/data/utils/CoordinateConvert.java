package com.ruoyi.data.utils;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * 坐标转换类
 *
 * @author afeey
 */
public class CoordinateConvert {

    /**
     * wgs84转百度坐标
     *
     * @param coordinate wgs84坐标
     * @return 百度坐标
     */
    public static Coordinate wgs2bd09(Coordinate coordinate) throws IOException {
        List<Coordinate> coordinates = new ArrayList<Coordinate>();
        coordinates.add(coordinate);
        List<Coordinate> targetList = wgs2bd09(coordinates);

        return targetList.isEmpty() ? null : targetList.get(0);
    }

    /**
     * @param coordinates
     * @return
     * @throws IOException
     */
    public static List<Coordinate> wgs2bd09(List<Coordinate> coordinates) throws IOException {

        List<Coordinate> targetList = new ArrayList<Coordinate>();
        if (coordinates.isEmpty()) {
            return targetList;
        }

        String coords = "";
        for (Coordinate coordinate : coordinates) {
            coords += ";" + coordinate.getX() + "," + coordinate.getY();
        }
        coords = coords.substring(1);

        // 调用转换
        String json = convert(coords);

        // 解析json
        ObjectMapper mapper = new ObjectMapper();
        JsonNode node = mapper.readTree(json);
        JsonNode result = node.get("result");
        for (JsonNode xy : result) {
            Coordinate coordinate = new Coordinate(xy.get("x").asDouble(), xy.get("y").asDouble());
            targetList.add(coordinate);
        }

        return targetList;
    }

    /**
     * wgs84转百度
     *
     * @param coords 坐标字符串。格式（114.21892734521,29.575429778924;114.21892734521,29.575429778924）
     * @return 返回结果<br/>
     * 格式：
     * {
     * status : 0,  //正常0，异常非0
     * result :[    //转换结果,与输入顺序一致
     * { x : 114.23075654746, y : 29.579087603387},
     * { x : 114.2307554671, y : 29.579086504325}
     * ]
     * }
     * @throws IOException 异常
     */
    public static String convert(String coords) throws IOException {
        String path = "http://api.map.baidu.com/geoconv/v1/?ak=f17t55QmbRYgyBpIGHNuyyhfX1hi0D5I&coords=" + coords;

        URL url = new URL(path);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setConnectTimeout(5 * 1000);
        InputStream inStream = conn.getInputStream();

        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = 0;
        while ((len = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, len);
        }
        //得到返回的结果
        return outStream.toString();
    }

    /**
     * 经纬度转墨卡托
     *
     * @param coordinates
     * @return 坐标列表
     */
    public static List<Coordinate> wgs2utm(List<Coordinate> coordinates) {
        List<Coordinate> targetList = new ArrayList<Coordinate>();
        for (Coordinate coordinate : coordinates) {
            Coordinate coord = wgs2utm(coordinate);
            targetList.add(coord);
        }
        return targetList;
    }

    /**
     * 墨卡托转经纬度
     *
     * @param coordinates
     * @return 坐标列表
     */
    public static List<Coordinate> utm2wgs(List<Coordinate> coordinates) {
        List<Coordinate> targetList = new ArrayList<Coordinate>();
        for (Coordinate coordinate : coordinates) {
            Coordinate coord = utm2wgs(coordinate);
            targetList.add(coord);
        }
        return targetList;
    }

    /**
     * 经纬度转墨卡托
     *
     * @param source 经纬度
     * @return 坐标点
     */
    public static Coordinate wgs2utm(Coordinate source) {
        double x = source.getX() * 20037508.34 / 180;
        double y = Math.log(Math.tan((90 + source.getY()) * Math.PI / 360)) / (Math.PI / 180);
        y = y * 20037508.34 / 180;
        return new Coordinate(x, y);
    }

    /**
     * 墨卡托转经纬度
     *
     * @param mercator 坐标点
     * @return 经纬度
     */
    public static Coordinate utm2wgs(Coordinate mercator) {
        double lng = mercator.getX() / 20037508.34 * 180;
        double lat = mercator.getY() / 20037508.34 * 180;
        lat = 180 / Math.PI * (2 * Math.atan(Math.exp(lat * Math.PI / 180)) - Math.PI / 2);
        return new Coordinate(lng, lat);
    }

}
