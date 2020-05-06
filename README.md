# sis-parent
态势综合系统



无设备台站SQL：select id from t_station where id not in (select DISTINCT station_id from t_station_device);

依据台站归属更新设备归属SQL：

UPDATE t_device d1 INNER JOIN
(
	SELECT
		s.belongsto,
		d.id 
	FROM
		t_station s,
		t_station_device sd,
		t_device d 
	WHERE
		s.id = sd.station_id 
		AND sd.device_id = d.id 
) AS tmp
ON d1.id = tmp.id
SET d1.belongsto = tmp.belongsto