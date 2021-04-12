set password=password('<%= p("mariadb.admin_user.password") %>');
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '<%= p("mariadb.admin_user.password") %>' WITH GRANT OPTION;

<% if p("cce_enable") %>
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'vcap'@'localhost' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("mariadb.admin_user.password") %>') WITH GRANT OPTION;
<% end %>

FLUSH PRIVILEGES;


CREATE DATABASE /*!32312 IF NOT EXISTS*/`webide` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `webide`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for web_ide_info
-- ----------------------------
DROP TABLE IF EXISTS `web_ide_info`;
CREATE TABLE `web_ide_info` (
  `service_instance_id` varchar(128) NOT NULL,
  `dashboard_url` varchar(128) NOT NULL,
  `user_id` varchar(128) DEFAULT NULL,
  `use_yn` varchar(1) DEFAULT 'Y',
  `plan_id` varchar(128) NOT NULL,
  `service_id` varchar(128) NOT NULL,
  `space_guid` varchar(128) NOT NULL,
  `organization_guid` varchar(128) NOT NULL,
  PRIMARY KEY (`service_instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for web_ide_service_list
-- ----------------------------
DROP TABLE IF EXISTS `web_ide_service_list`;
CREATE TABLE `web_ide_service_list` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `web_ide_service` varchar(128) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for on_demand_info
-- ----------------------------
DROP TABLE IF EXISTS `on_demand_info`;
CREATE TABLE `on_demand_info`  (
  `service_instance_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dashboard_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `use_yn` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y',
  `plan_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `service_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `space_guid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `organization_guid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vm_instance_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `app_guid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `app_parameter` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`service_instance_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

<% if p("cce_enable") %>
SET FOREIGN_KEY_CHECKS = 1;
<% end %>

