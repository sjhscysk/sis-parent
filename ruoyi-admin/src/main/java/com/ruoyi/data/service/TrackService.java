package com.ruoyi.data.service;

import com.ruoyi.data.domain.Track;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 轨迹服务类
 *
 * @author afeey
 */
@Service
public class TrackService {

    private Map<String, Track> trackMap = new HashMap<String, Track>();

    /**
     * 保存轨迹
     *
     * @param track 轨迹点
     * @return 轨迹点
     */
    public Track save(Track track) {
        trackMap.put(track.getImei(), track);
        return track;
    }

    /**
     * 获取imeis最后的轨迹点
     *
     * @param imeis imei集合
     * @return 轨迹点集合
     */
    public List<Track> queryLastTracks(List<String> imeis) {
        List<Track> tracks = new ArrayList<Track>();

        for (String imei : imeis) {
            if (trackMap.containsKey(imei)) {
                tracks.add(trackMap.get(imei));
            } else {
                Track track = new Track();
                track.setImei(imei);
                tracks.add(track);
            }
        }
        return tracks;
    }
}
