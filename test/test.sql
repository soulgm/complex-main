
CREATE TABLE `personal_interview_practice_record` (
                                                      `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                                                      `type` tinyint not null default 0 COMMENT '面试类型 1:专项训练  2：公司模拟',
                                                      `paper_id` bigint NOT NULL default 0 COMMENT '试卷id',
                                                      `resume_id` bigint NOT NULL default 0 COMMENT '简历id',
                                                      `job_title` varchar(512) NOT NULL DEFAULT "" COMMENT '岗位名称',
                                                      `job_desc` text NOT NULL COMMENT '岗位描述',
                                                      `duration` bigint NOT NULL default 0 COMMENT '时长(单位：secord)',
                                                      `status`  tinyint not null default 0 COMMENT '面试状态',
                                                      `report_status`  tinyint not null default 0 COMMENT '面试报告状态',
                                                      `promotion_proposal` text NOT NULL COMMENT '后续提升建议',
                                                      `created_by` bigint NOT NULL COMMENT '创建人ID',
                                                      `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
                                                      `modified_by` bigint NOT NULL COMMENT '修改人ID',
                                                      `modified_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '修改时间',
                                                      `op_id` bigint NOT NULL DEFAULT '0' COMMENT '附身id',
                                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB  COMMENT='个人模拟面试记录';