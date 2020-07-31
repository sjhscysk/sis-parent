-- --------------------------------------------------------
-- 主机:                           192.168.3.180
-- 服务器版本:                        5.7.31 - MySQL Community Server (GPL)
-- 服务器OS:                        Linux
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table sis.gen_table
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE IF NOT EXISTS `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- Dumping data for table sis.gen_table: ~13 rows (大约)
DELETE FROM `gen_table`;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(15, 't_device', '设备表', NULL, NULL, 'Device', 'crud', 'com.ruoyi.data', 'data', 'device', '设备', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(16, 't_enemy', '敌情目标表', NULL, NULL, 'Enemy', 'crud', 'com.ruoyi.data', 'data', 'enemy', '敌情目标', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(17, 't_equipsys', '装备系统表', NULL, NULL, 'Equipsys', 'crud', 'com.ruoyi.data', 'data', 'equipsys', '装备系统', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(18, 't_equipsys_detail', '装备系统详情表', NULL, NULL, 'EquipsysDetail', 'crud', 'com.ruoyi.data', 'data', 'detail', '装备系统详情', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(19, 't_station', '台站信息', NULL, NULL, 'Station', 'crud', 'com.ruoyi.data', 'data', 'station', '台站信息', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(20, 't_station_device', '台站设备表', NULL, NULL, 'StationDevice', 'crud', 'com.ruoyi.data', 'data', 'device', '台站设备', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(21, 't_station_import', '导入台站信息表', NULL, NULL, 'StationImport', 'crud', 'com.ruoyi.biz', 'biz', 'datatimport', '数据导入', 'xusisheng', '0', '/', '{"parentMenuId":"1132","treeName":"","treeParentCode":"","parentMenuName":"数据管理","treeCode":""}', 'admin', '2020-07-28 17:57:11', '', '2020-07-29 10:36:20', ''),
	(22, 't_subscribe', '订阅关系表', NULL, NULL, 'Subscribe', 'crud', 'com.ruoyi.data', 'data', 'subscribe', '订阅关系', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(23, 't_task', '作战任务基本信息表', NULL, NULL, 'Task', 'crud', 'com.ruoyi.data', 'data', 'task', '作战任务基本信息', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(24, 't_task_detail', '作战任务详情表', NULL, NULL, 'TaskDetail', 'crud', 'com.ruoyi.data', 'data', 'detail', '作战任务详情', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(25, 't_task_exec', '作战任务执行信息表', NULL, NULL, 'TaskExec', 'crud', 'com.ruoyi.data', 'data', 'exec', '作战任务执行信息', 'xusisheng', '0', '/', NULL, 'admin', '2020-07-28 17:57:11', '', NULL, NULL),
	(26, 't_ts_enemy', '敌情实时信息表', NULL, NULL, 'TsEnemy', 'crud', 'com.ruoyi.data', 'data', 'enemy', '实时敌情', 'xusisheng', '0', '/', '{"parentMenuId":"1062","treeName":"","treeParentCode":"","parentMenuName":"演示数据","treeCode":""}', 'admin', '2020-07-28 17:57:11', '', '2020-07-29 10:13:49', ''),
	(27, 't_ts_enemy_history', '敌情实时信息流水表', NULL, NULL, 'TsEnemyHistory', 'crud', 'com.ruoyi.biz', 'biz', 'playback', '态势回放', 'xusisheng', '0', '/', '{"parentMenuId":"1062","treeName":"","treeParentCode":"","parentMenuName":"演示数据","treeCode":""}', 'admin', '2020-07-28 17:57:11', '', '2020-07-29 13:28:02', '');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;

-- Dumping structure for table sis.gen_table_column
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE IF NOT EXISTS `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- Dumping data for table sis.gen_table_column: ~156 rows (大约)
DELETE FROM `gen_table_column`;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(160, '15', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(161, '15', 'sn', '编号', 'varchar(64)', 'String', 'sn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(162, '15', 'name', '名称', 'varchar(128)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(163, '15', 'belongsto', '率属单位', 'varchar(64)', 'String', 'belongsto', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(164, '15', 'owner', '率属方，0：军，1：民', 'int(8)', 'Integer', 'owner', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(165, '15', 'function', '设备类型（1：侦测，2：干扰，3：发射，4：侦测干扰，5：侦扰播，6：电源车）', 'int(8)', 'Integer', 'function', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(166, '15', 'status', '状态（1：开/0：关/-1：异常）', 'int(8)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(167, '15', 'classify', '分类（车载、机载、舰载、便携）', 'varchar(32)', 'String', 'classify', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-07-28 17:57:11', '', NULL),
	(168, '15', 'uptime', '开机时间', 'datetime', 'Date', 'uptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-07-28 17:57:11', '', NULL),
	(169, '15', 'location', '部署地', 'varchar(64)', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', '', NULL),
	(170, '15', 'longitude', '经度', 'varchar(16)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', '', NULL),
	(171, '15', 'latitude', '纬度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-07-28 17:57:11', '', NULL),
	(172, '15', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-07-28 17:57:11', '', NULL),
	(173, '15', 'level', '等级', 'int(4)', 'Integer', 'level', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-07-28 17:57:11', '', NULL),
	(174, '15', 'mtbf', '无故障运行时间', 'int(11)', 'Long', 'mtbf', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-07-28 17:57:11', '', NULL),
	(175, '15', 'mtbf_default', '默认无故障运行时间', 'int(11)', 'Long', 'mtbfDefault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-07-28 17:57:11', '', NULL),
	(176, '15', 'repare_time', '维修时间', 'int(11)', 'Long', 'repareTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-07-28 17:57:11', '', NULL),
	(177, '15', 'pic', '图片地址', 'varchar(255)', 'String', 'pic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-07-28 17:57:11', '', NULL),
	(178, '15', 'video', '视频地址', 'varchar(255)', 'String', 'video', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-07-28 17:57:11', '', NULL),
	(179, '16', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(180, '16', 'name', '名称（船舰飞机等）', 'varchar(64)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(181, '16', 'type', '目标类型（飞机/船舰）', 'varchar(32)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(182, '16', 'longitue', '经度', 'varchar(16)', 'String', 'longitue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(183, '16', 'latitude', '纬度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(184, '16', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(185, '16', 'speed', '速度', 'varchar(16)', 'String', 'speed', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(186, '16', 'direction', '方向', 'varchar(16)', 'String', 'direction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-07-28 17:57:11', '', NULL),
	(187, '16', 'bands', '频段', 'varchar(32)', 'String', 'bands', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-07-28 17:57:11', '', NULL),
	(188, '16', 'frequency', '频率', 'varchar(32)', 'String', 'frequency', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', '', NULL),
	(189, '16', 'power', '功率', 'varchar(16)', 'String', 'power', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', '', NULL),
	(190, '16', 'start_time', '开始时间', 'datetime', 'Date', 'startTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-07-28 17:57:11', '', NULL),
	(191, '16', 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2020-07-28 17:57:11', '', NULL),
	(192, '16', 'intention', '目标企图', 'varchar(255)', 'String', 'intention', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-07-28 17:57:11', '', NULL),
	(193, '16', 'status', '状态（0：失效，1：有效，地图能显示位置）', 'int(8)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 15, 'admin', '2020-07-28 17:57:11', '', NULL),
	(194, '16', 'pic', '图片地址', 'varchar(255)', 'String', 'pic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-07-28 17:57:11', '', NULL),
	(195, '16', 'video', '视频地址', 'varchar(255)', 'String', 'video', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-07-28 17:57:11', '', NULL),
	(196, '17', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(197, '17', 'sn', '编码', 'varchar(64)', 'String', 'sn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(198, '17', 'name', '系统名称', 'varchar(64)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(199, '17', 'belongsto', '率属单位', 'varchar(64)', 'String', 'belongsto', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(200, '17', 'owner', '率属方，0：军，1：民', 'int(8)', 'Integer', 'owner', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(201, '17', 'theater_commond', '东/西/南/北/中部战区', 'varchar(16)', 'String', 'theaterCommond', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(202, '17', 'type', '系统类型（1：一体化系统，2：一体化车组）', 'int(8)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(203, '17', 'status', '状态（1：开/0：关/-1：异常）', 'int(8)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2020-07-28 17:57:11', '', NULL),
	(204, '17', 'location', '部署地', 'varchar(64)', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-07-28 17:57:11', '', NULL),
	(205, '17', 'scope', '覆盖区域', 'varchar(64)', 'String', 'scope', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', '', NULL),
	(206, '17', 'longitude', '经度', 'varchar(16)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', '', NULL),
	(207, '17', 'latitude', '纬度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-07-28 17:57:11', '', NULL),
	(208, '17', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-07-28 17:57:11', '', NULL),
	(209, '17', 'pic', '图片地址', 'varchar(255)', 'String', 'pic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-07-28 17:57:11', '', NULL),
	(210, '17', 'video', '视频地址', 'varchar(255)', 'String', 'video', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-07-28 17:57:11', '', NULL),
	(211, '18', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(212, '18', 'equipsys_id', '系统ID', 'int(11)', 'Long', 'equipsysId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(213, '18', 'type', '装备类型（0：台站，1：设备，2：系统）', 'int(8)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(214, '18', 'equipment_id', '装备ID，与台站或设备表关联', 'int(11)', 'Long', 'equipmentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(215, '19', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(216, '19', 'sn', '编号，唯一性', 'varchar(64)', 'String', 'sn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(217, '19', 'name', '名称', 'varchar(64)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(218, '19', 'belongsto', '率属单位', 'varchar(64)', 'String', 'belongsto', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(219, '19', 'owner', '率属方，0：军，1：民', 'int(8)', 'Integer', 'owner', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(220, '19', 'theater_commond', '东/西/南/北/中部战区', 'varchar(16)', 'String', 'theaterCommond', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(221, '19', 'type', '台站类型（0：监测台，1：广播台，2：侦测台，3：干扰台，4：通信台，5：发射台，7：侦测干扰，8：侦扰播）', 'int(8)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(222, '19', 'status', '状态（1：开/0：关/-1：异常）', 'int(8)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2020-07-28 17:57:11', '', NULL),
	(223, '19', 'location', '部署地', 'varchar(64)', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-07-28 17:57:11', '', NULL),
	(224, '19', 'scope', '覆盖区域', 'varchar(64)', 'String', 'scope', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', '', NULL),
	(225, '19', 'longitude', '经度', 'varchar(16)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', '', NULL),
	(226, '19', 'latitude', '纬度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-07-28 17:57:11', '', NULL),
	(227, '19', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-07-28 17:57:11', '', NULL),
	(228, '19', 'channel_name', '频道名', 'varchar(64)', 'String', 'channelName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, 'admin', '2020-07-28 17:57:11', '', NULL),
	(229, '19', 'run_time', '运行时长（每日）', 'int(8)', 'Integer', 'runTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-07-28 17:57:11', '', NULL),
	(230, '19', 'language', '语言', 'varchar(32)', 'String', 'language', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-07-28 17:57:11', '', NULL),
	(231, '19', 'pic', '图片地址', 'varchar(255)', 'String', 'pic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-07-28 17:57:11', '', NULL),
	(232, '19', 'video', '视频地址', 'varchar(255)', 'String', 'video', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-07-28 17:57:11', '', NULL),
	(233, '20', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(234, '20', 'station_id', '台站ID', 'int(11)', 'Long', 'stationId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(235, '20', 'device_id', '设备ID', 'int(11)', 'Long', 'deviceId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(236, '21', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(237, '21', 'sn', '编号', 'varchar(64)', 'String', 'sn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(238, '21', 'name', '名称', 'varchar(64)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(239, '21', 'belongsto', '率属单位', 'varchar(64)', 'String', 'belongsto', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(240, '21', 'owner', '率属方', 'int(8)', 'Integer', 'owner', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'owner', 5, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(241, '21', 'theater_commond', '战区', 'varchar(16)', 'String', 'theaterCommond', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(242, '21', 'type', '类型', 'int(8)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'station_type', 7, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(243, '21', 'status', '状态', 'int(8)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'device_status', 8, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(244, '21', 'location', '部署地', 'varchar(64)', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(245, '21', 'scope', '覆盖区域', 'varchar(64)', 'String', 'scope', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(246, '21', 'longitude', '经度', 'varchar(16)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(247, '21', 'latitude', '纬度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(248, '21', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(249, '21', 'channel_name', '频道名', 'varchar(64)', 'String', 'channelName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(250, '21', 'run_time', '运行时长', 'int(8)', 'Integer', 'runTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(251, '21', 'language', '语言', 'varchar(32)', 'String', 'language', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(252, '21', 'pic', '图片地址', 'varchar(255)', 'String', 'pic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(253, '21', 'video', '视频地址', 'varchar(255)', 'String', 'video', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:36:20'),
	(254, '22', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(255, '22', 'feed_code', '源标识', 'varchar(64)', 'String', 'feedCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(256, '22', 'feed_name', '源名称', 'varchar(64)', 'String', 'feedName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(257, '22', 'data_code', '数据标识', 'varchar(64)', 'String', 'dataCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(258, '22', 'data_name', '数据名称', 'varchar(64)', 'String', 'dataName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(259, '22', 'subcategory', '数据子分类', 'varchar(32)', 'String', 'subcategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(260, '22', 'is_subscribe', '是否订阅，0：未订阅，1：已订阅', 'int(4)', 'Integer', 'isSubscribe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(261, '22', 'dt_subscribe', '订阅时间', 'datetime', 'Date', 'dtSubscribe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2020-07-28 17:57:11', '', NULL),
	(262, '22', 'dt_unsubscribe', '退订时间', 'datetime', 'Date', 'dtUnsubscribe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-07-28 17:57:11', '', NULL),
	(263, '23', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(264, '23', 'sn', '任务编码', 'varchar(32)', 'String', 'sn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(265, '23', 'name', '任务名称', 'varchar(64)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(266, '23', 'type', '任务类型（0：监测，1：干扰，2：广播，3：通信）', 'int(8)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(267, '23', 'purpose', '目的', 'varchar(255)', 'String', 'purpose', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(268, '23', 'region', '区域', 'varchar(64)', 'String', 'region', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(269, '23', 'source', '来源', 'varchar(64)', 'String', 'source', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(270, '23', 'start_time', '开始时间', 'datetime', 'Date', 'startTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2020-07-28 17:57:11', '', NULL),
	(271, '23', 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-07-28 17:57:11', '', NULL),
	(272, '23', 'description', '任务描述', 'varchar(255)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', '', NULL),
	(273, '23', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', '', NULL),
	(274, '23', 'status', '状态（0：未开始，1：进行中，2：已完成）', 'int(8)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 12, 'admin', '2020-07-28 17:57:11', '', NULL),
	(275, '23', 'pic', '图片地址', 'varchar(255)', 'String', 'pic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-07-28 17:57:11', '', NULL),
	(276, '23', 'video', '视频地址', 'varchar(255)', 'String', 'video', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-07-28 17:57:11', '', NULL),
	(277, '24', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(278, '24', 'task_id', '任务ID', 'int(11)', 'Long', 'taskId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(279, '24', 'exec_unit', '执行单位', 'varchar(64)', 'String', 'execUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(280, '24', 'equipment_type', '装备类型（1：系统，2：台站，3：设备）', 'int(8)', 'Integer', 'equipmentType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(281, '24', 'equipment_id', '参与装备ID，依据装备类型与不同表关联', 'int(11)', 'Long', 'equipmentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(282, '24', 'start_time', '开始时间', 'datetime', 'Date', 'startTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(283, '24', 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(284, '25', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', '', NULL),
	(285, '25', 'task_id', '任务ID', 'int(11)', 'Long', 'taskId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-07-28 17:57:11', '', NULL),
	(286, '25', 'detail_id', '任务详情ID', 'int(11)', 'Long', 'detailId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-07-28 17:57:11', '', NULL),
	(287, '25', 'dt_collect', '采集时间', 'datetime', 'Date', 'dtCollect', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-07-28 17:57:11', '', NULL),
	(288, '25', 'information', '执行信息', 'varchar(255)', 'String', 'information', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', '', NULL),
	(289, '25', 'latitude', '经度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', '', NULL),
	(290, '25', 'longitude', '纬度', 'varchar(16)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-07-28 17:57:11', '', NULL),
	(291, '25', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-07-28 17:57:11', '', NULL),
	(292, '25', 'speed', '速度', 'int(8)', 'Integer', 'speed', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-07-28 17:57:11', '', NULL),
	(293, '25', 'direction', '方向', 'varchar(32)', 'String', 'direction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', '', NULL),
	(294, '26', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(295, '26', 'create_time', '上报时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 2, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(296, '26', 'enemy_id', '敌情ID', 'int(11)', 'Long', 'enemyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(297, '26', 'longitue', '经度', 'varchar(16)', 'String', 'longitue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(298, '26', 'latitude', '纬度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(299, '26', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(300, '26', 'speed', '速度', 'varchar(16)', 'String', 'speed', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(301, '26', 'direction', '方向', 'varchar(16)', 'String', 'direction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(302, '26', 'bands', '频段', 'varchar(32)', 'String', 'bands', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(303, '26', 'frequency', '频率', 'varchar(32)', 'String', 'frequency', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(304, '26', 'power', '功率', 'varchar(16)', 'String', 'power', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 10:13:49'),
	(305, '27', 'id', '自增主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(306, '27', 'create_time', '上报时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 2, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(307, '27', 'enemy_id', '敌情ID', 'int(11)', 'Long', 'enemyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(308, '27', 'longitue', '经度', 'varchar(16)', 'String', 'longitue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(309, '27', 'latitude', '纬度', 'varchar(16)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(310, '27', 'altitude', '海拔', 'varchar(16)', 'String', 'altitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(311, '27', 'speed', '速度', 'varchar(16)', 'String', 'speed', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(312, '27', 'direction', '方向', 'varchar(16)', 'String', 'direction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(313, '27', 'bands', '频段', 'varchar(32)', 'String', 'bands', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(314, '27', 'frequency', '频率', 'varchar(32)', 'String', 'frequency', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02'),
	(315, '27', 'power', '功率', 'varchar(16)', 'String', 'power', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-28 17:57:11', NULL, '2020-07-29 13:28:02');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_blob_triggers
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_blob_triggers: ~0 rows (大约)
DELETE FROM `qrtz_blob_triggers`;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_calendars
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_calendars: ~0 rows (大约)
DELETE FROM `qrtz_calendars`;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_cron_triggers
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_cron_triggers: ~3 rows (大约)
DELETE FROM `qrtz_cron_triggers`;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` (`sched_name`, `trigger_name`, `trigger_group`, `cron_expression`, `time_zone_id`) VALUES
	('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai'),
	('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai'),
	('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_fired_triggers
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_fired_triggers: ~0 rows (大约)
DELETE FROM `qrtz_fired_triggers`;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_job_details
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_job_details: ~3 rows (大约)
DELETE FROM `qrtz_job_details`;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` (`sched_name`, `job_name`, `job_group`, `description`, `job_class_name`, `is_durable`, `is_nonconcurrent`, `is_update_data`, `requests_recovery`, `job_data`) VALUES
	('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', _binary 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001174735461736B2E74734E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740012E7B3BBE7BB9FE78AB6E68081E79B91E68EA774000133740001317800),
	('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', _binary 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001574735461736B2E7473506172616D7328277473272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740015E695B0E68DAEE6BA90E5AE9AE69C9FE6A380E69FA574000133740001317800),
	('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', _binary 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003874735461736B2E74734D756C7469706C65506172616D7328277473272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E8BF87E69C9FE695B0E68DAEE5AE9AE69C9FE5A484E7908674000133740001317800);
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_locks
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_locks: ~2 rows (大约)
DELETE FROM `qrtz_locks`;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` (`sched_name`, `lock_name`) VALUES
	('RuoyiScheduler', 'STATE_ACCESS'),
	('RuoyiScheduler', 'TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_paused_trigger_grps
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_paused_trigger_grps: ~0 rows (大约)
DELETE FROM `qrtz_paused_trigger_grps`;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_scheduler_state
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_scheduler_state: ~1 rows (大约)
DELETE FROM `qrtz_scheduler_state`;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` (`sched_name`, `instance_name`, `last_checkin_time`, `checkin_interval`) VALUES
	('RuoyiScheduler', 'DESKTOP-VM2VKAM1596184214950', 1596187806124, 15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_simple_triggers
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_simple_triggers: ~0 rows (大约)
DELETE FROM `qrtz_simple_triggers`;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_simprop_triggers
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_simprop_triggers: ~0 rows (大约)
DELETE FROM `qrtz_simprop_triggers`;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;

-- Dumping structure for table sis.qrtz_triggers
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sis.qrtz_triggers: ~3 rows (大约)
DELETE FROM `qrtz_triggers`;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`, `job_name`, `job_group`, `description`, `next_fire_time`, `prev_fire_time`, `priority`, `trigger_state`, `trigger_type`, `start_time`, `end_time`, `calendar_name`, `misfire_instr`, `job_data`) VALUES
	('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1596184220000, -1, 5, 'PAUSED', 'CRON', 1596184215000, 0, NULL, 2, _binary ''),
	('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1596184215000, -1, 5, 'PAUSED', 'CRON', 1596184215000, 0, NULL, 2, _binary ''),
	('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1596184220000, -1, 5, 'PAUSED', 'CRON', 1596184215000, 0, NULL, 2, _binary '');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;

-- Dumping structure for table sis.sys_config
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE IF NOT EXISTS `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- Dumping data for table sis.sys_config: ~4 rows (大约)
DELETE FROM `sys_config`;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
	(2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456'),
	(3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),
	(4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '是否开启注册用户功能');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;

-- Dumping structure for table sis.sys_dept
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- Dumping data for table sis.sys_dept: ~10 rows (大约)
DELETE FROM `sys_dept`;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(100, 0, '0', '态势综合', 0, '态势负责人', '15888888888', 'ts@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:19:25'),
	(101, 100, '0,100', '军委联指', 1, '军委联指负责人', '15888888888', 'jwlz@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:19:25'),
	(102, 100, '0,100', '广电总局', 2, '广电总局负责人', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:18:57'),
	(103, 101, '0,100,101', '技术部门', 1, '技术负责人', '15888888888', 'js@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:13:32'),
	(104, 101, '0,100,101', '协调部门', 2, '协调负责人', '15888888888', 'xt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:14:01'),
	(105, 101, '0,100,101', '指挥中心', 3, '指挥中心负责人', '15888888888', 'zh@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:15:07'),
	(106, 101, '0,100,101', '保证部门', 4, '保证负责人', '15888888888', 'bz@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:14:24'),
	(107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00'),
	(108, 102, '0,100,102', '保证部门', 1, '保证负责人', '15888888888', 'bz@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:15:24'),
	(109, 102, '0,100,102', '运维部门', 2, '运维负责人', '15888888888', 'yw@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:15:44');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;

-- Dumping structure for table sis.sys_dict_data
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE IF NOT EXISTS `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- Dumping data for table sis.sys_dict_data: ~81 rows (大约)
DELETE FROM `sys_dict_data`;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男'),
	(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女'),
	(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知'),
	(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单'),
	(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单'),
	(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
	(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态'),
	(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
	(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态'),
	(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组'),
	(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组'),
	(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是'),
	(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否'),
	(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知'),
	(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告'),
	(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
	(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态'),
	(18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作'),
	(19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作'),
	(20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作'),
	(21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作'),
	(22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作'),
	(23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作'),
	(24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作'),
	(25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作'),
	(26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作'),
	(27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作'),
	(28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
	(29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态'),
	(100, 1, '军方', '0', 'owner', '', 'primary', 'Y', '0', 'admin', '2020-04-29 17:40:30', 'admin', '2020-05-06 15:20:28', ''),
	(101, 2, '民方', '1', 'owner', '', 'info', 'Y', '0', 'admin', '2020-04-29 17:40:44', 'admin', '2020-05-06 15:20:23', ''),
	(102, 2, '监测台', '2', 'station_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:44:06', 'admin', '2020-05-25 13:23:31', ''),
	(103, 1, '广播台', '1', 'station_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:44:20', 'admin', '2020-05-25 13:23:38', ''),
	(104, 3, '侦测台', '3', 'station_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:44:32', 'admin', '2020-05-25 13:24:19', ''),
	(105, 4, '干扰台', '4', 'station_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:44:49', 'admin', '2020-05-25 13:24:26', ''),
	(106, 5, '通信台', '5', 'station_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:45:06', 'admin', '2020-05-25 13:24:38', ''),
	(107, 3, '异常', '-1', 'device_status', '', 'warning', 'Y', '0', 'admin', '2020-04-29 17:46:56', 'admin', '2020-05-04 14:16:11', ''),
	(108, 2, '关机', '1', 'device_status', '', 'info', 'Y', '0', 'admin', '2020-04-29 17:47:12', 'admin', '2020-05-06 15:21:29', ''),
	(109, 1, '开机', '2', 'device_status', '', 'primary', 'Y', '0', 'admin', '2020-04-29 17:47:24', 'admin', '2020-05-06 15:21:36', ''),
	(112, 1, '未开始', '0', 'task_status', '', 'default', 'Y', '0', 'admin', '2020-04-29 17:50:07', 'admin', '2020-05-06 15:21:51', ''),
	(113, 2, '进行中', '1', 'task_status', '', 'primary', 'Y', '0', 'admin', '2020-04-29 17:50:18', 'admin', '2020-05-06 15:21:57', ''),
	(114, 3, '已完成', '2', 'task_status', '', 'info', 'Y', '0', 'admin', '2020-04-29 17:50:28', 'admin', '2020-05-06 15:22:01', ''),
	(115, 1, '系统', '1', 'equipment_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:51:28', 'admin', '2020-05-25 14:34:25', ''),
	(116, 2, '台站', '2', 'equipment_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:51:48', 'admin', '2020-05-25 14:34:29', ''),
	(117, 3, '设备', '3', 'equipment_type', '', '', 'Y', '0', 'admin', '2020-04-29 17:52:01', 'admin', '2020-05-25 14:34:32', ''),
	(118, 1, '广播设备', '1', 'device_func', '#', '', 'Y', '0', 'admin', '2020-04-30 15:49:36', 'admin', '2020-05-25 13:26:35', ''),
	(119, 2, '监测设备', '2', 'device_func', '#', '', 'Y', '0', 'admin', '2020-04-30 15:49:49', 'admin', '2020-05-25 13:26:44', ''),
	(120, 3, '侦测设备', '3', 'device_func', '#', '', 'Y', '0', 'admin', '2020-04-30 15:50:08', 'admin', '2020-05-25 13:26:50', ''),
	(121, 2, '失效', '0', 'enemy_status', '#', 'info', 'Y', '0', 'admin', '2020-04-30 15:54:21', 'admin', '2020-05-06 15:21:06', ''),
	(122, 1, '有效', '1', 'enemy_status', '#', 'danger', 'Y', '0', 'admin', '2020-04-30 15:54:32', 'admin', '2020-05-06 15:21:01', ''),
	(123, 1, '监测', '0', 'task_type', NULL, NULL, 'Y', '0', 'admin', '2020-04-30 16:03:36', '', NULL, NULL),
	(124, 2, '干扰', '1', 'task_type', NULL, NULL, 'Y', '0', 'admin', '2020-04-30 16:03:45', '', NULL, NULL),
	(125, 3, '广播', '2', 'task_type', NULL, NULL, 'Y', '0', 'admin', '2020-04-30 16:04:10', '', NULL, NULL),
	(126, 4, '通信', '3', 'task_type', NULL, NULL, 'Y', '0', 'admin', '2020-04-30 16:04:21', '', NULL, NULL),
	(127, 6, '发射台', '6', 'station_type', '', '', 'Y', '0', 'admin', '2020-05-02 11:28:25', 'admin', '2020-05-25 13:24:46', ''),
	(129, 1, '侦测', '1', 'ability_type', NULL, NULL, 'Y', '0', 'admin', '2020-05-03 11:13:04', '', NULL, NULL),
	(131, 2, '干扰', '2', 'ability_type', NULL, NULL, 'Y', '0', 'admin', '2020-05-03 11:13:12', '', NULL, NULL),
	(133, 3, '发射', '3', 'ability_type', NULL, NULL, 'Y', '0', 'admin', '2020-05-03 11:13:22', '', NULL, NULL),
	(135, 7, '侦干一体', '7', 'device_func', '', 'info', 'Y', '0', 'admin', '2020-05-06 18:00:38', 'admin', '2020-05-25 13:27:06', ''),
	(136, 8, '侦扰播一体', '8', 'device_func', '', 'primary', 'Y', '0', 'admin', '2020-05-06 18:01:06', 'admin', '2020-05-25 13:27:20', ''),
	(137, 7, '侦干一体', '7', 'station_type', '', 'info', 'Y', '0', 'admin', '2020-05-06 18:01:52', 'admin', '2020-05-25 13:25:06', ''),
	(138, 8, '侦扰播一体', '8', 'station_type', '', 'primary', 'Y', '0', 'admin', '2020-05-06 18:02:17', 'admin', '2020-05-25 13:25:26', ''),
	(139, 80, '电源设备', '80', 'device_func', '', '', 'Y', '0', 'admin', '2020-05-06 18:04:16', 'admin', '2020-05-25 13:27:42', ''),
	(140, 1, '未订阅', '0', 'subscribe_status', '', 'default', 'Y', '0', 'admin', '2020-05-09 17:50:23', 'admin', '2020-05-09 17:50:50', ''),
	(141, 1, '已订阅', '1', 'subscribe_status', '', 'success', 'Y', '0', 'admin', '2020-05-09 17:50:35', 'admin', '2020-05-09 17:50:57', ''),
	(142, 1, '一体化系统', '1', 'equipsys_type', '', '', 'Y', '0', 'admin', '2020-05-18 09:32:19', 'admin', '2020-05-25 13:22:42', ''),
	(143, 2, '一体化车组', '2', 'equipsys_type', '', '', 'Y', '0', 'admin', '2020-05-18 09:32:31', 'admin', '2020-05-25 13:22:37', ''),
	(144, 4, '干扰设备', '4', 'device_func', NULL, NULL, 'Y', '0', 'admin', '2020-05-25 13:27:56', '', NULL, NULL),
	(145, 5, '通信设备', '5', 'device_func', NULL, NULL, 'Y', '0', 'admin', '2020-05-25 13:28:05', '', NULL, NULL),
	(146, 6, '发射设备', '6', 'device_func', NULL, NULL, 'Y', '0', 'admin', '2020-05-25 13:28:14', '', NULL, NULL),
	(147, 99, '其它台', '99', 'station_type', NULL, NULL, 'Y', '0', 'admin', '2020-05-25 13:28:48', '', NULL, NULL),
	(148, 99, '其它设备', '99', 'device_func', NULL, NULL, 'Y', '0', 'admin', '2020-05-25 13:30:49', '', NULL, NULL),
	(149, 1, '装备系统', 'equipsys', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 12:31:00', '', NULL, '装备系统'),
	(150, 2, '台站数据', 'station', 'sub_data_category', '', '', 'Y', '0', 'admin', '2020-07-14 12:31:17', 'admin', '2020-07-14 12:31:57', '台站数据'),
	(151, 3, '设备数据', 'device', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 12:31:33', '', NULL, '设备数据'),
	(152, 4, '任务数据', 'task', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 12:31:50', '', NULL, '任务数据'),
	(153, 5, '任务执行信息', 'task_exec', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 12:32:11', '', NULL, '任务执行信息'),
	(154, 6, '敌情数据', 'enemy', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 12:32:25', '', NULL, '敌情数据'),
	(155, 7, '气象数据', 'meteorology', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 12:32:38', '', NULL, '气象数据'),
	(156, 8, '电离层数据', 'ionosphere', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 12:32:50', '', NULL, '电离层数据'),
	(157, 9, '地图数据', 'map', 'sub_data_category', NULL, NULL, 'Y', '0', 'admin', '2020-07-14 15:19:47', '', NULL, '地图数据');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;

-- Dumping structure for table sis.sys_dict_type
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE IF NOT EXISTS `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- Dumping data for table sis.sys_dict_type: ~22 rows (大约)
DELETE FROM `sys_dict_type`;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表'),
	(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表'),
	(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表'),
	(4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表'),
	(5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表'),
	(6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表'),
	(7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表'),
	(8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表'),
	(9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表'),
	(10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表'),
	(100, '归属方', 'owner', '0', 'admin', '2020-04-29 17:38:57', '', NULL, '归属方列表'),
	(101, '台站类型', 'station_type', '0', 'admin', '2020-04-29 17:43:17', '', NULL, '台站类型列表'),
	(102, '设备状态', 'device_status', '0', 'admin', '2020-04-29 17:46:24', '', NULL, '设备状态列表'),
	(103, '任务状态', 'task_status', '0', 'admin', '2020-04-29 17:49:46', '', NULL, '任务状态列表'),
	(104, '装备类型', 'equipment_type', '0', 'admin', '2020-04-29 17:51:14', '', NULL, '装备类型列表'),
	(105, '设备功能', 'device_func', '0', 'admin', '2020-04-30 15:48:32', '', NULL, '设备功能列表'),
	(106, '敌方状态', 'enemy_status', '0', 'admin', '2020-04-30 15:53:40', 'admin', '2020-04-30 16:03:23', '敌方目标状态'),
	(107, '任务类型', 'task_type', '0', 'admin', '2020-04-30 16:03:15', '', NULL, '任务类型列表'),
	(109, '能力类型', 'ability_type', '0', 'admin', '2020-05-03 11:12:19', 'admin', '2020-05-03 11:12:30', '能力分类列表'),
	(111, '订阅状态', 'subscribe_status', '0', 'admin', '2020-05-09 17:49:32', '', NULL, '订阅状态列表'),
	(112, '装备系统类型', 'equipsys_type', '0', 'admin', '2020-05-18 09:31:48', '', NULL, '装备系统类型列表'),
	(113, '订阅数据类型', 'sub_data_category', '0', 'admin', '2020-07-14 12:29:42', '', NULL, '订阅数据类型');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;

-- Dumping structure for table sis.sys_job
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- Dumping data for table sis.sys_job: ~3 rows (大约)
DELETE FROM `sys_job`;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统状态监控', 'DEFAULT', 'tsTask.tsNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:23:43', ''),
	(2, '数据源定期检查', 'DEFAULT', 'tsTask.tsParams(\'ts\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:23:56', ''),
	(3, '过期数据定期处理', 'DEFAULT', 'tsTask.tsMultipleParams(\'ts\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:24:20', '');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;

-- Dumping structure for table sis.sys_job_log
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE IF NOT EXISTS `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- Dumping data for table sis.sys_job_log: ~0 rows (大约)
DELETE FROM `sys_job_log`;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;

-- Dumping structure for table sis.sys_logininfor
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE IF NOT EXISTS `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- Dumping data for table sis.sys_logininfor: ~21 rows (大约)
DELETE FROM `sys_logininfor`;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES
	(1, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-14 12:27:24'),
	(2, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-14 16:11:14'),
	(3, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-14 17:49:41'),
	(4, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-20 15:25:10'),
	(5, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-27 16:43:14'),
	(6, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-28 16:54:08'),
	(7, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-28 17:50:45'),
	(8, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-29 10:03:47'),
	(9, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-29 10:34:24'),
	(10, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-07-29 13:11:21'),
	(11, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-29 13:11:24'),
	(12, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-29 13:25:59'),
	(13, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-29 13:38:08'),
	(14, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-30 09:23:58'),
	(15, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-30 10:06:01'),
	(16, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-07-30 11:36:18'),
	(17, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-07-30 16:48:57'),
	(18, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-30 17:03:32'),
	(19, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-31 11:26:30'),
	(20, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-31 11:26:32'),
	(21, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-31 13:33:59');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;

-- Dumping structure for table sis.sys_menu
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1172 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- Dumping data for table sis.sys_menu: ~164 rows (大约)
DELETE FROM `sys_menu`;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录'),
	(2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录'),
	(3, '系统工具', 0, 3, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-31 13:34:08', '系统工具目录'),
	(100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单'),
	(101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单'),
	(102, '菜单管理', 1, 3, '/system/menu', 'menuItem', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-06 11:26:54', '菜单管理菜单'),
	(103, '部门管理', 1, 4, '/system/dept', 'menuItem', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 16:10:04', '部门管理菜单'),
	(104, '岗位管理', 1, 5, '/system/post', 'menuItem', 'C', '1', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-06 11:27:07', '岗位管理菜单'),
	(105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单'),
	(106, '参数设置', 1, 7, '/system/config', 'menuItem', 'C', '1', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-06 11:27:14', '参数设置菜单'),
	(107, '通知公告', 1, 8, '/system/notice', 'menuItem', 'C', '1', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-06 11:28:09', '通知公告菜单'),
	(108, '日志管理', 1, 9, '#', 'menuItem', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-06 11:28:02', '日志管理菜单'),
	(109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单'),
	(110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单'),
	(111, '数据监控', 2, 3, '/monitor/data', 'menuItem', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-29 15:11:22', '数据监控菜单'),
	(112, '服务监控', 2, 3, '/monitor/server', 'menuItem', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-29 15:11:32', '服务监控菜单'),
	(113, '表单构建', 3, 1, '/tool/build', 'menuItem', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-31 13:38:33', '表单构建菜单'),
	(114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单'),
	(115, '系统接口', 3, 3, '/tool/swagger', 'menuItem', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-31 13:38:42', '系统接口菜单'),
	(500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单'),
	(501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单'),
	(1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(1062, '演示数据', 0, 4, '#', 'menuItem', 'M', '0', NULL, 'fa fa-database', 'admin', '2020-04-30 10:19:15', '', NULL, ''),
	(1069, '装备系统', 1062, 1, '/data/equipsys', '', 'C', '0', 'data:equipsys:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '装备系统菜单'),
	(1070, '装备系统查询', 1069, 1, '#', '', 'F', '0', 'data:equipsys:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1071, '装备系统新增', 1069, 2, '#', '', 'F', '0', 'data:equipsys:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1072, '装备系统修改', 1069, 3, '#', '', 'F', '0', 'data:equipsys:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1073, '装备系统删除', 1069, 4, '#', '', 'F', '0', 'data:equipsys:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1074, '装备系统导出', 1069, 5, '#', '', 'F', '0', 'data:equipsys:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1075, '设备信息', 1062, 3, '/data/device', 'menuItem', 'C', '0', 'data:device:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-30 17:39:44', '设备菜单'),
	(1076, '设备查询', 1075, 1, '#', '', 'F', '0', 'data:device:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1077, '设备新增', 1075, 2, '#', '', 'F', '0', 'data:device:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1078, '设备修改', 1075, 3, '#', '', 'F', '0', 'data:device:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1079, '设备删除', 1075, 4, '#', '', 'F', '0', 'data:device:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1080, '设备导出', 1075, 5, '#', '', 'F', '0', 'data:device:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1081, '作战任务', 1062, 4, '/data/task', 'menuItem', 'C', '0', 'data:task:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-30 17:39:38', '作战任务基本信息菜单'),
	(1082, '作战任务查询', 1081, 1, '#', '', 'F', '0', 'data:task:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1083, '作战任务新增', 1081, 2, '#', '', 'F', '0', 'data:task:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1084, '作战任务修改', 1081, 3, '#', '', 'F', '0', 'data:task:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1085, '作战任务删除', 1081, 4, '#', '', 'F', '0', 'data:task:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1086, '作战任务导出', 1081, 5, '#', '', 'F', '0', 'data:task:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1087, '敌情目标', 1062, 5, '/data/enemy', 'menuItem', 'C', '0', 'data:enemy:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-30 17:39:32', '敌情目标菜单'),
	(1088, '敌情目标查询', 1087, 1, '#', '', 'F', '0', 'data:enemy:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1089, '敌情目标新增', 1087, 2, '#', '', 'F', '0', 'data:enemy:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1090, '敌情目标修改', 1087, 3, '#', '', 'F', '0', 'data:enemy:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1091, '敌情目标删除', 1087, 4, '#', '', 'F', '0', 'data:enemy:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1092, '敌情目标导出', 1087, 5, '#', '', 'F', '0', 'data:enemy:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1093, '设备资源', 1062, 7, '#', 'menuItem', 'M', '1', '', 'fa fa-cogs', 'admin', '2020-04-30 16:56:19', 'admin', '2020-05-04 08:14:39', ''),
	(1094, '侦测资源', 1093, 1, '/data/detection', 'menuItem', 'C', '0', 'data:detection:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-30 17:01:52', '侦测菜单'),
	(1095, '侦测查询', 1094, 1, '#', '', 'F', '0', 'data:detection:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1096, '侦测新增', 1094, 2, '#', '', 'F', '0', 'data:detection:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1097, '侦测修改', 1094, 3, '#', '', 'F', '0', 'data:detection:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1098, '侦测删除', 1094, 4, '#', '', 'F', '0', 'data:detection:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1099, '侦测导出', 1094, 5, '#', '', 'F', '0', 'data:detection:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1100, '干扰资源', 1093, 2, '/data/disturbed', 'menuItem', 'C', '0', 'data:disturbed:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-30 17:02:03', '干扰功能菜单'),
	(1101, '干扰功能查询', 1100, 1, '#', '', 'F', '0', 'data:disturbed:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1102, '干扰功能新增', 1100, 2, '#', '', 'F', '0', 'data:disturbed:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1103, '干扰功能修改', 1100, 3, '#', '', 'F', '0', 'data:disturbed:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1104, '干扰功能删除', 1100, 4, '#', '', 'F', '0', 'data:disturbed:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1105, '干扰功能导出', 1100, 5, '#', '', 'F', '0', 'data:disturbed:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1106, '发射资源', 1093, 3, '/data/transmitting', 'menuItem', 'C', '0', 'data:transmitting:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-05-06 16:19:16', '发射系统菜单'),
	(1107, '发射系统查询', 1106, 1, '#', '', 'F', '0', 'data:transmitting:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1108, '发射系统新增', 1106, 2, '#', '', 'F', '0', 'data:transmitting:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1109, '发射系统修改', 1106, 3, '#', '', 'F', '0', 'data:transmitting:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1110, '发射系统删除', 1106, 4, '#', '', 'F', '0', 'data:transmitting:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1111, '发射系统导出', 1106, 5, '#', '', 'F', '0', 'data:transmitting:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1112, '台站信息', 1062, 2, '/data/station', 'menuItem', 'C', '0', 'data:station:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-30 17:39:51', '台站信息菜单'),
	(1113, '台站信息查询', 1112, 1, '#', '', 'F', '0', 'data:station:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1114, '台站信息新增', 1112, 2, '#', '', 'F', '0', 'data:station:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1115, '台站信息修改', 1112, 3, '#', '', 'F', '0', 'data:station:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1116, '台站信息删除', 1112, 4, '#', '', 'F', '0', 'data:station:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1117, '台站信息导出', 1112, 5, '#', '', 'F', '0', 'data:station:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1121, '设备能力', 1062, 6, '/data/ability', 'menuItem', 'C', '0', 'data:ability:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-05-03 11:23:55', '设备能力菜单'),
	(1123, '设备能力查询', 1121, 1, '#', '', 'F', '0', 'data:ability:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1125, '设备能力新增', 1121, 2, '#', '', 'F', '0', 'data:ability:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1127, '设备能力修改', 1121, 3, '#', '', 'F', '0', 'data:ability:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1129, '设备能力删除', 1121, 4, '#', '', 'F', '0', 'data:ability:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1131, '设备能力导出', 1121, 5, '#', '', 'F', '0', 'data:ability:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1132, '数据管理', 0, 5, '#', 'menuItem', 'M', '0', NULL, 'fa fa-paw', 'admin', '2020-07-14 11:13:34', '', NULL, ''),
	(1139, '订阅关系', 1132, 1, '/biz/subscribe', '', 'C', '0', 'biz:subscribe:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '订阅关系菜单'),
	(1140, '订阅关系查询', 1139, 1, '#', '', 'F', '0', 'biz:subscribe:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1141, '订阅关系新增', 1139, 2, '#', '', 'F', '0', 'biz:subscribe:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1142, '订阅关系修改', 1139, 3, '#', '', 'F', '0', 'biz:subscribe:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1143, '订阅关系删除', 1139, 4, '#', '', 'F', '0', 'biz:subscribe:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1144, '订阅关系导出', 1139, 5, '#', '', 'F', '0', 'biz:subscribe:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1151, '数据导入', 1132, 2, '/biz/datatimport', '', 'C', '0', 'biz:datatimport:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '数据导入菜单'),
	(1152, '数据导入查询', 1151, 1, '#', '', 'F', '0', 'biz:datatimport:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1153, '数据导入新增', 1151, 2, '#', '', 'F', '0', 'biz:datatimport:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1154, '数据导入修改', 1151, 3, '#', '', 'F', '0', 'biz:datatimport:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1155, '数据导入删除', 1151, 4, '#', '', 'F', '0', 'biz:datatimport:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1156, '数据导入导出', 1151, 5, '#', '', 'F', '0', 'biz:datatimport:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1157, '态势回放', 1132, 3, '/biz/playback', '', 'C', '0', 'biz:playback:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '态势回放菜单'),
	(1158, '态势回放查询', 1157, 1, '#', '', 'F', '0', 'biz:playback:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1159, '态势回放新增', 1157, 2, '#', '', 'F', '0', 'biz:playback:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1160, '态势回放修改', 1157, 3, '#', '', 'F', '0', 'biz:playback:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1161, '态势回放删除', 1157, 4, '#', '', 'F', '0', 'biz:playback:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1162, '态势回放导出', 1157, 5, '#', '', 'F', '0', 'biz:playback:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1166, '轨迹生成', 1062, 8, '/data/trackgen', '', 'C', '0', 'data:trackgen:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '轨迹生成菜单'),
	(1167, '轨迹生成查询', 1166, 1, '#', '', 'F', '0', 'data:trackgen:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1168, '轨迹生成新增', 1166, 2, '#', '', 'F', '0', 'data:trackgen:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1169, '轨迹生成修改', 1166, 3, '#', '', 'F', '0', 'data:trackgen:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1170, '轨迹生成删除', 1166, 4, '#', '', 'F', '0', 'data:trackgen:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', ''),
	(1171, '轨迹生成导出', 1166, 5, '#', '', 'F', '0', 'data:trackgen:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;

-- Dumping structure for table sis.sys_notice
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE IF NOT EXISTS `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- Dumping data for table sis.sys_notice: ~2 rows (大约)
DELETE FROM `sys_notice`;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员'),
	(2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;

-- Dumping structure for table sis.sys_oper_log
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE IF NOT EXISTS `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- Dumping data for table sis.sys_oper_log: ~135 rows (大约)
DELETE FROM `sys_oper_log`;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES
	(1, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "11" ],\n  "deviceIds" : [ "3,5,19" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:06:10'),
	(2, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "13" ],\n  "deviceIds" : [ "9,13,23,25" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:06:21'),
	(3, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "16" ],\n  "deviceIds" : [ "7,29" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:06:30'),
	(4, '设备', 4, 'com.ruoyi.web.controller.data.StationController.cancelDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/cancelAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "11" ],\n  "deviceIds" : [ "3,5,19" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:07:04'),
	(5, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "11" ],\n  "deviceIds" : [ "3,11" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:07:16'),
	(6, '设备', 4, 'com.ruoyi.web.controller.data.StationController.cancelDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/cancelAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "13" ],\n  "deviceIds" : [ "9,13,23,25" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:07:22'),
	(7, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "13" ],\n  "deviceIds" : [ "9,13,25" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:07:34'),
	(8, '设备', 4, 'com.ruoyi.web.controller.data.StationController.cancelDevice()', 'POST', 1, 'admin', '研发部门', '/data/station/device/cancel', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "13" ],\n  "deviceId" : [ "25" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:07:56'),
	(9, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "15" ],\n  "deviceIds" : [ "25" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:08:07'),
	(10, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "23" ],\n  "deviceIds" : [ "15,17" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:08:19'),
	(11, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "17" ],\n  "deviceIds" : [ "5,19" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:08:58'),
	(12, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "18" ],\n  "deviceIds" : [ "23" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:09:16'),
	(13, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "34" ],\n  "deviceIds" : [ "27,31" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:09:33'),
	(14, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "19" ],\n  "deviceIds" : [ "33,21" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:09:45'),
	(15, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "20" ],\n  "deviceIds" : [ "34,32" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:10:00'),
	(16, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "30" ],\n  "deviceIds" : [ "35" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:10:06'),
	(17, '设备', 4, 'com.ruoyi.web.controller.data.StationController.cancelDevice()', 'POST', 1, 'admin', '研发部门', '/data/station/device/cancel', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "30" ],\n  "deviceId" : [ "35" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:10:10'),
	(18, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "32" ],\n  "deviceIds" : [ "35,36" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:10:25'),
	(19, '设备', 4, 'com.ruoyi.web.controller.data.StationController.selectDeviceAll()', 'POST', 1, 'admin', '研发部门', '/data/station/device/selectAll', '127.0.0.1', '内网IP', '{\n  "stationId" : [ "33" ],\n  "deviceIds" : [ "41" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-13 17:10:36'),
	(20, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_customer" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 10:42:38'),
	(21, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "49" ],\n  "tableName" : [ "t_customer" ],\n  "tableComment" : [ "客户关系" ],\n  "className" : [ "Customer" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "466" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "null" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "467" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "null" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "name" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "LIKE" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "468" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "null" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "company" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "469" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "null" ],\n  "columns[3].javaType" : [ "Date" ],\n  "columns[3].javaField" : [ "starttime" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "datetime" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "470" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "null" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaFi', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 11:10:27'),
	(22, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "44" ],\n  "tableName" : [ "t_subscribe" ],\n  "tableComment" : [ "订阅关系表" ],\n  "className" : [ "Subscribe" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "408" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "409" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "订阅源标识" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "feedCode" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "410" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "订阅源名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "feedName" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "411" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "订阅数据标识" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "dataCode" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "412" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "订阅数据名称" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : [ "dataName" ],\n  "columns[4].isInsert" : [ "1" ]', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 11:11:04'),
	(23, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_customer,t_subscribe" ]\n}', 'null', 0, NULL, '2020-07-14 11:11:15'),
	(24, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  "parentId" : [ "0" ],\n  "menuType" : [ "M" ],\n  "menuName" : [ "数据管理" ],\n  "url" : [ "" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "" ],\n  "orderNum" : [ "5" ],\n  "icon" : [ "fa fa-paw" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 11:13:34'),
	(25, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  "dictName" : [ "订阅数据类型" ],\n  "dictType" : [ "sub_data_category" ],\n  "status" : [ "0" ],\n  "remark" : [ "订阅数据类型" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:29:42'),
	(26, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "装备系统" ],\n  "dictValue" : [ "equipsys" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "1" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "装备系统" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:31:00'),
	(27, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "台站数据" ],\n  "dictValue" : [ "station" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "1" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "台站数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:31:17'),
	(28, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "设备数据" ],\n  "dictValue" : [ "device" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "3" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "设备数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:31:33'),
	(29, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "任务数据" ],\n  "dictValue" : [ "task" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "4" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "任务数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:31:51'),
	(30, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\n  "dictCode" : [ "150" ],\n  "dictLabel" : [ "台站数据" ],\n  "dictValue" : [ "station" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "2" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "台站数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:31:57'),
	(31, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "任务执行信息" ],\n  "dictValue" : [ "task_exec" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "5" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "任务执行信息" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:32:11'),
	(32, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "敌情数据" ],\n  "dictValue" : [ "enemy" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "6" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "敌情数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:32:25'),
	(33, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "气象数据" ],\n  "dictValue" : [ "meteorology" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "7" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "气象数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:32:38'),
	(34, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "电离层数据" ],\n  "dictValue" : [ "ionosphere" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "8" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "电离层数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 12:32:50'),
	(35, '订阅管理', 10, 'com.ruoyi.webservice.endpoint.SubscribeEndpoint.subscribe()', 'POST', 1, NULL, NULL, '/ws/subscribe', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sub_status\' in \'field list\'\n### The error may exist in file [/Users/xusisheng/workspace-aw/sis-parent/ruoyi-admin/target/classes/mapper/biz/SubscribeMapper.xml]\n### The error may involve com.ruoyi.project.biz.subscribe.mapper.SubscribeMapper.selectSubscribeList-Inline\n### The error occurred while setting parameters\n### SQL: select id, feed_code, feed_name, data_code, data_name, data_category, sub_status, dt_subscribe, dt_unsubscribe from t_subscribe                WHERE  feed_code = ?             and data_code = ?                          and sub_status = ?\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sub_status\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'sub_status\' in \'field list\'', '2020-07-14 15:15:47'),
	(36, '订阅管理', 10, 'com.ruoyi.webservice.endpoint.SubscribeEndpoint.subscribe()', 'POST', 1, NULL, NULL, '/ws/subscribe', '127.0.0.1', '内网IP', '{ }', '{\n  "code" : 0,\n  "message" : "success",\n  "data" : null\n}', 0, NULL, '2020-07-14 15:18:46'),
	(37, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "地图数据" ],\n  "dictValue" : [ "map" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "9" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "地图数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 15:19:47'),
	(38, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  "dictLabel" : [ "车次数据" ],\n  "dictValue" : [ "train" ],\n  "dictType" : [ "sub_data_category" ],\n  "cssClass" : [ "" ],\n  "dictSort" : [ "10" ],\n  "listClass" : [ "" ],\n  "isDefault" : [ "Y" ],\n  "status" : [ "0" ],\n  "remark" : [ "车次数据" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 15:20:06'),
	(39, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "49" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 15:25:02'),
	(40, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_train,t_customer" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 15:25:08'),
	(41, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "51" ],\n  "tableName" : [ "t_train" ],\n  "tableComment" : [ "车次信息表" ],\n  "className" : [ "Train" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "476" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "477" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "车次代码" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "trainCode" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "478" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "始发站" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "startStation" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "479" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "始发时间" ],\n  "columns[3].javaType" : [ "Date" ],\n  "columns[3].javaField" : [ "startTime" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "datetime" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "480" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "到达站" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaF', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 15:25:22'),
	(42, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "50" ],\n  "tableName" : [ "t_customer" ],\n  "tableComment" : [ "客户关系表" ],\n  "className" : [ "Customer" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "471" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "472" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "姓名" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "name" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "LIKE" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "473" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "公司" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "company" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "474" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "时间" ],\n  "columns[3].javaType" : [ "Date" ],\n  "columns[3].javaField" : [ "starttime" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "datetime" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "475" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "卡号" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : ', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 15:25:31'),
	(43, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_customer,t_train,t_subscribe" ]\n}', 'null', 0, NULL, '2020-07-14 15:25:44'),
	(44, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "1145" ],\n  "parentId" : [ "1132" ],\n  "menuType" : [ "C" ],\n  "menuName" : [ "车次信息" ],\n  "url" : [ "/biz/train" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "biz:train:view" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "#" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 15:27:25'),
	(45, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "44" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 16:17:20'),
	(46, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_subscribe" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 16:17:26'),
	(47, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "52" ],\n  "tableName" : [ "t_subscribe" ],\n  "tableComment" : [ "订阅关系表" ],\n  "className" : [ "Subscribe" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "482" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "483" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "订阅源标识" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "feedCode" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "484" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "订阅源名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "feedName" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "485" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "订阅数据标识" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "dataCode" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "486" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "订阅数据名称" ],\n  "columns[4].javaType" : [ "String" ],\n  "colum', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 16:17:44'),
	(48, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "52" ],\n  "tableName" : [ "t_subscribe" ],\n  "tableComment" : [ "订阅关系表" ],\n  "className" : [ "Subscribe" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "482" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "483" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "源标识" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "feedCode" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "484" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "源名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "feedName" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "485" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "数据标识" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "dataCode" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "486" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "数据名称" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].ja', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 16:28:32'),
	(49, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "52" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 17:49:50'),
	(50, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_subscribe" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 17:49:57'),
	(51, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "53" ],\n  "tableName" : [ "t_subscribe" ],\n  "tableComment" : [ "订阅关系表" ],\n  "className" : [ "Subscribe" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "491" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "492" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "源标识" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "feedCode" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "493" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "源名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "feedName" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "494" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "数据标识" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "dataCode" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "495" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "数据名称" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].ja', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 17:50:39'),
	(52, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_subscribe', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-14 17:51:08'),
	(53, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "53" ],\n  "tableName" : [ "t_subscribe" ],\n  "tableComment" : [ "订阅关系表" ],\n  "className" : [ "Subscribe" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "491" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "492" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "源标识" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "feedCode" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "493" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "源名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "feedName" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "494" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "数据标识" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "dataCode" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "495" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "数据名称" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].ja', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-14 17:59:52'),
	(54, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_subscribe', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-14 18:00:14'),
	(55, '作战任务基本信息', 2, 'com.ruoyi.web.controller.data.TaskController.editSave()', 'POST', 1, 'admin', '研发部门', '/data/task/edit', '127.0.0.1', '内网IP', '{\n  "id" : [ "3" ],\n  "sn" : [ "1003" ],\n  "name" : [ "日常监测04" ],\n  "type" : [ "0" ],\n  "purpose" : [ "监控南海区域无线信号" ],\n  "region" : [ "南海海域空域" ],\n  "source" : [ "上级指示" ],\n  "startTime" : [ "2020-05-25" ],\n  "endTime" : [ "2020-05-30" ],\n  "description" : [ "监控南海区域无线信号" ],\n  "remarks" : [ "" ],\n  "status" : [ "1" ],\n  "pic" : [ "" ],\n  "video" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 15:25:28'),
	(56, '作战任务基本信息', 2, 'com.ruoyi.web.controller.data.TaskController.editSave()', 'POST', 1, 'admin', '研发部门', '/data/task/edit', '127.0.0.1', '内网IP', '{\n  "id" : [ "2" ],\n  "sn" : [ "1002" ],\n  "name" : [ "干扰南海方向" ],\n  "type" : [ "1" ],\n  "purpose" : [ "干扰南海方向非法电磁目标" ],\n  "region" : [ "南海方向" ],\n  "source" : [ "上级单位" ],\n  "startTime" : [ "2020-07-01" ],\n  "endTime" : [ "2020-07-20" ],\n  "description" : [ "干扰南海方向非法电磁目标" ],\n  "remarks" : [ "" ],\n  "status" : [ "1" ],\n  "pic" : [ "" ],\n  "video" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:08:36'),
	(57, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "103" ],\n  "parentId" : [ "1" ],\n  "menuType" : [ "C" ],\n  "menuName" : [ "部门管理" ],\n  "url" : [ "/system/dept" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "system:dept:view" ],\n  "orderNum" : [ "4" ],\n  "icon" : [ "#" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:10:04'),
	(58, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "100" ],\n  "parentId" : [ "0" ],\n  "parentName" : [ "无" ],\n  "deptName" : [ "态势综合" ],\n  "orderNum" : [ "0" ],\n  "leader" : [ "态势负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "ts@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:11:32'),
	(59, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "101" ],\n  "parentId" : [ "100" ],\n  "parentName" : [ "态势综合" ],\n  "deptName" : [ "态势总体单位" ],\n  "orderNum" : [ "1" ],\n  "leader" : [ "态势总体负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "zt@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:12:06'),
	(60, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "102" ],\n  "parentId" : [ "100" ],\n  "parentName" : [ "态势综合" ],\n  "deptName" : [ "态势综合分中心" ],\n  "orderNum" : [ "2" ],\n  "leader" : [ "分中心负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "fzx@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:12:34'),
	(61, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "101" ],\n  "parentId" : [ "100" ],\n  "parentName" : [ "态势综合" ],\n  "deptName" : [ "态势综合中心" ],\n  "orderNum" : [ "1" ],\n  "leader" : [ "态势总体负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "zt@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:12:53'),
	(62, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "103" ],\n  "parentId" : [ "101" ],\n  "parentName" : [ "态势综合中心" ],\n  "deptName" : [ "技术部门" ],\n  "orderNum" : [ "1" ],\n  "leader" : [ "技术负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "js@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:13:32'),
	(63, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "104" ],\n  "parentId" : [ "101" ],\n  "parentName" : [ "态势综合中心" ],\n  "deptName" : [ "协调部门" ],\n  "orderNum" : [ "2" ],\n  "leader" : [ "协调负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "xt@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:14:01'),
	(64, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "106" ],\n  "parentId" : [ "101" ],\n  "parentName" : [ "态势综合中心" ],\n  "deptName" : [ "保证部门" ],\n  "orderNum" : [ "4" ],\n  "leader" : [ "保证负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "bz@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:14:24'),
	(65, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "105" ],\n  "parentId" : [ "101" ],\n  "parentName" : [ "态势综合中心" ],\n  "deptName" : [ "指挥中心" ],\n  "orderNum" : [ "3" ],\n  "leader" : [ "指挥中心负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "zh@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:15:07'),
	(66, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "108" ],\n  "parentId" : [ "102" ],\n  "parentName" : [ "态势综合分中心" ],\n  "deptName" : [ "保证部门" ],\n  "orderNum" : [ "1" ],\n  "leader" : [ "保证负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "bz@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:15:24'),
	(67, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "109" ],\n  "parentId" : [ "102" ],\n  "parentName" : [ "态势综合分中心" ],\n  "deptName" : [ "运维部门" ],\n  "orderNum" : [ "2" ],\n  "leader" : [ "运维负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "yw@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:15:44'),
	(68, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "102" ],\n  "parentId" : [ "100" ],\n  "parentName" : [ "态势综合" ],\n  "deptName" : [ "广电总局" ],\n  "orderNum" : [ "2" ],\n  "leader" : [ "广电总局负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "gd@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:18:57'),
	(69, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\n  "deptId" : [ "101" ],\n  "parentId" : [ "100" ],\n  "parentName" : [ "态势综合" ],\n  "deptName" : [ "军委联指" ],\n  "orderNum" : [ "1" ],\n  "leader" : [ "军委联指负责人" ],\n  "phone" : [ "15888888888" ],\n  "email" : [ "jwlz@qq.com" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:19:25'),
	(70, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "1133" ],\n  "parentId" : [ "1132" ],\n  "menuType" : [ "C" ],\n  "menuName" : [ "客户关系" ],\n  "url" : [ "/biz/customer" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "biz:customer:view" ],\n  "orderNum" : [ "2" ],\n  "icon" : [ "#" ],\n  "visible" : [ "1" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:20:02'),
	(71, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "1145" ],\n  "parentId" : [ "1132" ],\n  "menuType" : [ "C" ],\n  "menuName" : [ "车辆管理" ],\n  "url" : [ "/biz/train" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "biz:train:view" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "#" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:20:19'),
	(72, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "3" ],\n  "parentId" : [ "0" ],\n  "menuType" : [ "M" ],\n  "menuName" : [ "系统工具" ],\n  "url" : [ "#" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "fa fa-bars" ],\n  "visible" : [ "1" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:20:47'),
	(73, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "1" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "定时监控" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "ryTask.ryNoParams" ],\n  "cronExpression" : [ "0/10 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:21:31'),
	(74, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "2" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "数据源检查" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "ryTask.ryParams(\'ry\')" ],\n  "cronExpression" : [ "0/15 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:21:59'),
	(75, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "3" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "过期数据定期处理" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)" ],\n  "cronExpression" : [ "0/20 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:22:38'),
	(76, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "1" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "系统状态监控" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "ryTask.ryNoParams" ],\n  "cronExpression" : [ "0/10 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:22:49'),
	(77, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "2" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "数据源定期检查" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "ryTask.ryParams(\'ry\')" ],\n  "cronExpression" : [ "0/15 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:22:57'),
	(78, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "1" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "系统状态监控" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "tsTask.tsNoParams" ],\n  "cronExpression" : [ "0/10 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:23:43'),
	(79, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "2" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "数据源定期检查" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "tsTask.tsParams(\'ts\')" ],\n  "cronExpression" : [ "0/15 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:23:56'),
	(80, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "3" ],\n  "updateBy" : [ "admin" ],\n  "jobName" : [ "过期数据定期处理" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "invokeTarget" : [ "tsTask.tsMultipleParams(\'ts\', true, 2000L, 316.50D, 100)" ],\n  "cronExpression" : [ "0/20 * * * * ?" ],\n  "misfirePolicy" : [ "3" ],\n  "concurrent" : [ "1" ],\n  "status" : [ "1" ],\n  "remark" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:24:06'),
	(81, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "3" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "status" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:24:17'),
	(82, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "3" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "status" : [ "1" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:24:20'),
	(83, '订阅管理', 10, 'com.ruoyi.webservice.endpoint.SubscribeEndpoint.subscribe()', 'POST', 1, NULL, NULL, '/ws/subscribe', '127.0.0.1', '内网IP', '{ }', '{\n  "code" : 0,\n  "message" : "success",\n  "data" : null\n}', 0, NULL, '2020-07-20 16:36:28'),
	(84, '订阅管理', 10, 'com.ruoyi.webservice.endpoint.SubscribeEndpoint.subscribe()', 'POST', 1, NULL, NULL, '/ws/subscribe', '127.0.0.1', '内网IP', '{ }', '{\n  "code" : 0,\n  "message" : "success",\n  "data" : null\n}', 0, NULL, '2020-07-20 16:42:04'),
	(85, '订阅管理', 11, 'com.ruoyi.webservice.endpoint.SubscribeEndpoint.unsubscribe()', 'POST', 1, NULL, NULL, '/ws/subscribe', '127.0.0.1', '内网IP', '{ }', '{\n  "code" : 0,\n  "message" : "success",\n  "data" : null\n}', 0, NULL, '2020-07-20 16:42:24'),
	(86, '车次管理', 6, 'com.ruoyi.biz.controller.TrainController.loadin()', 'POST', 1, 'admin', '研发部门', '/biz/train/import', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "恭喜您，数据已全部导入成功！共 25 条，数据如下：<br/>1、车次 K592 导入成功<br/>2、车次 K1010 导入成功<br/>3、车次 1044 导入成功<br/>4、车次 K378/K375 导入成功<br/>5、车次 K1009 导入成功<br/>6、车次 K170 导入成功<br/>7、车次 1043 导入成功<br/>8、车次 T175 导入成功<br/>9、车次 T38/T35 导入成功<br/>10、车次 K119 导入成功<br/>11、车次 K915 导入成功<br/>12、车次 K9662 导入成功<br/>13、车次 K169 导入成功<br/>14、车次 K226/K227 导入成功<br/>15、车次 K134/K131 导入成功<br/>16、车次 T207 导入成功<br/>17、车次 Z55 导入成功<br/>18、车次 T9205 导入成功<br/>19、车次 K889 导入成功<br/>20、车次 1085 导入成功<br/>21、车次 1718/1719 导入成功<br/>22、车次 1717/1720 导入成功<br/>23、车次 K2062 导入成功<br/>24、车次 7516/7517 导入成功<br/>25、车次 K2058/K2059 导入成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:43:54'),
	(87, '列车时刻', 3, 'com.ruoyi.biz.controller.TrainController.remove()', 'POST', 1, 'admin', '研发部门', '/biz/train/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:44:12'),
	(88, '敌情目标', 1, 'com.ruoyi.web.controller.data.EnemyController.addSave()', 'POST', 1, 'admin', '研发部门', '/data/enemy/add', '127.0.0.1', '内网IP', '{\n  "name" : [ "A舰队" ],\n  "type" : [ "船舰" ],\n  "longitue" : [ "116.686137" ],\n  "latitude" : [ "20.996358" ],\n  "altitude" : [ "" ],\n  "speed" : [ "8" ],\n  "direction" : [ "135" ],\n  "bands" : [ "" ],\n  "frequency" : [ "MW550kHz" ],\n  "power" : [ "2000kw" ],\n  "startTime" : [ "2020-07-20" ],\n  "endTime" : [ "2020-07-23" ],\n  "intention" : [ "南沙群岛上空侦查" ],\n  "status" : [ "1" ],\n  "pic" : [ "" ],\n  "video" : [ "" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-20 16:47:19'),
	(89, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "3" ],\n  "parentId" : [ "0" ],\n  "menuType" : [ "M" ],\n  "menuName" : [ "系统工具" ],\n  "url" : [ "#" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "fa fa-bars" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-28 16:54:28'),
	(90, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_device,t_device_ability,t_enemy,t_equipsys,t_equipsys_detail,t_station_device,t_station,t_station_import,t_subscribe,t_task,t_task_detail,t_task_exec,t_ts_enemy,t_ts_enemy_history" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-28 17:53:40'),
	(91, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '技术部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "8,1,2,3,4,5,6,7,9,10" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-28 17:55:37'),
	(92, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '技术部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "11,12,13,14" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-28 17:55:42'),
	(93, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_device,t_enemy,t_equipsys,t_equipsys_detail,t_station_device,t_station,t_station_import,t_subscribe,t_task,t_task_detail,t_task_exec,t_ts_enemy,t_ts_enemy_history" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-28 17:57:12'),
	(94, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_station_import,t_ts_enemy,t_ts_enemy_history" ]\n}', 'null', 0, NULL, '2020-07-28 17:59:56'),
	(95, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "21" ],\n  "tableName" : [ "t_station_import" ],\n  "tableComment" : [ "导入台站信息表" ],\n  "className" : [ "StationImport" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "236" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "237" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "编号" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "sn" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "238" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "name" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "239" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "率属单位" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "belongsto" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "240" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "率属方" ],\n  "columns[4].javaType" : [ "Integer" ],\n  "columns[4].ja', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:05:50'),
	(96, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "26" ],\n  "tableName" : [ "t_ts_enemy" ],\n  "tableComment" : [ "敌情实时信息表" ],\n  "className" : [ "TsEnemy" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "294" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "295" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "上报时间" ],\n  "columns[1].javaType" : [ "Date" ],\n  "columns[1].javaField" : [ "createTime" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "datetime" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "296" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "敌情ID" ],\n  "columns[2].javaType" : [ "Long" ],\n  "columns[2].javaField" : [ "enemyId" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "297" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "经度" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "longitue" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "298" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "纬度" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : [ "latitude" ],\n  "columns[4].isInsert" : [ "1" ],\n  "columns[4].isEdit" : [ "1" ],\n  "columns', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:06:12'),
	(97, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "27" ],\n  "tableName" : [ "t_ts_enemy_history" ],\n  "tableComment" : [ "敌情实时信息流水表" ],\n  "className" : [ "TsEnemyHistory" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "305" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "306" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "上报时间" ],\n  "columns[1].javaType" : [ "Date" ],\n  "columns[1].javaField" : [ "createTime" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "datetime" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "307" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "敌情ID" ],\n  "columns[2].javaType" : [ "Long" ],\n  "columns[2].javaField" : [ "enemyId" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "308" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "经度" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "longitue" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "309" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "纬度" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : [ "latitude" ],\n  "columns[4].isInsert" : [ "1" ],\n  "columns[4].isEdit" : [ ', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:06:22'),
	(98, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_station_import,t_ts_enemy,t_ts_enemy_history" ]\n}', 'null', 0, NULL, '2020-07-29 10:06:31'),
	(99, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_station_import,t_ts_enemy,t_ts_enemy_history" ]\n}', 'null', 0, NULL, '2020-07-29 10:07:27'),
	(100, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "21" ],\n  "tableName" : [ "t_station_import" ],\n  "tableComment" : [ "导入台站信息表" ],\n  "className" : [ "StationImport" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "236" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "237" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "编号" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "sn" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "238" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "name" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "239" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "率属单位" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "belongsto" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "240" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "率属方" ],\n  "columns[4].javaType" : [ "Integer" ],\n  "columns[4].ja', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:10:30'),
	(101, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "26" ],\n  "tableName" : [ "t_ts_enemy" ],\n  "tableComment" : [ "敌情实时信息表" ],\n  "className" : [ "TsEnemy" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "294" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "295" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "上报时间" ],\n  "columns[1].javaType" : [ "Date" ],\n  "columns[1].javaField" : [ "createTime" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "datetime" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "296" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "敌情ID" ],\n  "columns[2].javaType" : [ "Long" ],\n  "columns[2].javaField" : [ "enemyId" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "297" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "经度" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "longitue" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "298" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "纬度" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : [ "latitude" ],\n  "columns[4].isInsert" : [ "1" ],\n  "columns[4].isEdit" : [ "1" ],\n  "columns', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:11:31'),
	(102, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "27" ],\n  "tableName" : [ "t_ts_enemy_history" ],\n  "tableComment" : [ "敌情实时信息流水表" ],\n  "className" : [ "TsEnemyHistory" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "305" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "306" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "上报时间" ],\n  "columns[1].javaType" : [ "Date" ],\n  "columns[1].javaField" : [ "createTime" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "datetime" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "307" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "敌情ID" ],\n  "columns[2].javaType" : [ "Long" ],\n  "columns[2].javaField" : [ "enemyId" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "308" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "经度" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "longitue" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "309" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "纬度" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : [ "latitude" ],\n  "columns[4].isInsert" : [ "1" ],\n  "columns[4].isEdit" : [ ', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:12:11'),
	(103, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "26" ],\n  "tableName" : [ "t_ts_enemy" ],\n  "tableComment" : [ "敌情实时信息表" ],\n  "className" : [ "TsEnemy" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "294" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "295" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "上报时间" ],\n  "columns[1].javaType" : [ "Date" ],\n  "columns[1].javaField" : [ "createTime" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "datetime" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "296" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "敌情ID" ],\n  "columns[2].javaType" : [ "Long" ],\n  "columns[2].javaField" : [ "enemyId" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "297" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "经度" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "longitue" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "298" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "纬度" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : [ "latitude" ],\n  "columns[4].isInsert" : [ "1" ],\n  "columns[4].isEdit" : [ "1" ],\n  "columns', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:13:49'),
	(104, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_station_import,t_ts_enemy,t_ts_enemy_history" ]\n}', 'null', 0, NULL, '2020-07-29 10:14:15'),
	(105, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "21" ],\n  "tableName" : [ "t_station_import" ],\n  "tableComment" : [ "导入台站信息表" ],\n  "className" : [ "StationImport" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "236" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "237" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "编号" ],\n  "columns[1].javaType" : [ "String" ],\n  "columns[1].javaField" : [ "sn" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].isEdit" : [ "1" ],\n  "columns[1].isList" : [ "1" ],\n  "columns[1].isQuery" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "input" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "238" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "名称" ],\n  "columns[2].javaType" : [ "String" ],\n  "columns[2].javaField" : [ "name" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "LIKE" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "239" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "率属单位" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "belongsto" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "240" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "率属方" ],\n  "columns[4].javaType" : [ "Integer" ],\n  "columns[4].ja', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:36:20'),
	(106, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_station_import,t_ts_enemy_history,t_ts_enemy" ]\n}', 'null', 0, NULL, '2020-07-29 10:36:39'),
	(107, '数据导入', 5, 'com.ruoyi.biz.controller.StationImportController.export()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/export', '127.0.0.1', '内网IP', '{\n  "name" : [ "" ],\n  "belongsto" : [ "" ],\n  "owner" : [ "" ],\n  "type" : [ "" ],\n  "orderByColumn" : [ "" ],\n  "isAsc" : [ "asc" ]\n}', '{\n  "msg" : "cb6558cb-e4fb-46a6-a91d-8f56f47b8086_datatimport.xlsx",\n  "code" : 0\n}', 0, NULL, '2020-07-29 10:56:37'),
	(108, '导入数据', 6, 'com.ruoyi.biz.controller.StationImportController.loadin()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/import', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "恭喜您，数据已全部导入成功！共 17 条，数据如下：<br/>台站 福州调频站 导入成功<br/>台站 厦门调频站 导入成功<br/>台站 xxx监测台 导入成功<br/>台站 645发射台 导入成功<br/>台站 678发射台 导入成功<br/>台站 324侦测台 导入成功<br/>台站 XXX干扰台 导入成功<br/>台站 东方干扰台 导入成功<br/>台站 824台发射 导入成功<br/>台站 552台发射 导入成功<br/>台站 641台发射 导入成功<br/>台站 751台发射 导入成功<br/>台站 YTH琼海阵地 导入成功<br/>台站 YTH文昌市 导入成功<br/>台站 LJ系统台 导入成功<br/>台站 HJ系统台 导入成功<br/>台站 三沙侦测台 导入成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 11:07:55'),
	(109, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "2100005,2100006,2200001,2120001,2120002,2220001,2320001,2320002,2100001,2100002,2100003,2400001,2410001,2400002,2400003,2400004" ]\n}', '{\n  "msg" : "操作失败",\n  "code" : 500\n}', 0, NULL, '2020-07-29 11:16:54'),
	(110, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "2100005,2100006,2200001,2120001,2120002,2220001,2320001,2320002,2100001,2100002,2100003,2400001,2410001,2400002,2400003,2400004" ]\n}', '{\n  "msg" : "操作失败",\n  "code" : 500\n}', 0, NULL, '2020-07-29 11:17:58'),
	(111, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "2100005,2100006,2200001,2120001,2120002,2220001,2320001,2320002,2100001,2100002" ]\n}', '{\n  "msg" : "操作失败",\n  "code" : 500\n}', 0, NULL, '2020-07-29 11:18:11'),
	(112, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "2100005,2100006,2200001,2120001,2120002,2220001,2320001,2320002,2100001,2100002" ]\n}', '{\n  "msg" : "操作失败",\n  "code" : 500\n}', 0, NULL, '2020-07-29 11:20:21'),
	(113, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "1,2,3,4,5,6,7,8,9,10" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 11:21:42'),
	(114, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "11,12,13,14,15,16,17" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 11:21:48'),
	(115, '导入数据', 6, 'com.ruoyi.biz.controller.StationImportController.loadin()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/import', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "恭喜您，数据已全部导入成功！共 17 条，数据如下：<br/>福州调频站 导入成功<br/>厦门调频站 导入成功<br/>xxx监测台 导入成功<br/>645发射台 导入成功<br/>678发射台 导入成功<br/>324侦测台 导入成功<br/>XXX干扰台 导入成功<br/>东方干扰台 导入成功<br/>824台发射 导入成功<br/>552台发射 导入成功<br/>641台发射 导入成功<br/>751台发射 导入成功<br/>YTH琼海阵地 导入成功<br/>YTH文昌市 导入成功<br/>LJ系统台 导入成功<br/>HJ系统台 导入成功<br/>三沙侦测台 导入成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 11:22:07'),
	(116, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 11:22:33'),
	(117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "3" ],\n  "parentId" : [ "0" ],\n  "menuType" : [ "M" ],\n  "menuName" : [ "系统工具" ],\n  "url" : [ "#" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "fa fa-bars" ],\n  "visible" : [ "1" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 13:11:50'),
	(118, '导入数据', 6, 'com.ruoyi.biz.controller.StationImportController.loadin()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/import', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "恭喜您，数据已全部导入成功！共 17 条，数据如下：<br/>福州调频站 导入成功<br/>厦门调频站 导入成功<br/>xxx监测台 导入成功<br/>645发射台 导入成功<br/>678发射台 导入成功<br/>324侦测台 导入成功<br/>XXX干扰台 导入成功<br/>东方干扰台 导入成功<br/>824台发射 导入成功<br/>552台发射 导入成功<br/>641台发射 导入成功<br/>751台发射 导入成功<br/>YTH琼海阵地 导入成功<br/>YTH文昌市 导入成功<br/>LJ系统台 导入成功<br/>HJ系统台 导入成功<br/>三沙侦测台 导入成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 13:12:28'),
	(119, '数据导入', 3, 'com.ruoyi.biz.controller.StationImportController.remove()', 'POST', 1, 'admin', '技术部门', '/biz/datatimport/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 13:12:40'),
	(120, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "3" ],\n  "parentId" : [ "0" ],\n  "menuType" : [ "M" ],\n  "menuName" : [ "系统工具" ],\n  "url" : [ "#" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "fa fa-bars" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 13:26:14'),
	(121, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '技术部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  "tableId" : [ "27" ],\n  "tableName" : [ "t_ts_enemy_history" ],\n  "tableComment" : [ "敌情实时信息流水表" ],\n  "className" : [ "TsEnemyHistory" ],\n  "functionAuthor" : [ "xusisheng" ],\n  "remark" : [ "" ],\n  "columns[0].columnId" : [ "305" ],\n  "columns[0].sort" : [ "1" ],\n  "columns[0].columnComment" : [ "自增主键" ],\n  "columns[0].javaType" : [ "Long" ],\n  "columns[0].javaField" : [ "id" ],\n  "columns[0].isInsert" : [ "1" ],\n  "columns[0].queryType" : [ "EQ" ],\n  "columns[0].htmlType" : [ "input" ],\n  "columns[0].dictType" : [ "" ],\n  "columns[1].columnId" : [ "306" ],\n  "columns[1].sort" : [ "2" ],\n  "columns[1].columnComment" : [ "上报时间" ],\n  "columns[1].javaType" : [ "Date" ],\n  "columns[1].javaField" : [ "createTime" ],\n  "columns[1].isInsert" : [ "1" ],\n  "columns[1].queryType" : [ "EQ" ],\n  "columns[1].htmlType" : [ "datetime" ],\n  "columns[1].dictType" : [ "" ],\n  "columns[2].columnId" : [ "307" ],\n  "columns[2].sort" : [ "3" ],\n  "columns[2].columnComment" : [ "敌情ID" ],\n  "columns[2].javaType" : [ "Long" ],\n  "columns[2].javaField" : [ "enemyId" ],\n  "columns[2].isInsert" : [ "1" ],\n  "columns[2].isEdit" : [ "1" ],\n  "columns[2].isList" : [ "1" ],\n  "columns[2].isQuery" : [ "1" ],\n  "columns[2].queryType" : [ "EQ" ],\n  "columns[2].htmlType" : [ "input" ],\n  "columns[2].dictType" : [ "" ],\n  "columns[3].columnId" : [ "308" ],\n  "columns[3].sort" : [ "4" ],\n  "columns[3].columnComment" : [ "经度" ],\n  "columns[3].javaType" : [ "String" ],\n  "columns[3].javaField" : [ "longitue" ],\n  "columns[3].isInsert" : [ "1" ],\n  "columns[3].isEdit" : [ "1" ],\n  "columns[3].isList" : [ "1" ],\n  "columns[3].isQuery" : [ "1" ],\n  "columns[3].queryType" : [ "EQ" ],\n  "columns[3].htmlType" : [ "input" ],\n  "columns[3].dictType" : [ "" ],\n  "columns[4].columnId" : [ "309" ],\n  "columns[4].sort" : [ "5" ],\n  "columns[4].columnComment" : [ "纬度" ],\n  "columns[4].javaType" : [ "String" ],\n  "columns[4].javaField" : [ "latitude" ],\n  "columns[4].isInsert" : [ "1" ],\n  "columns[4].isEdit" : [ ', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 13:28:02'),
	(122, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  "tables" : [ "t_ts_enemy_history,t_ts_enemy" ]\n}', 'null', 0, NULL, '2020-07-29 13:28:14'),
	(123, '调度日志', 3, 'com.ruoyi.quartz.controller.SysJobLogController.remove()', 'POST', 1, 'admin', '技术部门', '/monitor/jobLog/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "1" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 14:39:28'),
	(124, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.clearCache()', 'GET', 1, 'admin', '技术部门', '/system/dict/clearCache', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 14:39:53'),
	(125, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "111" ],\n  "parentId" : [ "2" ],\n  "menuType" : [ "C" ],\n  "menuName" : [ "数据监控" ],\n  "url" : [ "/monitor/data" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "monitor:data:view" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "#" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 15:11:22'),
	(126, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "112" ],\n  "parentId" : [ "2" ],\n  "menuType" : [ "C" ],\n  "menuName" : [ "服务监控" ],\n  "url" : [ "/monitor/server" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "monitor:server:view" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "#" ],\n  "visible" : [ "0" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 15:11:32'),
	(127, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  "menuId" : [ "3" ],\n  "parentId" : [ "0" ],\n  "menuType" : [ "M" ],\n  "menuName" : [ "系统工具" ],\n  "url" : [ "#" ],\n  "target" : [ "menuItem" ],\n  "perms" : [ "" ],\n  "orderNum" : [ "3" ],\n  "icon" : [ "fa fa-bars" ],\n  "visible" : [ "1" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-29 15:14:48'),
	(128, '字典数据', 3, 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'POST', 1, 'admin', '技术部门', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\n  "ids" : [ "158" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-07-30 10:23:23'),
	(129, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "1062" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "轨迹生成" ],\r\n  "url" : [ "/data/trackgen" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "8" ],\r\n  "icon" : [ "fa fa-location-arrow" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-31 13:19:59'),
	(130, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "3" ],\r\n  "parentId" : [ "0" ],\r\n  "menuType" : [ "M" ],\r\n  "menuName" : [ "系统工具" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "3" ],\r\n  "icon" : [ "fa fa-bars" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-31 13:34:08'),
	(131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '技术部门', '/tool/gen/download/t_device', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-31 13:34:34'),
	(132, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "113" ],\r\n  "parentId" : [ "3" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "表单构建" ],\r\n  "url" : [ "/tool/build" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "tool:build:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-31 13:38:33'),
	(133, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "115" ],\r\n  "parentId" : [ "3" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "系统接口" ],\r\n  "url" : [ "/tool/swagger" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "tool:swagger:view" ],\r\n  "orderNum" : [ "3" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-31 13:38:42'),
	(134, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "1062" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "轨迹生成" ],\r\n  "url" : [ "/data/trackgen" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "8" ],\r\n  "icon" : [ "fa fa-location-arrow" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-31 13:47:11'),
	(135, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '技术部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "1165" ],\r\n  "parentId" : [ "1062" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "轨迹生成" ],\r\n  "url" : [ "/data/trackgen" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "data:trackgen:view" ],\r\n  "orderNum" : [ "8" ],\r\n  "icon" : [ "fa fa-location-arrow" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-31 13:47:46');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;

-- Dumping structure for table sis.sys_post
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE IF NOT EXISTS `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- Dumping data for table sis.sys_post: ~4 rows (大约)
DELETE FROM `sys_post`;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', ''),
	(4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;

-- Dumping structure for table sis.sys_role
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- Dumping data for table sis.sys_role: ~2 rows (大约)
DELETE FROM `sys_role`;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员'),
	(2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-06 12:34:12', '普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;

-- Dumping structure for table sis.sys_role_dept
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE IF NOT EXISTS `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- Dumping data for table sis.sys_role_dept: ~3 rows (大约)
DELETE FROM `sys_role_dept`;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES
	(2, 100),
	(2, 101),
	(2, 105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;

-- Dumping structure for table sis.sys_role_menu
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- Dumping data for table sis.sys_role_menu: ~135 rows (大约)
DELETE FROM `sys_role_menu`;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 100),
	(2, 101),
	(2, 102),
	(2, 103),
	(2, 104),
	(2, 105),
	(2, 106),
	(2, 107),
	(2, 108),
	(2, 109),
	(2, 110),
	(2, 114),
	(2, 500),
	(2, 501),
	(2, 1000),
	(2, 1001),
	(2, 1002),
	(2, 1003),
	(2, 1004),
	(2, 1005),
	(2, 1006),
	(2, 1007),
	(2, 1008),
	(2, 1009),
	(2, 1010),
	(2, 1011),
	(2, 1012),
	(2, 1013),
	(2, 1014),
	(2, 1015),
	(2, 1016),
	(2, 1017),
	(2, 1018),
	(2, 1019),
	(2, 1020),
	(2, 1021),
	(2, 1022),
	(2, 1023),
	(2, 1024),
	(2, 1025),
	(2, 1026),
	(2, 1027),
	(2, 1028),
	(2, 1029),
	(2, 1030),
	(2, 1031),
	(2, 1032),
	(2, 1033),
	(2, 1034),
	(2, 1035),
	(2, 1036),
	(2, 1037),
	(2, 1038),
	(2, 1039),
	(2, 1040),
	(2, 1041),
	(2, 1042),
	(2, 1043),
	(2, 1044),
	(2, 1045),
	(2, 1046),
	(2, 1047),
	(2, 1048),
	(2, 1049),
	(2, 1050),
	(2, 1051),
	(2, 1052),
	(2, 1053),
	(2, 1054),
	(2, 1055),
	(2, 1056),
	(2, 1057),
	(2, 1058),
	(2, 1059),
	(2, 1060),
	(2, 1061),
	(2, 1062),
	(2, 1069),
	(2, 1070),
	(2, 1071),
	(2, 1072),
	(2, 1073),
	(2, 1074),
	(2, 1075),
	(2, 1076),
	(2, 1077),
	(2, 1078),
	(2, 1079),
	(2, 1080),
	(2, 1081),
	(2, 1082),
	(2, 1083),
	(2, 1084),
	(2, 1085),
	(2, 1086),
	(2, 1087),
	(2, 1088),
	(2, 1089),
	(2, 1090),
	(2, 1091),
	(2, 1092),
	(2, 1093),
	(2, 1094),
	(2, 1095),
	(2, 1096),
	(2, 1097),
	(2, 1098),
	(2, 1099),
	(2, 1100),
	(2, 1101),
	(2, 1102),
	(2, 1103),
	(2, 1104),
	(2, 1105),
	(2, 1106),
	(2, 1107),
	(2, 1108),
	(2, 1109),
	(2, 1110),
	(2, 1111),
	(2, 1112),
	(2, 1113),
	(2, 1114),
	(2, 1115),
	(2, 1116),
	(2, 1117),
	(2, 1121),
	(2, 1123),
	(2, 1125),
	(2, 1127),
	(2, 1129),
	(2, 1131);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;

-- Dumping structure for table sis.sys_user
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- Dumping data for table sis.sys_user: ~3 rows (大约)
DELETE FROM `sys_user`;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `login_name`, `user_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `salt`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 103, 'admin', '管理员', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2020/05/20/2e31c401ec24a99a5303be4045b482f0.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-07-31 13:34:05', 'admin', '2018-03-16 11:33:00', 'ry', '2020-07-31 13:33:59', '管理员'),
	(2, 105, 'ry', '演示', '00', 'test@qq.com', '15666666666', '1', '', 'd919bbead3db1765fbdd24b45990768e', '60795d', '0', '0', '127.0.0.1', '2020-05-06 11:29:56', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-06 12:29:06', '测试员'),
	(100, 105, 'yanshi', '演示数据', '00', 'yanshi@qq.com', '13900020002', '0', '', '5ad4cd40511dd8d1ee1d9d60b5f18a49', '507737', '0', '0', '127.0.0.1', '2020-05-06 12:34:35', 'admin', '2020-05-06 12:29:40', '', '2020-05-06 12:34:44', NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;

-- Dumping structure for table sis.sys_user_online
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE IF NOT EXISTS `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='在线用户记录';

-- Dumping data for table sis.sys_user_online: ~1 rows (大约)
DELETE FROM `sys_user_online`;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` (`sessionId`, `login_name`, `dept_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `start_timestamp`, `last_access_time`, `expire_time`) VALUES
	('480249a6-02a8-40a8-b234-b0fd507b4677', 'admin', '技术部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-07-31 11:26:36', '2020-07-31 17:28:20', -60000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;

-- Dumping structure for table sis.sys_user_post
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE IF NOT EXISTS `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- Dumping data for table sis.sys_user_post: ~2 rows (大约)
DELETE FROM `sys_user_post`;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;

-- Dumping structure for table sis.sys_user_role
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- Dumping data for table sis.sys_user_role: ~3 rows (大约)
DELETE FROM `sys_user_role`;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2),
	(100, 2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;

-- Dumping structure for table sis.t_ability
DROP TABLE IF EXISTS `t_ability`;
CREATE TABLE IF NOT EXISTS `t_ability` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `type` int(8) DEFAULT NULL COMMENT '能力分类（1：侦测，2：干扰，3：发射）',
  `bands` varchar(64) DEFAULT NULL COMMENT '频段',
  `frequency` varchar(64) DEFAULT NULL COMMENT '频率',
  `power` varchar(32) DEFAULT NULL COMMENT '功率或强度',
  `scope` varchar(64) DEFAULT NULL COMMENT '范围',
  `direction` varchar(32) DEFAULT NULL COMMENT '方向',
  `mode` varchar(32) DEFAULT NULL COMMENT '干扰方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='设备能力表';

-- Dumping data for table sis.t_ability: ~14 rows (大约)
DELETE FROM `t_ability`;
/*!40000 ALTER TABLE `t_ability` DISABLE KEYS */;
INSERT INTO `t_ability` (`id`, `type`, `bands`, `frequency`, `power`, `scope`, `direction`, `mode`) VALUES
	(1, 3, NULL, 'FM102.3MHz', '3kW', NULL, NULL, NULL),
	(3, 3, NULL, 'FM94.9MHz', '3kW', NULL, NULL, NULL),
	(5, 3, NULL, 'MW549kHz', '1200kW', NULL, NULL, NULL),
	(7, 3, NULL, 'MW765kHz', '600kW', NULL, NULL, NULL),
	(9, 3, NULL, 'MW837kHz', '1000kW', NULL, NULL, NULL),
	(11, 3, NULL, 'MW1116kHz', '600kW', NULL, NULL, NULL),
	(13, 2, NULL, '0~10MHz', NULL, NULL, NULL, '压制干扰'),
	(15, 2, NULL, '10~30MHz', NULL, NULL, NULL, '噪声干扰'),
	(17, 2, NULL, '>30MHz', NULL, NULL, NULL, '欺骗干扰'),
	(19, 2, NULL, '8~12GHz', NULL, NULL, NULL, '压制、欺骗、噪声'),
	(21, 1, NULL, '13kHz-10MHz', NULL, '800Km', '全向', NULL),
	(23, 1, NULL, '10MHz-1000MHz', NULL, '1200Km', '全向', NULL),
	(25, 1, NULL, '800MHz-2500MHz', NULL, '2000Km', '全向', NULL),
	(27, 1, NULL, '500MHz-1300MHz', NULL, '1500Km', '东南', NULL);
/*!40000 ALTER TABLE `t_ability` ENABLE KEYS */;

-- Dumping structure for table sis.t_customer
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE IF NOT EXISTS `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `company` varchar(255) DEFAULT NULL COMMENT '公司',
  `startTime` datetime DEFAULT NULL COMMENT '时间',
  `cardNumber` varchar(64) DEFAULT NULL COMMENT '卡号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='客户关系表';

-- Dumping data for table sis.t_customer: ~0 rows (大约)
DELETE FROM `t_customer`;
/*!40000 ALTER TABLE `t_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_customer` ENABLE KEYS */;

-- Dumping structure for table sis.t_detection
DROP TABLE IF EXISTS `t_detection`;
CREATE TABLE IF NOT EXISTS `t_detection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `bands` varchar(64) DEFAULT NULL COMMENT '频段',
  `frequency` varchar(64) DEFAULT NULL COMMENT '频率',
  `scope` varchar(64) DEFAULT NULL COMMENT '范围',
  `direction` varchar(32) DEFAULT NULL COMMENT '方向',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='侦测表';

-- Dumping data for table sis.t_detection: ~4 rows (大约)
DELETE FROM `t_detection`;
/*!40000 ALTER TABLE `t_detection` DISABLE KEYS */;
INSERT INTO `t_detection` (`id`, `bands`, `frequency`, `scope`, `direction`) VALUES
	(1, NULL, '13kHz-10MHz', '800Km', '全向'),
	(3, NULL, '10MHz-1000MHz', '1200Km', '全向'),
	(5, NULL, '800MHz-2500MHz', '2000Km', '全向'),
	(7, NULL, '500MHz-1300MHz', '1500Km', '东南');
/*!40000 ALTER TABLE `t_detection` ENABLE KEYS */;

-- Dumping structure for table sis.t_device
DROP TABLE IF EXISTS `t_device`;
CREATE TABLE IF NOT EXISTS `t_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sn` varchar(64) DEFAULT NULL COMMENT '编号',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `belongsto` varchar(64) DEFAULT NULL COMMENT '率属单位',
  `owner` int(8) DEFAULT NULL COMMENT '率属方，0：军，1：民',
  `function` int(8) DEFAULT NULL COMMENT '设备类型（1：侦测，2：干扰，3：发射，4：侦测干扰，5：侦扰播，6：电源车）',
  `status` int(8) DEFAULT NULL COMMENT '状态（1：开/0：关/-1：异常）',
  `classify` varchar(32) DEFAULT NULL COMMENT '分类（车载、机载、舰载、便携）',
  `uptime` datetime DEFAULT NULL COMMENT '开机时间',
  `location` varchar(64) DEFAULT NULL COMMENT '部署地',
  `longitude` varchar(16) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `level` int(4) DEFAULT '0' COMMENT '等级',
  `mtbf` int(11) DEFAULT '0' COMMENT '无故障运行时间',
  `mtbf_default` int(11) DEFAULT '0' COMMENT '默认无故障运行时间',
  `repare_time` int(11) DEFAULT NULL COMMENT '维修时间',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COMMENT='设备表';

-- Dumping data for table sis.t_device: ~29 rows (大约)
DELETE FROM `t_device`;
/*!40000 ALTER TABLE `t_device` DISABLE KEYS */;
INSERT INTO `t_device` (`id`, `sn`, `name`, `belongsto`, `owner`, `function`, `status`, `classify`, `uptime`, `location`, `longitude`, `latitude`, `altitude`, `level`, `mtbf`, `mtbf_default`, `repare_time`, `pic`, `video`) VALUES
	(3, '3100001', '发射机', '广电总局', 1, 6, 1, '固定', NULL, NULL, '119.305033', '26.077786', NULL, 0, 100, 200, NULL, NULL, NULL),
	(5, '3200001', 'XX型干扰机', 'XXX基地', 0, 4, 1, NULL, NULL, NULL, '109.183535', '18.338375', NULL, 1, 120, 200, NULL, NULL, NULL),
	(7, '3200002', 'A01干扰机', 'XXX基地', 0, 4, 1, NULL, NULL, NULL, '122.237567', '30.032083', NULL, 2, 300, 200, NULL, NULL, NULL),
	(9, '3100002', 'X发射机', '广电总局', 1, 6, 0, NULL, NULL, NULL, '118.142716', '24.427253', NULL, 0, 309, 200, NULL, NULL, NULL),
	(11, '3100003', 'S01发射机', '广电总局', 1, 6, -1, NULL, NULL, NULL, '119.305033', '26.077786', NULL, 0, 205, 200, 3, NULL, NULL),
	(13, '3100004', 'D05发射机', '广电总局', 1, 6, 1, NULL, NULL, NULL, '118.142716', '24.427253', NULL, 1, 197, 200, NULL, NULL, NULL),
	(15, '3100005', 'Y99发射机', '广电总局', 1, 6, 1, NULL, NULL, NULL, '119.011359', '25.458299', NULL, 0, 340, 200, NULL, NULL, NULL),
	(17, '3100006', 'UX22发射机', '广电总局', 1, 6, 0, NULL, NULL, NULL, '119.011359', '25.458299', NULL, 2, 540, 200, NULL, NULL, NULL),
	(19, '3200003', 'WY干扰机', '432部', 0, 4, 1, NULL, NULL, NULL, '109.183535', '18.338375', NULL, 1, 454, 200, NULL, NULL, NULL),
	(21, '3200004', 'CX干扰机', 'XXX基地', 0, 4, -1, NULL, NULL, NULL, '110.517339', '18.781443', NULL, 0, 666, 200, 2, NULL, NULL),
	(23, '3300001', 'ZX侦测机', '324基地', 0, 3, 1, NULL, NULL, NULL, '111.023264', '19.655312', NULL, 2, 655, 200, NULL, NULL, NULL),
	(25, '3300002', 'MX监测机', '广电总局', 1, 2, 1, NULL, NULL, NULL, '110.869762', '19.536525', NULL, 2, 345, 200, NULL, NULL, NULL),
	(27, '3300003', 'XX侦测机', '东方基地', 0, 3, 1, NULL, NULL, NULL, '112.337476', '16.838941', NULL, 1, 543, 200, NULL, NULL, NULL),
	(29, '3300004', 'JM侦测机', '324基地', 0, 3, -1, NULL, NULL, NULL, '122.237567', '30.032083', NULL, 0, 568, 200, 5, NULL, NULL),
	(31, '3120001', 'X901发射机', '645基地', 0, 6, 1, NULL, NULL, NULL, '112.337476', '16.838941', NULL, 1, 243, 200, NULL, NULL, NULL),
	(32, '3120002', 'JS03发射机', '645基地', 0, 6, 1, NULL, NULL, NULL, '108.663811', '19.039722', NULL, 1, 343, 200, NULL, NULL, NULL),
	(33, '3120003', 'GH09型发射机', '645基地', 0, 6, 0, NULL, NULL, NULL, '110.517339', '18.781443', NULL, 2, 232, 200, NULL, NULL, NULL),
	(34, '3120004', 'H型发射机', '678部队', 0, 6, -1, NULL, NULL, NULL, '108.663811', '19.039722', NULL, 2, 123, 200, 7, NULL, NULL),
	(35, '3120005', 'W01J发射机', '678部队', 0, 6, 1, NULL, NULL, NULL, '111.130153', '21.500863', NULL, 2, 324, 200, NULL, NULL, NULL),
	(36, '3120006', 'LJ发射机', 'XX基地', 0, 6, 1, NULL, NULL, NULL, '111.130153', '21.500863', NULL, 1, 307, 200, NULL, NULL, NULL),
	(37, '3120005', 'YT发射车', '4592部', 0, 6, 1, NULL, NULL, NULL, '110.879861', '19.541969', NULL, 0, 233, 200, NULL, NULL, NULL),
	(38, '3200005', 'YT引导车', '4354部队', 0, 3, 1, NULL, NULL, NULL, '110.879861', '19.541969', NULL, 1, 455, 200, NULL, NULL, NULL),
	(39, '3600001', 'YT电源车', 'A基地', 0, 80, 1, NULL, NULL, NULL, '110.879861', '19.541969', NULL, 1, 435, 200, NULL, NULL, NULL),
	(40, '3400001', 'RCT侦测干扰', 'B基地', 0, 7, 1, NULL, NULL, NULL, '110.879861', '19.541969', NULL, 1, 327, 200, NULL, NULL, NULL),
	(41, '3120007', 'LJ发射机', 'LJ基地', 0, 6, 1, NULL, NULL, NULL, '109.173141', '21.462117', NULL, 2, 438, 200, NULL, NULL, NULL),
	(42, '3120008', 'YT发射车', '一体化基地', 0, 6, 1, NULL, NULL, NULL, '110.602419', '20.901709', NULL, 0, 154, 200, NULL, NULL, NULL),
	(43, '3200006', 'YT引导车', '一体化基地', 0, 3, 1, NULL, NULL, NULL, '110.602419', '20.901709', NULL, 2, 187, 200, NULL, NULL, NULL),
	(44, '3600002', 'YT电源车', '一体化基地', 0, 80, 1, NULL, NULL, NULL, '110.602419', '20.901709', NULL, 0, 198, 200, NULL, NULL, NULL),
	(45, '3400002', 'RCT侦测干扰', '一体化基地', 0, 7, 1, NULL, NULL, NULL, '110.602419', '20.901709', NULL, 0, 167, 200, NULL, NULL, NULL);
/*!40000 ALTER TABLE `t_device` ENABLE KEYS */;

-- Dumping structure for table sis.t_device_ability
DROP TABLE IF EXISTS `t_device_ability`;
CREATE TABLE IF NOT EXISTS `t_device_ability` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `device_id` int(11) DEFAULT NULL COMMENT '设备ID',
  `ability_id` int(11) DEFAULT NULL COMMENT '能力ID，与能力关联（侦测、干扰、发射）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='设备能力表';

-- Dumping data for table sis.t_device_ability: ~0 rows (大约)
DELETE FROM `t_device_ability`;
/*!40000 ALTER TABLE `t_device_ability` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_device_ability` ENABLE KEYS */;

-- Dumping structure for table sis.t_disturbed
DROP TABLE IF EXISTS `t_disturbed`;
CREATE TABLE IF NOT EXISTS `t_disturbed` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `bands` varchar(64) DEFAULT NULL COMMENT '频段',
  `frequency` varchar(64) DEFAULT NULL COMMENT '频率',
  `power` varchar(32) DEFAULT NULL COMMENT '功率或强度',
  `scope` varchar(64) DEFAULT NULL COMMENT '范围',
  `direction` varchar(32) DEFAULT NULL COMMENT '方向',
  `mode` varchar(32) DEFAULT NULL COMMENT '干扰方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='干扰功能表';

-- Dumping data for table sis.t_disturbed: ~4 rows (大约)
DELETE FROM `t_disturbed`;
/*!40000 ALTER TABLE `t_disturbed` DISABLE KEYS */;
INSERT INTO `t_disturbed` (`id`, `bands`, `frequency`, `power`, `scope`, `direction`, `mode`) VALUES
	(1, NULL, '0~10MHz', '0', NULL, NULL, '压制干扰'),
	(3, NULL, '10~30MHz', '1', NULL, NULL, '噪声干扰'),
	(5, NULL, '>30MHz', NULL, NULL, NULL, '欺骗干扰'),
	(7, NULL, '8~12GHz', NULL, NULL, NULL, '压制、欺骗、噪声');
/*!40000 ALTER TABLE `t_disturbed` ENABLE KEYS */;

-- Dumping structure for table sis.t_enemy
DROP TABLE IF EXISTS `t_enemy`;
CREATE TABLE IF NOT EXISTS `t_enemy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(64) DEFAULT NULL COMMENT '名称（船舰飞机等）',
  `type` varchar(32) DEFAULT NULL COMMENT '目标类型（飞机/船舰）',
  `longitue` varchar(16) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `speed` varchar(16) DEFAULT NULL COMMENT '速度',
  `direction` varchar(16) DEFAULT NULL COMMENT '方向',
  `bands` varchar(32) DEFAULT NULL COMMENT '频段',
  `frequency` varchar(32) DEFAULT NULL COMMENT '频率',
  `power` varchar(16) DEFAULT NULL COMMENT '功率',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `intention` varchar(255) DEFAULT NULL COMMENT '目标企图',
  `status` int(8) DEFAULT NULL COMMENT '状态（0：失效，1：有效，地图能显示位置）',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='敌情目标表';

-- Dumping data for table sis.t_enemy: ~14 rows (大约)
DELETE FROM `t_enemy`;
/*!40000 ALTER TABLE `t_enemy` DISABLE KEYS */;
INSERT INTO `t_enemy` (`id`, `name`, `type`, `longitue`, `latitude`, `altitude`, `speed`, `direction`, `bands`, `frequency`, `power`, `start_time`, `end_time`, `intention`, `status`, `pic`, `video`) VALUES
	(1, 'A舰队', '船舰', '116.686137', '20.996358', NULL, '8', '135', NULL, 'MW550kHz', '2000kw', '2020-07-20 00:00:00', '2020-07-23 00:00:00', '南沙群岛上空侦查', 1, NULL, NULL),
	(2, 'X舰队', '船舰', '117.697988', '15.959855', NULL, '10', '0', NULL, 'MW600kHz', '800kw', '2020-05-06 00:00:00', NULL, '黄岩岛海域侦查', 1, NULL, NULL),
	(3, '美军SH-60海鹰', '飞机', '116.722931', '9.059005', NULL, '800', '045', NULL, '13MHz', '1000kw', '2020-05-07 00:00:00', NULL, '南沙群岛上空侦察', 1, NULL, NULL),
	(4, '英军Y01飞机', '飞机', '119.151375', '12.550889', NULL, '850', '075', NULL, '11KHz', '800kw', '2020-05-08 00:00:00', NULL, '南沙群岛空域侦查', 1, NULL, NULL),
	(5, '英军Y02飞机', '飞机', '119.408937', '12.116741', NULL, '850', '075', NULL, '20MHz', '1000kw', '2020-05-08 00:00:00', NULL, '南沙群岛空域侦查', 1, NULL, NULL),
	(6, '美军F/A-18大黄蜂', '飞机', '116.299794', '8.903518', NULL, '500', '060', NULL, '20MHz', '800kw', '2020-05-09 00:00:00', NULL, '南沙群岛空域海军陆战队演习', 1, 'D:\\HRV_3.1\\Apps\\Files_Resource\\Image\\1.jpg', NULL),
	(7, '美军P-8海神', '飞机', '116.842514', '9.771524', NULL, '630', '055', NULL, '14MHz', '880kw', '2020-05-09 00:00:00', NULL, '南沙群岛空域舰载反潜机侦察', 1, NULL, NULL),
	(8, '美国号两栖攻击舰', '船舰', '127.758258', '26.330586', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 00:00:00', NULL, '抵近侦查', 1, NULL, NULL),
	(9, 'CSG旗舰里根号航母（CVN-76）', '船舰', '139.674488', '35.287375', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 00:00:00', NULL, '抵近侦查', 1, NULL, NULL),
	(10, '美国海军第七舰队', '船舰', '139.66917', '35.290557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '威吓敌国，抵近侦查', 1, NULL, NULL),
	(11, '美军超级大黄蜂', '飞机', '129.371073', '31.169359', NULL, '1000', '047', 'MW1200kHz', '2000kw', NULL, '2020-05-09 00:00:00', NULL, '舰载战斗机秀肌肉', 1, NULL, NULL),
	(12, 'EP-3白羊2侦测机', '飞机', '118.553462', '15.942054', NULL, '550', '010', NULL, '10~30MHz', '2000kw', '2020-05-09 00:00:00', NULL, '黄岩岛空域附近侦测', 1, NULL, NULL),
	(13, '美国之音', '广播台', '113.919643', '7.285452', NULL, NULL, NULL, '短波频率', '7.205,9.620,11.805,13.640,15.205', NULL, NULL, NULL, '反共宣传', 1, NULL, NULL),
	(14, '自由亚洲', '广播台', '121.057794', '14.553302', NULL, NULL, NULL, '短波频率', '5810,7415,7445,9455,9905,11945,1', NULL, NULL, NULL, '反共宣传', 1, NULL, NULL);
/*!40000 ALTER TABLE `t_enemy` ENABLE KEYS */;

-- Dumping structure for table sis.t_equipsys
DROP TABLE IF EXISTS `t_equipsys`;
CREATE TABLE IF NOT EXISTS `t_equipsys` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sn` varchar(64) DEFAULT NULL COMMENT '编码',
  `name` varchar(64) DEFAULT NULL COMMENT '系统名称',
  `belongsto` varchar(64) DEFAULT NULL COMMENT '率属单位',
  `owner` int(8) DEFAULT NULL COMMENT '率属方，0：军，1：民',
  `theater_commond` varchar(16) DEFAULT NULL COMMENT '东/西/南/北/中部战区',
  `type` int(8) DEFAULT NULL COMMENT '系统类型（1：一体化系统，2：一体化车组）',
  `status` int(8) DEFAULT NULL COMMENT '状态（1：开/0：关/-1：异常）',
  `location` varchar(64) DEFAULT NULL COMMENT '部署地',
  `scope` varchar(64) DEFAULT NULL COMMENT '覆盖区域',
  `longitude` varchar(16) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='装备系统表';

-- Dumping data for table sis.t_equipsys: ~5 rows (大约)
DELETE FROM `t_equipsys`;
/*!40000 ALTER TABLE `t_equipsys` DISABLE KEYS */;
INSERT INTO `t_equipsys` (`id`, `sn`, `name`, `belongsto`, `owner`, `theater_commond`, `type`, `status`, `location`, `scope`, `longitude`, `latitude`, `altitude`, `pic`, `video`) VALUES
	(3, '1101', 'XX一体化系统', 'Z部', 0, NULL, 1, NULL, '海南儋州', NULL, '109.186744', '19.753757', NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 0.png', NULL),
	(5, '1010', 'XX陆基系统', 'X基地', 0, NULL, 1, NULL, '广西北海', NULL, '109.165625', '21.41471', NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 1.png', NULL),
	(7, '1020', 'XX海基系统', 'H基地', 0, NULL, 1, NULL, '广东汕尾', NULL, '115.50803', '22.691003', NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 2.png', NULL),
	(9, '1102', 'CX一体化车组', 'A基地', 0, NULL, 2, NULL, '海南', NULL, '110.879861', '19.541969', NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 1.png', NULL),
	(10, '1103', 'GD一体化车组', 'GD军区', 0, NULL, 2, NULL, '广东湛江', '南部沿海', '110.602419', '20.901709', NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 2.png', NULL);
/*!40000 ALTER TABLE `t_equipsys` ENABLE KEYS */;

-- Dumping structure for table sis.t_equipsys_detail
DROP TABLE IF EXISTS `t_equipsys_detail`;
CREATE TABLE IF NOT EXISTS `t_equipsys_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `equipsys_id` int(11) DEFAULT NULL COMMENT '系统ID',
  `type` int(8) DEFAULT NULL COMMENT '装备类型（0：台站，1：设备，2：系统）',
  `equipment_id` int(11) DEFAULT NULL COMMENT '装备ID，与台站或设备表关联',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='装备系统详情表';

-- Dumping data for table sis.t_equipsys_detail: ~13 rows (大约)
DELETE FROM `t_equipsys_detail`;
/*!40000 ALTER TABLE `t_equipsys_detail` DISABLE KEYS */;
INSERT INTO `t_equipsys_detail` (`id`, `equipsys_id`, `type`, `equipment_id`) VALUES
	(1, 9, 1, 37),
	(2, 9, 1, 38),
	(3, 9, 1, 39),
	(4, 9, 1, 40),
	(5, 10, 1, 42),
	(6, 10, 1, 43),
	(7, 10, 1, 44),
	(8, 10, 1, 45),
	(9, 3, 0, 30),
	(10, 3, 0, 31),
	(11, 5, 0, 32),
	(12, 5, 0, 11),
	(13, 7, 0, 33);
/*!40000 ALTER TABLE `t_equipsys_detail` ENABLE KEYS */;

-- Dumping structure for table sis.t_station
DROP TABLE IF EXISTS `t_station`;
CREATE TABLE IF NOT EXISTS `t_station` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sn` varchar(64) DEFAULT NULL COMMENT '编号，唯一性',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `belongsto` varchar(64) DEFAULT NULL COMMENT '率属单位',
  `owner` int(8) DEFAULT NULL COMMENT '率属方，0：军，1：民',
  `theater_commond` varchar(16) DEFAULT NULL COMMENT '东/西/南/北/中部战区',
  `type` int(8) DEFAULT NULL COMMENT '台站类型（0：监测台，1：广播台，2：侦测台，3：干扰台，4：通信台，5：发射台，7：侦测干扰，8：侦扰播）',
  `status` int(8) DEFAULT NULL COMMENT '状态（1：开/0：关/-1：异常）',
  `location` varchar(64) DEFAULT NULL COMMENT '部署地',
  `scope` varchar(64) DEFAULT NULL COMMENT '覆盖区域',
  `longitude` varchar(16) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `channel_name` varchar(64) DEFAULT NULL COMMENT '频道名',
  `run_time` int(8) DEFAULT NULL COMMENT '运行时长（每日）',
  `language` varchar(32) DEFAULT NULL COMMENT '语言',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='台站信息';

-- Dumping data for table sis.t_station: ~17 rows (大约)
DELETE FROM `t_station`;
/*!40000 ALTER TABLE `t_station` DISABLE KEYS */;
INSERT INTO `t_station` (`id`, `sn`, `name`, `belongsto`, `owner`, `theater_commond`, `type`, `status`, `location`, `scope`, `longitude`, `latitude`, `altitude`, `channel_name`, `run_time`, `language`, `pic`, `video`) VALUES
	(11, '2100005', '福州调频站', '广电总局', 1, '', 1, 1, '福州', '福州、泉州东部及马祖', '119.305033', '26.077786', NULL, '中华之声', 21, '汉语', NULL, NULL),
	(13, '2100006', '厦门调频站', '广电总局', 1, NULL, 1, 1, '厦门', '厦门、泉州南部地区及金门', '118.142716', '24.427253', NULL, '神州之声', 21, '汉语', NULL, NULL),
	(15, '2200001', 'xxx监测台', '广电总局', 1, NULL, 2, 1, '海南文昌', NULL, '110.869762', '19.536525', NULL, NULL, NULL, NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 3.png', NULL),
	(16, '2120001', '645发射台', '645基地', 0, '东部战区', 6, 1, '舟山', '东南沿海', '122.237567', '30.032083', NULL, NULL, NULL, NULL, NULL, NULL),
	(17, '2120002', '678发射台', '678部队', 0, '南部战区', 6, 1, '三亚', NULL, '109.183535', '18.338375', NULL, NULL, NULL, NULL, NULL, NULL),
	(18, '2220001', '324侦测台', '324基地', 0, '南部战区', 3, 1, '海口', NULL, '111.023264', '19.655312', NULL, NULL, NULL, NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 5.png', NULL),
	(19, '2320001', 'XXX干扰台', 'XXX基地', 0, '南部战区', 4, 1, '万宁', NULL, '110.517339', '18.781443', NULL, NULL, NULL, NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 8.png', NULL),
	(20, '2320002', '东方干扰台', '东方基地', 0, '南部战区', 4, 1, '东方', NULL, '108.663811', '19.039722', NULL, NULL, NULL, NULL, NULL, NULL),
	(23, '2100001', '824台发射', '广电总局', 1, '', 6, 1, '莆田', NULL, '119.011359', '25.458299', NULL, NULL, NULL, NULL, NULL, NULL),
	(25, '2100002', '552台发射', '广电总局', 1, '', 6, 0, '福州', NULL, '119.307782', '26.07991', NULL, NULL, NULL, NULL, NULL, NULL),
	(27, '2100003', '641台发射', '广电总局', 1, '', 6, 0, '泉州惠安', NULL, '118.807731', '25.040617', NULL, NULL, NULL, NULL, NULL, NULL),
	(29, '2100003', '751台发射', '广电总局', 1, NULL, 6, -1, '南平', NULL, '118.102588', '27.388591', NULL, NULL, NULL, NULL, NULL, NULL),
	(30, '2400001', 'YTH琼海阵地', '琼海基地', 0, '南部战区', 2, 1, '海南琼海', NULL, '110.531091', '19.044502', NULL, NULL, NULL, NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 4.png', NULL),
	(31, '2410001', 'YTH文昌市', '文昌市', 1, '', 3, 1, '海南文昌', NULL, '110.963428', '19.624121', NULL, NULL, NULL, NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 6.png', NULL),
	(32, '2400002', 'LJ系统台', 'LJ基地', 0, '中部战区', 7, 1, '广东茂名', NULL, '111.130153', '21.500863', NULL, NULL, NULL, NULL, NULL, NULL),
	(33, '2400003', 'HJ系统台', 'HJ某部', 0, '东部战区', 8, 1, '广西北海', NULL, '109.173141', '21.462117', NULL, NULL, NULL, NULL, NULL, NULL),
	(34, '2400004', '三沙侦测台', '三沙军区', 0, '南部战区', 3, 1, '三沙', '南部海域', '112.337476', '16.838941', NULL, NULL, NULL, NULL, 'D:\\HRV_3.1\\Apps\\Files_Resource\\短波\\设备图片\\图层 7.png', NULL);
/*!40000 ALTER TABLE `t_station` ENABLE KEYS */;

-- Dumping structure for table sis.t_station_device
DROP TABLE IF EXISTS `t_station_device`;
CREATE TABLE IF NOT EXISTS `t_station_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `station_id` int(11) DEFAULT NULL COMMENT '台站ID',
  `device_id` int(11) DEFAULT NULL COMMENT '设备ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COMMENT='台站设备表';

-- Dumping data for table sis.t_station_device: ~21 rows (大约)
DELETE FROM `t_station_device`;
/*!40000 ALTER TABLE `t_station_device` DISABLE KEYS */;
INSERT INTO `t_station_device` (`id`, `station_id`, `device_id`) VALUES
	(8, 16, 7),
	(9, 16, 29),
	(10, 11, 3),
	(11, 11, 11),
	(12, 13, 9),
	(13, 13, 13),
	(15, 15, 25),
	(16, 23, 15),
	(17, 23, 17),
	(18, 17, 5),
	(19, 17, 19),
	(20, 18, 23),
	(21, 34, 27),
	(22, 34, 31),
	(23, 19, 33),
	(24, 19, 21),
	(25, 20, 34),
	(26, 20, 32),
	(28, 32, 35),
	(29, 32, 36),
	(30, 33, 41);
/*!40000 ALTER TABLE `t_station_device` ENABLE KEYS */;

-- Dumping structure for table sis.t_station_import
DROP TABLE IF EXISTS `t_station_import`;
CREATE TABLE IF NOT EXISTS `t_station_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sn` varchar(64) DEFAULT NULL COMMENT '编号，唯一性',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `belongsto` varchar(64) DEFAULT NULL COMMENT '率属单位',
  `owner` int(8) DEFAULT NULL COMMENT '率属方，0：军，1：民',
  `theater_commond` varchar(16) DEFAULT NULL COMMENT '东/西/南/北/中部战区',
  `type` int(8) DEFAULT NULL COMMENT '台站类型（0：监测台，1：广播台，2：侦测台，3：干扰台，4：通信台，5：发射台，7：侦测干扰，8：侦扰播）',
  `status` int(8) DEFAULT NULL COMMENT '状态（1：开/0：关/-1：异常）',
  `location` varchar(64) DEFAULT NULL COMMENT '部署地',
  `scope` varchar(64) DEFAULT NULL COMMENT '覆盖区域',
  `longitude` varchar(16) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `channel_name` varchar(64) DEFAULT NULL COMMENT '频道名',
  `run_time` int(8) DEFAULT NULL COMMENT '运行时长（每日）',
  `language` varchar(32) DEFAULT NULL COMMENT '语言',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COMMENT='导入台站信息表';

-- Dumping data for table sis.t_station_import: ~0 rows (大约)
DELETE FROM `t_station_import`;
/*!40000 ALTER TABLE `t_station_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_station_import` ENABLE KEYS */;

-- Dumping structure for table sis.t_subscribe
DROP TABLE IF EXISTS `t_subscribe`;
CREATE TABLE IF NOT EXISTS `t_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `feed_code` varchar(64) DEFAULT NULL COMMENT '源标识',
  `feed_name` varchar(64) DEFAULT NULL COMMENT '源名称',
  `data_code` varchar(64) DEFAULT NULL COMMENT '数据标识',
  `data_name` varchar(64) DEFAULT NULL COMMENT '数据名称',
  `subcategory` varchar(32) DEFAULT NULL COMMENT '数据子分类',
  `is_subscribe` int(4) DEFAULT NULL COMMENT '是否订阅，0：未订阅，1：已订阅',
  `dt_subscribe` datetime DEFAULT NULL COMMENT '订阅时间',
  `dt_unsubscribe` datetime DEFAULT NULL COMMENT '退订时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订阅关系表';

-- Dumping data for table sis.t_subscribe: ~0 rows (大约)
DELETE FROM `t_subscribe`;
/*!40000 ALTER TABLE `t_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_subscribe` ENABLE KEYS */;

-- Dumping structure for table sis.t_task
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE IF NOT EXISTS `t_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sn` varchar(32) DEFAULT NULL COMMENT '任务编码',
  `name` varchar(64) DEFAULT NULL COMMENT '任务名称',
  `type` int(8) DEFAULT NULL COMMENT '任务类型（0：监测，1：干扰，2：广播，3：通信）',
  `purpose` varchar(255) DEFAULT NULL COMMENT '目的',
  `region` varchar(64) DEFAULT NULL COMMENT '区域',
  `source` varchar(64) DEFAULT NULL COMMENT '来源',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(8) DEFAULT NULL COMMENT '状态（0：未开始，1：进行中，2：已完成）',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='作战任务基本信息表';

-- Dumping data for table sis.t_task: ~3 rows (大约)
DELETE FROM `t_task`;
/*!40000 ALTER TABLE `t_task` DISABLE KEYS */;
INSERT INTO `t_task` (`id`, `sn`, `name`, `type`, `purpose`, `region`, `source`, `start_time`, `end_time`, `description`, `remarks`, `status`, `pic`, `video`) VALUES
	(1, '1001', '监测南海方向', 0, '监测南海方向非法电磁目标', '南海海域', '上级单位', '2020-05-09 00:00:00', '2020-05-31 00:00:00', '监测南海方向非法电磁目标', NULL, 2, NULL, NULL),
	(2, '1002', '干扰南海方向', 1, '干扰南海方向非法电磁目标', '南海方向', '上级单位', '2020-07-01 00:00:00', '2020-07-20 00:00:00', '干扰南海方向非法电磁目标', NULL, 1, NULL, NULL),
	(3, '1003', '日常监测', 0, '监控南海区域无线信号', '南海海域空域', '上级指示', '2020-05-25 00:00:00', '2020-05-30 00:00:00', '监控南海区域无线信号', NULL, 1, NULL, NULL);
/*!40000 ALTER TABLE `t_task` ENABLE KEYS */;

-- Dumping structure for table sis.t_task_detail
DROP TABLE IF EXISTS `t_task_detail`;
CREATE TABLE IF NOT EXISTS `t_task_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `task_id` int(11) DEFAULT NULL COMMENT '任务ID',
  `exec_unit` varchar(64) DEFAULT NULL COMMENT '执行单位',
  `equipment_type` int(8) DEFAULT NULL COMMENT '装备类型（1：系统，2：台站，3：设备）',
  `equipment_id` int(11) DEFAULT NULL COMMENT '参与装备ID，依据装备类型与不同表关联',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='作战任务详情表';

-- Dumping data for table sis.t_task_detail: ~7 rows (大约)
DELETE FROM `t_task_detail`;
/*!40000 ALTER TABLE `t_task_detail` DISABLE KEYS */;
INSERT INTO `t_task_detail` (`id`, `task_id`, `exec_unit`, `equipment_type`, `equipment_id`, `start_time`, `end_time`) VALUES
	(1, 1, 'A部', 1, 3, '2020-06-04 12:18:38', '2020-06-24 12:19:13'),
	(3, 1, 'X台', 2, 11, '2020-06-04 12:18:42', '2020-06-14 12:19:18'),
	(4, 3, 'XX一体化系统', 1, 3, '2020-05-25 00:00:00', '2020-05-27 00:00:00'),
	(5, 3, '645基地', 2, 16, '2020-05-25 00:00:00', '2020-05-27 00:00:00'),
	(6, 3, '东方基地', 2, 20, '2020-05-25 00:00:00', '2020-05-27 00:00:00'),
	(7, 3, 'LJ', 3, 36, '2020-05-25 00:00:00', '2020-05-27 00:00:00'),
	(8, 2, '南海某部', 1, 5, '2020-06-01 12:19:29', '2020-06-04 12:19:33');
/*!40000 ALTER TABLE `t_task_detail` ENABLE KEYS */;

-- Dumping structure for table sis.t_task_exec
DROP TABLE IF EXISTS `t_task_exec`;
CREATE TABLE IF NOT EXISTS `t_task_exec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `task_id` int(11) DEFAULT NULL COMMENT '任务ID',
  `detail_id` int(11) DEFAULT NULL COMMENT '任务详情ID',
  `dt_collect` datetime DEFAULT NULL COMMENT '采集时间',
  `information` varchar(255) DEFAULT NULL COMMENT '执行信息',
  `latitude` varchar(16) DEFAULT NULL COMMENT '经度',
  `longitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `speed` int(8) DEFAULT NULL COMMENT '速度',
  `direction` varchar(32) DEFAULT NULL COMMENT '方向',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='作战任务执行信息表';

-- Dumping data for table sis.t_task_exec: ~8 rows (大约)
DELETE FROM `t_task_exec`;
/*!40000 ALTER TABLE `t_task_exec` DISABLE KEYS */;
INSERT INTO `t_task_exec` (`id`, `task_id`, `detail_id`, `dt_collect`, `information`, `latitude`, `longitude`, `altitude`, `speed`, `direction`) VALUES
	(3, 2, NULL, '2020-05-07 00:11:11', '敌方装备企图不明。', NULL, NULL, NULL, NULL, 'aaaa'),
	(4, 2, NULL, '2020-05-08 01:01:00', '敌方设备进入我方侦测范围，暂时没明确信息。', NULL, NULL, NULL, 111, NULL),
	(5, 1, 1, '2020-05-06 13:12:34', '敌方装备进入', NULL, NULL, NULL, 88, NULL),
	(6, 1, 1, '2020-05-07 00:00:00', '敌方装备企图不明。', NULL, NULL, NULL, 111, NULL),
	(7, 1, NULL, '2020-05-08 00:00:00', '敌方离开。', NULL, NULL, NULL, NULL, 'aaaa'),
	(8, 3, NULL, '2020-05-25 05:30:04', '敌方设备进入我方侦测范围，暂时没明确信息。', NULL, NULL, NULL, NULL, NULL),
	(9, 3, NULL, '2020-05-26 12:14:47', '敌方设备企图不明，侦测范围覆盖南海区域，我方相关单位进入一级观察状态。', NULL, NULL, NULL, NULL, NULL),
	(10, 3, NULL, '2020-05-27 01:05:23', '敌方设备离开区域。', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `t_task_exec` ENABLE KEYS */;

-- Dumping structure for table sis.t_train
DROP TABLE IF EXISTS `t_train`;
CREATE TABLE IF NOT EXISTS `t_train` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `train_code` varchar(64) DEFAULT NULL COMMENT '车次代码',
  `start_station` varchar(64) DEFAULT NULL COMMENT '始发站',
  `start_time` datetime DEFAULT NULL COMMENT '始发时间',
  `arrive_station` varchar(64) DEFAULT NULL COMMENT '经过站',
  `arrive_tme` datetime DEFAULT NULL COMMENT '到达时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='车次信息表';

-- Dumping data for table sis.t_train: ~0 rows (大约)
DELETE FROM `t_train`;
/*!40000 ALTER TABLE `t_train` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_train` ENABLE KEYS */;

-- Dumping structure for table sis.t_transmitting
DROP TABLE IF EXISTS `t_transmitting`;
CREATE TABLE IF NOT EXISTS `t_transmitting` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `power` varchar(32) DEFAULT NULL COMMENT '输出功率',
  `bands` varchar(64) DEFAULT NULL COMMENT '频段',
  `frequency` varchar(64) DEFAULT NULL COMMENT '频率',
  `scope` varchar(64) DEFAULT NULL COMMENT '覆盖范围，与功率相关',
  `direction` varchar(32) DEFAULT NULL COMMENT '方向',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='发射系统';

-- Dumping data for table sis.t_transmitting: ~6 rows (大约)
DELETE FROM `t_transmitting`;
/*!40000 ALTER TABLE `t_transmitting` DISABLE KEYS */;
INSERT INTO `t_transmitting` (`id`, `power`, `bands`, `frequency`, `scope`, `direction`) VALUES
	(1, '3kW', NULL, 'FM102.3MHz', '', NULL),
	(3, '3kW', NULL, 'FM94.9MHz', NULL, NULL),
	(5, '1200kW', NULL, 'MW549kHz', '', NULL),
	(7, '600kW', NULL, 'MW765kHz', NULL, NULL),
	(9, '1000kW', NULL, 'MW837kHz', NULL, NULL),
	(11, '600kW', NULL, 'MW1116kHz', NULL, NULL);
/*!40000 ALTER TABLE `t_transmitting` ENABLE KEYS */;

-- Dumping structure for table sis.t_ts_enemy
DROP TABLE IF EXISTS `t_ts_enemy`;
CREATE TABLE IF NOT EXISTS `t_ts_enemy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `create_time` datetime(6) DEFAULT NULL,
  `enemy_id` int(11) DEFAULT '0' COMMENT '敌情ID',
  `longitue` varchar(16) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `speed` varchar(16) DEFAULT NULL COMMENT '速度',
  `direction` varchar(16) DEFAULT NULL COMMENT '方向',
  `bands` varchar(32) DEFAULT NULL COMMENT '频段',
  `frequency` varchar(32) DEFAULT NULL COMMENT '频率',
  `power` varchar(16) DEFAULT NULL COMMENT '功率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='敌情实时信息表';

-- Dumping data for table sis.t_ts_enemy: ~1 rows (大约)
DELETE FROM `t_ts_enemy`;
/*!40000 ALTER TABLE `t_ts_enemy` DISABLE KEYS */;
INSERT INTO `t_ts_enemy` (`id`, `create_time`, `enemy_id`, `longitue`, `latitude`, `altitude`, `speed`, `direction`, `bands`, `frequency`, `power`) VALUES
	(1, '2020-07-20 00:13:00.000000', 1, '124.765819', '23.366603', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw');
/*!40000 ALTER TABLE `t_ts_enemy` ENABLE KEYS */;

-- Dumping structure for table sis.t_ts_enemy_history
DROP TABLE IF EXISTS `t_ts_enemy_history`;
CREATE TABLE IF NOT EXISTS `t_ts_enemy_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `create_time` datetime(6) DEFAULT NULL,
  `enemy_id` int(11) DEFAULT '0' COMMENT '敌情ID',
  `longitue` varchar(16) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(16) DEFAULT NULL COMMENT '纬度',
  `altitude` varchar(16) DEFAULT NULL COMMENT '海拔',
  `speed` varchar(16) DEFAULT NULL COMMENT '速度',
  `direction` varchar(16) DEFAULT NULL COMMENT '方向',
  `bands` varchar(32) DEFAULT NULL COMMENT '频段',
  `frequency` varchar(32) DEFAULT NULL COMMENT '频率',
  `power` varchar(16) DEFAULT NULL COMMENT '功率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='敌情实时信息流水表';

-- Dumping data for table sis.t_ts_enemy_history: ~24 rows (大约)
DELETE FROM `t_ts_enemy_history`;
/*!40000 ALTER TABLE `t_ts_enemy_history` DISABLE KEYS */;
INSERT INTO `t_ts_enemy_history` (`id`, `create_time`, `enemy_id`, `longitue`, `latitude`, `altitude`, `speed`, `direction`, `bands`, `frequency`, `power`) VALUES
	(1, '2020-07-20 00:09:10.000000', 1, '109.582714', '3.210873', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(2, '2020-07-20 00:09:20.000000', 1, '110.857128', '2.903694', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(3, '2020-07-20 00:09:30.000000', 1, '111.395458', '3.616645', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(4, '2020-07-20 00:09:40.000000', 1, '112.142528', '4.60286', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(5, '2020-07-20 00:09:50.000000', 1, '112.592968', '5.117359', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(6, '2020-07-20 00:10:00.000000', 1, '113.230174', '5.598644', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(7, '2020-07-20 00:10:10.000000', 1, '114.120068', '6.701859', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(8, '2020-07-20 00:10:20.000000', 1, '115.218699', '7.639283', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(9, '2020-07-20 00:10:30.000000', 1, '116.196484', '8.455137', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(10, '2020-07-20 00:10:40.000000', 1, '116.723826', '9.691881', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(11, '2020-07-20 00:10:50.000000', 1, '117.61372', '10.719055', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(12, '2020-07-20 00:11:00.000000', 1, '118.547558', '12.709087', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(13, '2020-07-20 00:11:10.000000', 1, '118.635447', '13.735798', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(14, '2020-07-20 00:11:20.000000', 1, '118.492626', '15.065906', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(26, '2020-07-20 00:11:30.000000', 1, '118.514597', '16.545789', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(27, '2020-07-20 00:11:40.000000', 1, '118.591503', '17.187123', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(28, '2020-07-20 00:11:50.000000', 1, '118.943064', '18.358841', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(29, '2020-07-20 00:12:00.000000', 1, '119.701122', '19.470879', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(30, '2020-07-20 00:12:10.000000', 1, '120.096628', '20.379789', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(31, '2020-07-20 00:12:20.000000', 1, '120.876659', '21.273137', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(32, '2020-07-20 00:12:30.000000', 1, '121.491892', '21.865718', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(33, '2020-07-20 00:12:40.000000', 1, '122.557567', '22.70945', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(34, '2020-07-20 00:12:50.000000', 1, '123.83198', '23.235429', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw'),
	(35, '2020-07-20 00:13:00.000000', 1, '124.765819', '23.366603', NULL, '800', '045', 'MW1200kHz', '2000kw', '2000kw');
/*!40000 ALTER TABLE `t_ts_enemy_history` ENABLE KEYS */;

-- Dumping structure for view sis.v_device_bar
DROP VIEW IF EXISTS `v_device_bar`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_bar` (
	`Series` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Argument` VARCHAR(128) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`Value` INT(11) NULL COMMENT '无故障运行时间'
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_func_statistics
DROP VIEW IF EXISTS `v_device_func_statistics`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_func_statistics` (
	`name` VARCHAR(5) NOT NULL COLLATE 'utf8mb4_general_ci',
	`count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_func_statistics_chart
DROP VIEW IF EXISTS `v_device_func_statistics_chart`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_func_statistics_chart` (
	`Series` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Argument` VARCHAR(5) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Value` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_labels
DROP VIEW IF EXISTS `v_device_labels`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_labels` (
	`name` VARCHAR(128) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`repare_time` INT(11) NULL COMMENT '维修时间'
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_mtbf_statistics
DROP VIEW IF EXISTS `v_device_mtbf_statistics`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_mtbf_statistics` (
	`Series` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Argument` VARCHAR(7) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Value` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_mtbf_statistics_pie
DROP VIEW IF EXISTS `v_device_mtbf_statistics_pie`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_mtbf_statistics_pie` (
	`total` BIGINT(21) NOT NULL,
	`exceeded` DECIMAL(23,0) NULL,
	`unexceeded` DECIMAL(23,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_status_pie
DROP VIEW IF EXISTS `v_device_status_pie`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_status_pie` (
	`Series` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Argument` VARCHAR(4) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Value` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_status_statistics
DROP VIEW IF EXISTS `v_device_status_statistics`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_status_statistics` (
	`total` BIGINT(21) NOT NULL,
	`num_open` DECIMAL(23,0) NULL,
	`num_close` DECIMAL(23,0) NULL,
	`num_excep` DECIMAL(23,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_table
DROP VIEW IF EXISTS `v_device_table`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_device_table` (
	`序号` INT(11) NOT NULL COMMENT '自增主键',
	`设备名称` VARCHAR(128) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`运行状态` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`运行时长` INT(11) NULL COMMENT '无故障运行时间',
	`所属单位` VARCHAR(64) NULL COMMENT '率属单位' COLLATE 'utf8mb4_general_ci',
	`所属系统` VARCHAR(64) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`地址` VARCHAR(64) NULL COMMENT '部署地' COLLATE 'utf8mb4_general_ci',
	`等级` INT(4) NULL COMMENT '等级'
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_equipsys_device
DROP VIEW IF EXISTS `v_equipsys_device`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_equipsys_device` (
	`id` INT(11) NOT NULL COMMENT '自增主键',
	`name` VARCHAR(128) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`status` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`owner` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`mtbf` INT(11) NULL COMMENT '无故障运行时间',
	`belongsto` VARCHAR(64) NULL COMMENT '率属单位' COLLATE 'utf8mb4_general_ci',
	`tosys` VARCHAR(64) NULL COMMENT '系统名称' COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(64) NULL COMMENT '部署地' COLLATE 'utf8mb4_general_ci',
	`level` INT(4) NULL COMMENT '等级'
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_equipsys_type_statistics
DROP VIEW IF EXISTS `v_equipsys_type_statistics`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_equipsys_type_statistics` (
	`name` VARCHAR(5) NOT NULL COLLATE 'utf8mb4_general_ci',
	`count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_station_curve
DROP VIEW IF EXISTS `v_station_curve`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_station_curve` (
	`Series` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Argument` VARCHAR(5) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Value` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_station_device
DROP VIEW IF EXISTS `v_station_device`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_station_device` (
	`id` INT(11) NOT NULL COMMENT '自增主键',
	`name` VARCHAR(128) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`status` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`owner` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`mtbf` INT(11) NULL COMMENT '无故障运行时间',
	`belongsto` VARCHAR(64) NULL COMMENT '率属单位' COLLATE 'utf8mb4_general_ci',
	`tosys` VARCHAR(64) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(64) NULL COMMENT '部署地' COLLATE 'utf8mb4_general_ci',
	`level` INT(4) NULL COMMENT '等级'
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_station_owner_pie
DROP VIEW IF EXISTS `v_station_owner_pie`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_station_owner_pie` (
	`Series` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Argument` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Value` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_station_owner_statistics
DROP VIEW IF EXISTS `v_station_owner_statistics`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_station_owner_statistics` (
	`owner` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_station_pie
DROP VIEW IF EXISTS `v_station_pie`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_station_pie` (
	`Series` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Argument` VARCHAR(5) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Value` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_station_type_statistics
DROP VIEW IF EXISTS `v_station_type_statistics`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_station_type_statistics` (
	`name` VARCHAR(5) NOT NULL COLLATE 'utf8mb4_general_ci',
	`count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_task
DROP VIEW IF EXISTS `v_task`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_task` (
	`id` INT(11) NOT NULL COMMENT '自增主键',
	`name` VARCHAR(64) NULL COMMENT '任务名称' COLLATE 'utf8mb4_general_ci',
	`type` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`purpose` VARCHAR(255) NULL COMMENT '目的' COLLATE 'utf8mb4_general_ci',
	`region` VARCHAR(64) NULL COMMENT '区域' COLLATE 'utf8mb4_general_ci',
	`source` VARCHAR(64) NULL COMMENT '来源' COLLATE 'utf8mb4_general_ci',
	`start_time` DATETIME NULL COMMENT '开始时间',
	`end_time` DATETIME NULL COMMENT '结束时间',
	`description` VARCHAR(255) NULL COMMENT '任务描述' COLLATE 'utf8mb4_general_ci',
	`remarks` VARCHAR(255) NULL COMMENT '备注' COLLATE 'utf8mb4_general_ci',
	`status` VARCHAR(3) NOT NULL COLLATE 'utf8mb4_general_ci',
	`exec_unit` VARCHAR(256) NULL COLLATE 'utf8mb4_general_ci',
	`exec_device` VARCHAR(256) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_test
DROP VIEW IF EXISTS `v_test`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_test` (
	`id` INT(11) NOT NULL COMMENT '自增主键',
	`name` VARCHAR(128) NULL COMMENT '名称' COLLATE 'utf8mb4_general_ci',
	`status` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`owner` VARCHAR(2) NOT NULL COLLATE 'utf8mb4_general_ci',
	`mtbf` INT(11) NULL COMMENT '无故障运行时间',
	`belongsto` VARCHAR(64) NULL COMMENT '率属单位' COLLATE 'utf8mb4_general_ci',
	`tosys` VARCHAR(64) NULL COMMENT '系统名称' COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(64) NULL COMMENT '部署地' COLLATE 'utf8mb4_general_ci',
	`level` INT(4) NULL COMMENT '等级',
	`longitude` VARCHAR(16) NULL COMMENT '经度' COLLATE 'utf8mb4_general_ci',
	`latitude` VARCHAR(16) NULL COMMENT '纬度' COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view sis.v_device_bar
DROP VIEW IF EXISTS `v_device_bar`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_bar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_bar` AS select '分组' AS `Series`,`t_device`.`name` AS `Argument`,`t_device`.`mtbf` AS `Value` from `t_device` order by `t_device`.`mtbf` desc limit 0,8;

-- Dumping structure for view sis.v_device_func_statistics
DROP VIEW IF EXISTS `v_device_func_statistics`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_func_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_func_statistics` AS select `t`.`name` AS `name`,count(1) AS `count` from (select `sis`.`t_device`.`id` AS `id`,(case `sis`.`t_device`.`function` when '1' then '广播设备' when '2' then '监测设备' when '3' then '侦测设备' when '4' then '干扰设备' when '5' then '通信设备' when '6' then '发射设备' when '7' then '侦干一体' when '8' then '侦扰播一体' else '其它设备' end) AS `name` from `sis`.`t_device`) `t` group by `t`.`name`;

-- Dumping structure for view sis.v_device_func_statistics_chart
DROP VIEW IF EXISTS `v_device_func_statistics_chart`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_func_statistics_chart`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_func_statistics_chart` AS select '分组' AS `Series`,`t`.`name` AS `Argument`,count(1) AS `Value` from (select `sis`.`t_device`.`id` AS `id`,(case `sis`.`t_device`.`function` when '1' then '广播设备' when '2' then '监测设备' when '3' then '侦测设备' when '4' then '干扰设备' when '5' then '通信设备' when '6' then '发射设备' when '7' then '侦干一体' when '8' then '侦扰播一体' else '其它设备' end) AS `name` from `sis`.`t_device`) `t` group by `t`.`name`;

-- Dumping structure for view sis.v_device_labels
DROP VIEW IF EXISTS `v_device_labels`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_labels`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_labels` AS select `t_device`.`name` AS `name`,`t_device`.`repare_time` AS `repare_time` from `t_device` order by `t_device`.`repare_time` desc limit 0,4;

-- Dumping structure for view sis.v_device_mtbf_statistics
DROP VIEW IF EXISTS `v_device_mtbf_statistics`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_mtbf_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_mtbf_statistics` AS select `t1`.`Series` AS `Series`,(case `t1`.`flag` when '1' then '超出无故障时间' else '无故障时间内 ' end) AS `Argument`,count(1) AS `Value` from (select '分组' AS `Series`,`sis`.`t_device`.`id` AS `id`,(case when (`sis`.`t_device`.`mtbf` > `sis`.`t_device`.`mtbf_default`) then 1 else 0 end) AS `flag` from `sis`.`t_device`) `t1` group by `t1`.`flag`;

-- Dumping structure for view sis.v_device_mtbf_statistics_pie
DROP VIEW IF EXISTS `v_device_mtbf_statistics_pie`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_mtbf_statistics_pie`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_mtbf_statistics_pie` AS select count(0) AS `total`,sum(if((`t_device`.`mtbf` >= `t_device`.`mtbf_default`),1,0)) AS `exceeded`,sum(if((`t_device`.`mtbf` < `t_device`.`mtbf_default`),1,0)) AS `unexceeded` from `t_device`;

-- Dumping structure for view sis.v_device_status_pie
DROP VIEW IF EXISTS `v_device_status_pie`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_status_pie`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_status_pie` AS select '分组' AS `Series`,`t`.`name` AS `Argument`,count(1) AS `Value` from (select (case `sis`.`t_device`.`status` when '0' then '关闭设备' when '1' then '开启设备' else '故障设备' end) AS `name` from `sis`.`t_device`) `t` group by `t`.`name`;

-- Dumping structure for view sis.v_device_status_statistics
DROP VIEW IF EXISTS `v_device_status_statistics`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_status_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_status_statistics` AS select count(0) AS `total`,sum(if((`t_device`.`status` = '1'),1,0)) AS `num_open`,sum(if((`t_device`.`status` = '0'),1,0)) AS `num_close`,sum(if((`t_device`.`status` = '-1'),1,0)) AS `num_excep` from `t_device`;

-- Dumping structure for view sis.v_device_table
DROP VIEW IF EXISTS `v_device_table`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_device_table`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_device_table` AS select `td`.`id` AS `序号`,`td`.`name` AS `设备名称`,(case `td`.`status` when '1' then '开' when '-1' then '异常' else '关' end) AS `运行状态`,`td`.`mtbf` AS `运行时长`,`td`.`belongsto` AS `所属单位`,`t1`.`name` AS `所属系统`,`t1`.`location` AS `地址`,`td`.`level` AS `等级` from (`sis`.`t_device` `td` join (select `ts`.`name` AS `name`,`ts`.`belongsto` AS `belongsto`,`ts`.`owner` AS `owner`,`ts`.`location` AS `location`,`tsd`.`device_id` AS `device_id` from (`sis`.`t_station` `ts` join `sis`.`t_station_device` `tsd`) where (`ts`.`id` = `tsd`.`station_id`)) `t1` on((`td`.`id` = `t1`.`device_id`)));

-- Dumping structure for view sis.v_equipsys_device
DROP VIEW IF EXISTS `v_equipsys_device`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_equipsys_device`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_equipsys_device` AS select `td`.`id` AS `id`,`td`.`name` AS `name`,(case `td`.`status` when '1' then '开' when '-1' then '异常' else '关' end) AS `status`,(case `td`.`owner` when '1' then '民用' else '军用' end) AS `owner`,`td`.`mtbf` AS `mtbf`,`td`.`belongsto` AS `belongsto`,`t1`.`name` AS `tosys`,`t1`.`location` AS `location`,`td`.`level` AS `level` from (`sis`.`t_device` `td` join (select `te`.`name` AS `name`,`te`.`belongsto` AS `belongsto`,`te`.`owner` AS `owner`,`te`.`location` AS `location`,`ted`.`equipment_id` AS `equipment_id` from (`sis`.`t_equipsys` `te` join `sis`.`t_equipsys_detail` `ted`) where ((`te`.`id` = `ted`.`equipsys_id`) and (`ted`.`type` = 1))) `t1` on((`td`.`id` = `t1`.`equipment_id`)));

-- Dumping structure for view sis.v_equipsys_type_statistics
DROP VIEW IF EXISTS `v_equipsys_type_statistics`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_equipsys_type_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_equipsys_type_statistics` AS select `t`.`name` AS `name`,count(1) AS `count` from (select `sis`.`t_equipsys`.`id` AS `id`,(case `sis`.`t_equipsys`.`type` when '1' then '一体化系统' when '2' then '一体化车组' else '无' end) AS `name` from `sis`.`t_equipsys`) `t` group by `t`.`name`;

-- Dumping structure for view sis.v_station_curve
DROP VIEW IF EXISTS `v_station_curve`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_station_curve`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_station_curve` AS select '分组' AS `Series`,`t`.`name` AS `Argument`,count(1) AS `Value` from (select `sis`.`t_station`.`id` AS `id`,(case `sis`.`t_station`.`type` when '1' then '广播台' when '2' then '监测台' when '3' then '侦测台' when '4' then '干扰台' when '5' then '通信台' when '6' then '发射台' when '7' then '侦干一体' when '8' then '侦扰播一体' else '其它台' end) AS `name` from `sis`.`t_station`) `t` group by `t`.`name`;

-- Dumping structure for view sis.v_station_device
DROP VIEW IF EXISTS `v_station_device`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_station_device`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_station_device` AS select `td`.`id` AS `id`,`td`.`name` AS `name`,(case `td`.`status` when '1' then '开' when '-1' then '异常' else '关' end) AS `status`,(case `td`.`owner` when '1' then '民用' else '军用' end) AS `owner`,`td`.`mtbf` AS `mtbf`,`td`.`belongsto` AS `belongsto`,`t1`.`name` AS `tosys`,`t1`.`location` AS `location`,`td`.`level` AS `level` from (`sis`.`t_device` `td` join (select `ts`.`name` AS `name`,`ts`.`belongsto` AS `belongsto`,`ts`.`owner` AS `owner`,`ts`.`location` AS `location`,`tsd`.`device_id` AS `device_id` from (`sis`.`t_station` `ts` join `sis`.`t_station_device` `tsd`) where (`ts`.`id` = `tsd`.`station_id`)) `t1` on((`td`.`id` = `t1`.`device_id`)));

-- Dumping structure for view sis.v_station_owner_pie
DROP VIEW IF EXISTS `v_station_owner_pie`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_station_owner_pie`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_station_owner_pie` AS select '分组' AS `Series`,`t`.`owner` AS `Argument`,count(1) AS `Value` from (select `sis`.`t_station`.`id` AS `id`,(case `sis`.`t_station`.`owner` when '1' then '民用' else '军用' end) AS `owner` from `sis`.`t_station`) `t` group by `t`.`owner`;

-- Dumping structure for view sis.v_station_owner_statistics
DROP VIEW IF EXISTS `v_station_owner_statistics`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_station_owner_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_station_owner_statistics` AS select `t`.`owner` AS `owner`,count(1) AS `count` from (select `sis`.`t_station`.`id` AS `id`,(case `sis`.`t_station`.`owner` when '1' then '民用' else '军用' end) AS `owner` from `sis`.`t_station`) `t` group by `t`.`owner`;

-- Dumping structure for view sis.v_station_pie
DROP VIEW IF EXISTS `v_station_pie`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_station_pie`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_station_pie` AS select '分组' AS `Series`,`t`.`name` AS `Argument`,count(1) AS `Value` from (select `sis`.`t_station`.`id` AS `id`,(case `sis`.`t_station`.`type` when '1' then '广播台' when '2' then '监测台' when '3' then '侦测台' when '4' then '干扰台' when '5' then '通信台' when '6' then '发射台' when '7' then '侦干一体' when '8' then '侦扰播一体' else '其它台' end) AS `name` from `sis`.`t_station` where ((`sis`.`t_station`.`type` = '3') or (`sis`.`t_station`.`type` = '4'))) `t` group by `t`.`name`;

-- Dumping structure for view sis.v_station_type_statistics
DROP VIEW IF EXISTS `v_station_type_statistics`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_station_type_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_station_type_statistics` AS select `t`.`name` AS `name`,count(1) AS `count` from (select `sis`.`t_station`.`id` AS `id`,(case `sis`.`t_station`.`type` when '1' then '广播台' when '2' then '监测台' when '3' then '侦测台' when '4' then '干扰台' when '5' then '通信台' when '6' then '发射台' when '7' then '侦干一体' when '8' then '侦扰播一体' else '其它台' end) AS `name` from `sis`.`t_station`) `t` group by `t`.`name`;

-- Dumping structure for view sis.v_task
DROP VIEW IF EXISTS `v_task`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_task`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_task` AS select `tmp`.`id` AS `id`,`tmp`.`name` AS `name`,`tmp`.`type` AS `type`,`tmp`.`purpose` AS `purpose`,`tmp`.`region` AS `region`,`tmp`.`source` AS `source`,`tmp`.`start_time` AS `start_time`,`tmp`.`end_time` AS `end_time`,`tmp`.`description` AS `description`,`tmp`.`remarks` AS `remarks`,`tmp`.`status` AS `status`,(case when isnull(group_concat(`tmp`.`exec_unit` separator ',')) then ' ' else group_concat(`tmp`.`exec_unit` separator ',') end) AS `exec_unit`,(case when isnull(group_concat(`tmp`.`exec_device` separator ',')) then ' ' else group_concat(`tmp`.`exec_device` separator ',') end) AS `exec_device` from (select `t`.`id` AS `id`,`t`.`name` AS `name`,(case `t`.`type` when '0' then '监测' when '1' then '干扰' when '2' then '广播' else '通信' end) AS `type`,`t`.`purpose` AS `purpose`,`t`.`region` AS `region`,`t`.`source` AS `source`,`t`.`start_time` AS `start_time`,`t`.`end_time` AS `end_time`,`t`.`description` AS `description`,`t`.`remarks` AS `remarks`,(case `t`.`status` when '0' then '未开始' when '1' then '进行中' when '2' then '已完成' else '未开始' end) AS `status`,`td`.`equipment_type` AS `equipment_type`,`td`.`equipment_id` AS `equipment_id`,`td`.`exec_unit` AS `exec_unit`,(case `td`.`equipment_type` when '1' then `es`.`name` when '2' then `s`.`name` else `d`.`name` end) AS `exec_device` from ((((`sis`.`t_task` `t` left join `sis`.`t_task_detail` `td` on((`t`.`id` = `td`.`task_id`))) left join `sis`.`t_equipsys` `es` on(((`td`.`equipment_id` = `es`.`id`) and (`td`.`equipment_type` = 1)))) left join `sis`.`t_station` `s` on(((`td`.`equipment_id` = `s`.`id`) and (`td`.`equipment_type` = 2)))) left join `sis`.`t_device` `d` on(((`td`.`equipment_id` = `d`.`id`) and (`td`.`equipment_type` = 3))))) `tmp` group by `tmp`.`id`,`tmp`.`name`,`tmp`.`type`,`tmp`.`purpose`,`tmp`.`region`,`tmp`.`source`,`tmp`.`start_time`,`tmp`.`end_time`,`tmp`.`description`,`tmp`.`remarks`,`tmp`.`status`;

-- Dumping structure for view sis.v_test
DROP VIEW IF EXISTS `v_test`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_test`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sis`@`%` SQL SECURITY DEFINER VIEW `v_test` AS select `td`.`id` AS `id`,`td`.`name` AS `name`,(case `td`.`status` when '1' then '开' when '-1' then '异常' else '关' end) AS `status`,(case `td`.`owner` when '1' then '民用' else '军用' end) AS `owner`,`td`.`mtbf` AS `mtbf`,`td`.`belongsto` AS `belongsto`,`t1`.`name` AS `tosys`,`t1`.`location` AS `location`,`td`.`level` AS `level`,`t1`.`longitude` AS `longitude`,`t1`.`latitude` AS `latitude` from (`sis`.`t_device` `td` join (select `te`.`name` AS `name`,`te`.`belongsto` AS `belongsto`,`te`.`owner` AS `owner`,`te`.`location` AS `location`,`ted`.`equipment_id` AS `equipment_id`,`te`.`longitude` AS `longitude`,`te`.`latitude` AS `latitude` from (`sis`.`t_equipsys` `te` join `sis`.`t_equipsys_detail` `ted`) where ((`te`.`id` = `ted`.`equipsys_id`) and (`ted`.`type` = 1))) `t1` on((`td`.`id` = `t1`.`equipment_id`)));

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
