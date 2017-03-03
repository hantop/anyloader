CREATE TABLE if not exists `data_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sourceName` varchar(120) NOT NULL COMMENT '����Դ����',
  `ip` varchar(200) NOT NULL COMMENT 'IP',
  `port` int(6) NOT NULL COMMENT 'port',
  `userName` varchar(120) NOT NULL DEFAULT '' COMMENT '�û���',
  `password` varchar(120) NOT NULL DEFAULT '' COMMENT '����',
  `dbType` int(2) NOT NULL DEFAULT 1 COMMENT '���ͣ�1ΪMysql 2Ϊmongodb',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COMMENT='����Դ��';

CREATE TABLE if not exists `job_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobName` varchar(120) NOT NULL COMMENT '��������',
  `refSrcDbSourceId` int(10) NOT NULL COMMENT '��������ԴID',
  `srcBase` varchar(120) NOT NULL COMMENT '��Դ��',
  `srcTable` varchar(200) NOT NULL COMMENT '��Դ��',
  `refDstDbSourceId` int(10) NOT NULL COMMENT '����Ŀ������ԴID',
  `dstBase` varchar(120) NOT NULL COMMENT 'Ŀ���',
  `dstTable` varchar(200) NOT NULL COMMENT 'Ŀ���',
  `incrementColumn` varchar(120)  COMMENT '������',
  `incrementColumnVal` varchar(120)  COMMENT '������ֵ',
  `jobRule` text COMMENT 'Drools����',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COMMENT='�����';

CREATE TABLE if not exists `schedule_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scheduleName` varchar(120) NOT NULL COMMENT '���ȼƻ�����',
  `refJobId` int(10) NOT NULL COMMENT '��������ID',
  `scheduleType` int(2) NOT NULL DEFAULT 1 COMMENT '�������ͣ�1Ϊһ���ԣ�2Ϊ�Զ���ƻ�',
  `schedule` varchar(120) NOT NULL COMMENT '���ȼƻ�',
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0��ʾ��ʼ����1��ʾ�����У�2��ʾ�ɹ���3,��ʾʧ��',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COMMENT='���ȱ�';

CREATE TABLE if not exists `execute_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `refScheduleId` int(10) NOT NULL COMMENT '��������ID',
  `executeLog` text NOT NULL COMMENT 'ִ������',
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0��ʾ��ʼ����1��ʾ�����У�2��ʾ�ɹ���3,��ʾʧ��',
  `startTime` varchar(120) COMMENT '��ʼʱ��',
  `endTime` varchar(120) COMMENT '����ʱ��',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COMMENT='����ִ�б�';