package com.mindai.model;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * Generated by JFinal, do not modify this file.
 * <pre>
 * Example:
 * public void configPlugin(Plugins me) {
 *     ActiveRecordPlugin arp = new ActiveRecordPlugin(...);
 *     _MappingKit.mapping(arp);
 *     me.add(arp);
 * }
 * </pre>
 */
public class _MappingKit {

	public static void mapping(ActiveRecordPlugin arp) {
		arp.addMapping("data_source", "id", DataSource.class);
		arp.addMapping("execute_list", "id", ExecuteList.class);
		arp.addMapping("job_list", "id", JobList.class);
		arp.addMapping("schedule_info", "id", ScheduleInfo.class);
	}
}

