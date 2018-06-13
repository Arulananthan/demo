

CREATE TABLE `academic_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `periods` varchar(100) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `type` varchar(100) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `academic_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `academic_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `inst_id` int(12) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `acadyr_shortcode` varchar(255) NOT NULL,
  `no_sanc_seats` int(11) NOT NULL,
  `no_seats` int(11) NOT NULL,
  `for_res_cat` int(11) NOT NULL,
  `total_san_post` int(11) NOT NULL,
  `no_terms` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `astatus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `academic_year_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_id` int(11) NOT NULL,
  `term_name` varchar(50) NOT NULL,
  `term_start` date DEFAULT NULL,
  `term_end` date DEFAULT NULL,
  `added_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `activity_allotment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `aid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `assigned_to` varchar(25) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `activity_assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `adate` date NOT NULL,
  `caid` int(11) NOT NULL,
  `weightage` int(11) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `activity_discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL,
  `adate` date NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `sis_id` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `activity_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `adate` date NOT NULL,
  `sis` varchar(255) NOT NULL,
  `sqid` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `activity_occurence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL COMMENT 'sis_group_courses.id',
  `duration` int(11) NOT NULL,
  `min_days` int(11) NOT NULL,
  `weightage` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  `hour` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `activity_sis_assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `adate` date NOT NULL,
  `aaid` int(11) NOT NULL,
  `student` varchar(100) NOT NULL,
  `mark` int(11) NOT NULL,
  `average` int(11) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `s_note` text NOT NULL,
  `t_note` text NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `activity_sis_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `adate` date NOT NULL,
  `sis` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `admission_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(155) NOT NULL,
  `admn_title` varchar(55) NOT NULL,
  `admn_program` varchar(55) NOT NULL,
  `admn_description` varchar(500) NOT NULL,
  `appn_fee` varchar(55) NOT NULL,
  `online_fee` varchar(30) NOT NULL,
  `admn_validfrom` varchar(30) NOT NULL,
  `admn_validto` varchar(30) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `alumini_edudetails` (
  `alumini_id` int(11) NOT NULL AUTO_INCREMENT,
  `alumini_userid` varchar(55) NOT NULL,
  `alumini_usertype` int(11) NOT NULL,
  `degree` varchar(15) NOT NULL,
  `program` varchar(15) NOT NULL,
  `major` varchar(15) NOT NULL,
  `institution` varchar(55) NOT NULL,
  `start_year` varchar(15) NOT NULL,
  `year_of_passing` varchar(15) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`alumini_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `alumini_info` (
  `alumini_id` int(11) NOT NULL AUTO_INCREMENT,
  `alumini_userid` varchar(55) NOT NULL,
  `alumini_usertype` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `alumini_photo` blob NOT NULL,
  `alumini_department` int(11) NOT NULL,
  `alumini_program` int(11) NOT NULL,
  `joining_date` varchar(15) NOT NULL,
  `graduation_date` varchar(15) NOT NULL,
  `alumini_address` varchar(55) NOT NULL,
  `alumini_state` varchar(15) NOT NULL,
  `alumini_city` varchar(15) NOT NULL,
  `alumini_pincode` varchar(15) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`alumini_id`),
  UNIQUE KEY `alumini_userid` (`alumini_userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `alumini_workexp` (
  `alumini_id` int(11) NOT NULL AUTO_INCREMENT,
  `alumini_userid` varchar(55) NOT NULL,
  `alumini_usertype` int(11) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `job_title` varchar(55) NOT NULL,
  `start_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `role` varchar(55) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`alumini_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `application_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(55) NOT NULL,
  `program_name` varchar(55) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `caste` varchar(15) NOT NULL,
  `nationality` varchar(15) NOT NULL,
  `mother_tongue` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email_id` varchar(155) NOT NULL,
  `physical_condition` varchar(15) NOT NULL,
  `address1` varchar(155) NOT NULL,
  `address2` varchar(155) NOT NULL,
  `state` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `zip_code` varchar(15) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `distance` varchar(15) NOT NULL,
  `father_name` varchar(55) NOT NULL,
  `mother_name` varchar(55) NOT NULL,
  `father_qualification` varchar(55) NOT NULL,
  `mother_qualification` varchar(55) NOT NULL,
  `father_occupation` varchar(55) NOT NULL,
  `mother_occupation` varchar(55) NOT NULL,
  `father_salary` varchar(15) NOT NULL,
  `mother_salary` varchar(15) NOT NULL,
  `father_mobileno` varchar(15) NOT NULL,
  `mother_mobileno` varchar(15) NOT NULL,
  `father_emailid` varchar(155) NOT NULL,
  `mother_emailid` varchar(155) NOT NULL,
  `father_alumini` varchar(15) NOT NULL,
  `mother_alumini` varchar(15) NOT NULL,
  `sibling_institute_type` varchar(15) NOT NULL,
  `sibling_name` varchar(55) NOT NULL,
  `sibling_roll_no` varchar(55) NOT NULL,
  `sibling_course` varchar(55) NOT NULL,
  `courses1` varchar(55) NOT NULL,
  `institute1` varchar(55) NOT NULL,
  `start_year1` varchar(15) NOT NULL,
  `end_year1` varchar(15) NOT NULL,
  `grade1` varchar(15) NOT NULL,
  `percentage1` varchar(15) NOT NULL,
  `courses2` varchar(55) NOT NULL,
  `institute2` varchar(55) NOT NULL,
  `start_year2` varchar(15) NOT NULL,
  `end_year2` varchar(15) NOT NULL,
  `grade2` varchar(15) NOT NULL,
  `percentage2` varchar(15) NOT NULL,
  `courses3` varchar(55) NOT NULL,
  `institute3` varchar(55) NOT NULL,
  `start_year3` varchar(15) NOT NULL,
  `end_year3` varchar(15) NOT NULL,
  `grade3` varchar(15) NOT NULL,
  `percentage3` varchar(15) NOT NULL,
  `courses4` varchar(55) NOT NULL,
  `institute4` varchar(55) NOT NULL,
  `start_year4` varchar(15) NOT NULL,
  `end_year4` varchar(15) NOT NULL,
  `grade4` varchar(15) NOT NULL,
  `percentage4` varchar(15) NOT NULL,
  `courses5` varchar(55) NOT NULL,
  `institute5` varchar(55) NOT NULL,
  `start_year5` varchar(15) NOT NULL,
  `end_year5` varchar(15) NOT NULL,
  `grade5` varchar(15) NOT NULL,
  `percentage5` varchar(15) NOT NULL,
  `achievements` varchar(155) NOT NULL,
  `seeking_admn_rte` varchar(15) NOT NULL,
  `profile_picture` blob NOT NULL,
  `aadhar_no` varchar(15) NOT NULL,
  `aadhar_file` varchar(155) NOT NULL,
  `birth_cert_no` varchar(15) NOT NULL,
  `birth_cert_file` varchar(155) NOT NULL,
  `address_proof_name` varchar(15) NOT NULL,
  `address_proof_file` varchar(155) NOT NULL,
  `terms_and_condition` varchar(555) NOT NULL,
  `payment_type` varchar(15) NOT NULL,
  `payment_status` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `assign_fees` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `fees_id` varchar(255) NOT NULL,
  PRIMARY KEY (`assign_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;




CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(100) NOT NULL,
  `certificate_type` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `transfer_time` varchar(100) NOT NULL,
  `transfer_status` varchar(100) NOT NULL,
  `request_date` datetime NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `committee_main` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `commitee_name` varchar(200) NOT NULL,
  `objective` blob NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` date NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `commitee_name` (`commitee_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `committee_meeting` (
  `meeting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `commitee_id` int(200) NOT NULL,
  `schedule_date` date NOT NULL,
  `schedule_time` time NOT NULL,
  `location` varchar(200) NOT NULL,
  `agenda` blob NOT NULL,
  `attendees` varchar(200) NOT NULL,
  `mom` blob NOT NULL,
  `resolution` blob NOT NULL,
  `action_items` blob NOT NULL,
  `meeting_file` varchar(300) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` date NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `committee_members` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `academic_year` varchar(100) NOT NULL,
  `commitee_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `course_assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gcid` int(11) NOT NULL COMMENT 'sis_group_courses.id',
  `assesment_type` varchar(255) NOT NULL,
  `weightage` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `course_syllabus_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `co_out_id` varchar(50) NOT NULL,
  `objective` text NOT NULL,
  `descrp` text NOT NULL,
  `tot_hours` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `course_teaching_learning` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `content_title` varchar(100) NOT NULL,
  `con_detail` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `syl_id` varchar(100) NOT NULL,
  `mat_type` int(11) NOT NULL,
  `url_link` varchar(100) NOT NULL,
  `file_path` varchar(50) NOT NULL,
  `ext_lnk` varchar(200) NOT NULL,
  `tags_con` varchar(500) NOT NULL,
  `lpublish` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `curricular_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curricular_type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `levels` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `coordinator_name` varchar(255) NOT NULL,
  `speaker_name` varchar(255) NOT NULL,
  `event_type` int(11) NOT NULL,
  `outcome` varchar(255) NOT NULL,
  `committee` int(11) NOT NULL,
  `paid_by` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `no_of_attendees` varchar(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `depart_id` int(11) NOT NULL,
  `date_of_intro` date DEFAULT NULL,
  `course_type` varchar(20) NOT NULL,
  `objective` blob NOT NULL,
  `course_employ` int(11) NOT NULL,
  `employ_details` text NOT NULL,
  `value_added` int(11) NOT NULL,
  `value_details` text NOT NULL,
  `levels` varchar(20) NOT NULL,
  `credits` int(11) NOT NULL,
  `pre_requsite` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_course_books` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `book_type` varchar(20) NOT NULL,
  `book_name` varchar(500) NOT NULL,
  `author_name` varchar(500) NOT NULL,
  `year_pub` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_course_books_temp` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `book_type` varchar(20) NOT NULL,
  `book_name` varchar(500) NOT NULL,
  `author_name` varchar(500) NOT NULL,
  `year_pub` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_course_outcome` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `co_id` int(11) NOT NULL,
  `course_state` text NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_course_outcome_temp` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `co_id` int(11) NOT NULL,
  `course_state` text NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_course_revisions` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `revision_date` date NOT NULL,
  `revision_descrp` text NOT NULL,
  `reason_revsion` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_course_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `co_out_id` varchar(50) NOT NULL,
  `objective` text NOT NULL,
  `descrp` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `total_hours` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_id_2` (`parent_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_program` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `depart_id` int(11) NOT NULL,
  `short_code` varchar(20) NOT NULL,
  `program_name` varchar(300) NOT NULL,
  `program_induc_date` date DEFAULT NULL,
  `program_objective` text,
  `program_type` varchar(50) DEFAULT NULL,
  `program_cat` varchar(20) DEFAULT NULL,
  `program_years` int(11) DEFAULT NULL,
  `program_months` int(11) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dstatus` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_program_outcome` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `program_state` text NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `dep_program_outcome_temp` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `program_state` text NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `fees_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `fees_name` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `fees_options` varchar(50) NOT NULL,
  `no_of_installments` varchar(50) NOT NULL,
  `fees_amount` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `late_fees` varchar(1000) NOT NULL,
  `duedate_latefees` varchar(100) NOT NULL,
  `multiple_fees_amount` varchar(100) NOT NULL,
  `multiple_due_date` varchar(100) NOT NULL,
  `multiple_late_fees` varchar(100) NOT NULL,
  `multiple_duedate_latefees` varchar(100) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hm_blocks` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `block_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `warden_name` varchar(50) NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hm_mess_card` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `food_type` varchar(50) NOT NULL,
  `beverage_type` varchar(50) NOT NULL,
  `messcard_type` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hm_rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `institute_id` int(11) NOT NULL,
  `room_no` varchar(50) NOT NULL,
  `no_of_beds` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hm_stud_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `block_id` varchar(50) NOT NULL,
  `room_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hm_visitors` (
  `vstr_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `date_visit` varchar(50) NOT NULL,
  `in_time` varchar(50) NOT NULL,
  `out_time` varchar(50) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `relation` varchar(50) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  PRIMARY KEY (`vstr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `holiday_saturdays` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `acad_id` int(11) NOT NULL,
  `sat_days` varchar(100) NOT NULL,
  `login_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `holiday_week_month_days` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `acad_id` int(11) NOT NULL,
  `mon_days` varchar(100) NOT NULL,
  `login_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `holidays` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` varchar(100) NOT NULL,
  `holiday_type` varchar(100) NOT NULL,
  `acad_id` int(11) NOT NULL,
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hstatus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1067 DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_consultancy` (
  `consultancy_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `consultancy_type` varchar(100) NOT NULL,
  `cons_title` varchar(255) NOT NULL,
  `contact_details` varchar(255) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `revenue_type` varchar(100) NOT NULL,
  `total_revenue` varchar(255) NOT NULL,
  `no_of_beneficiary` varchar(255) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`consultancy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `user_type` int(11) NOT NULL,
  `aadhar_no` varchar(50) NOT NULL,
  `aadhar_doi` varchar(50) NOT NULL,
  `aadhar_valid` varchar(50) NOT NULL,
  `aadhar_file` varchar(500) NOT NULL,
  `pan_no` varchar(50) NOT NULL,
  `pan_doi` varchar(50) NOT NULL,
  `pan_valid` varchar(50) NOT NULL,
  `pan_file` varchar(500) NOT NULL,
  `driving_no` varchar(50) NOT NULL,
  `driving_doi` varchar(50) NOT NULL,
  `driving_valid` varchar(50) NOT NULL,
  `driving_file` varchar(500) NOT NULL,
  `passport_no` varchar(50) NOT NULL,
  `passport_doi` varchar(50) NOT NULL,
  `passport_valid` varchar(50) NOT NULL,
  `passport_file` varchar(500) NOT NULL,
  `other1_name` varchar(50) NOT NULL,
  `other1_no` varchar(50) NOT NULL,
  `other1_doi` varchar(50) NOT NULL,
  `other1_valid` varchar(50) NOT NULL,
  `other1_file` varchar(500) NOT NULL,
  `other2_name` varchar(50) NOT NULL,
  `other2_no` varchar(50) NOT NULL,
  `other2_doi` varchar(50) NOT NULL,
  `other2_valid` varchar(50) NOT NULL,
  `other2_file` varchar(500) NOT NULL,
  `other3_name` varchar(50) NOT NULL,
  `other3_no` varchar(50) NOT NULL,
  `other3_doi` varchar(50) NOT NULL,
  `other3_valid` varchar(50) NOT NULL,
  `other3_file` varchar(500) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_educational_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `user_type` int(11) NOT NULL,
  `examination` varchar(255) NOT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) NOT NULL,
  `start_year` int(20) NOT NULL,
  `year_of_passing` int(20) NOT NULL,
  `class_obtained` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_employees` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `user_type` int(11) DEFAULT NULL,
  `job_type` int(11) DEFAULT NULL,
  `employee_position` varchar(100) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `state_of_origin` int(11) DEFAULT NULL,
  `mother_tongue` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `wedding_date` varchar(100) DEFAULT NULL,
  `epf_no` varchar(100) DEFAULT NULL,
  `esi_no` varchar(100) DEFAULT NULL,
  `uan_no` varchar(100) NOT NULL,
  `addressline1` varchar(100) DEFAULT NULL,
  `addressline2` varchar(100) DEFAULT NULL,
  `temporary_address1` varchar(100) DEFAULT NULL,
  `temporary_address2` varchar(100) DEFAULT NULL,
  `temporary_city` varchar(100) DEFAULT NULL,
  `temporary_state` varchar(100) DEFAULT NULL,
  `temporary_pincode` varchar(10) DEFAULT NULL,
  `temporary_mobile` varchar(25) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pin_code` varchar(10) DEFAULT NULL,
  `marital_status` varchar(100) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `religion` varchar(55) NOT NULL,
  `caste` varchar(55) NOT NULL,
  `community` varchar(155) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `beneficiary_name` varchar(55) NOT NULL,
  `pay_account_type` varchar(55) NOT NULL,
  `rtgs_no` varchar(100) DEFAULT NULL,
  `bank_address` varchar(100) DEFAULT NULL,
  `bank_address2` varchar(100) DEFAULT NULL,
  `bank_city` varchar(100) DEFAULT NULL,
  `bank_state` varchar(100) DEFAULT NULL,
  `bank_pincode` int(100) DEFAULT NULL,
  `work` varchar(500) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `branch_unit` varchar(100) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `joining_date` varchar(100) DEFAULT NULL,
  `leaving_date` varchar(100) DEFAULT NULL,
  `employee_photo` varchar(100) DEFAULT NULL,
  `employee_status` int(100) DEFAULT NULL,
  `notice_period` int(11) DEFAULT NULL,
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `emergency_name` varchar(100) DEFAULT NULL,
  `emergency_mobile` varchar(100) DEFAULT NULL,
  `indicate` varchar(255) DEFAULT NULL,
  `advertisement` varchar(255) DEFAULT NULL,
  `reference_name` varchar(255) DEFAULT NULL,
  `ref_mob_no` varchar(50) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `appeared` varchar(255) DEFAULT NULL,
  `interview_details` varchar(255) DEFAULT NULL,
  `physical` varchar(255) DEFAULT NULL,
  `physical_disability` varchar(255) DEFAULT NULL,
  `employement` varchar(255) DEFAULT NULL,
  `travel` varchar(255) DEFAULT NULL,
  `flag` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emp_id` (`user_id`),
  KEY `empid_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=606 DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_employment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `user_type` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `from_date` varchar(100) NOT NULL,
  `to_date` varchar(100) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `reason_leaving` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_family_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_grant` (
  `grant_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `name_of_proj` varchar(255) NOT NULL,
  `awarded_date` varchar(100) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `grant_source` int(11) NOT NULL,
  `name_of_grant_agency` varchar(255) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`grant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_language_known` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `user_type` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `speak` varchar(255) DEFAULT '0',
  `read` varchar(255) DEFAULT '0',
  `write` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(100) NOT NULL,
  `ldate` varchar(100) NOT NULL,
  `day_type` varchar(100) NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_name` varchar(255) NOT NULL,
  `max_no_leave_year` varchar(100) NOT NULL,
  `max_no_leave_mth` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_patent` (
  `patent_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `patent_name` varchar(255) NOT NULL,
  `patent_no` int(11) NOT NULL,
  `year_awarded` varchar(100) NOT NULL,
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`patent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_prof_affiliations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `name_prof` varchar(255) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `sponsorer` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `title_paper` varchar(255) NOT NULL,
  `title_book` varchar(255) NOT NULL,
  `title_proc_conf` varchar(255) NOT NULL,
  `name_conf` varchar(255) NOT NULL,
  `nature_conf` int(11) NOT NULL,
  `name_publisher` varchar(255) NOT NULL,
  `nature_publisher` int(11) NOT NULL,
  `year_publication` varchar(255) NOT NULL,
  `isbn_issn_no` varchar(255) NOT NULL,
  `aff_ins_time_publication` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_publications_notified` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `title_paper` varchar(255) NOT NULL,
  `name_journal` varchar(255) NOT NULL,
  `year_publication` varchar(255) NOT NULL,
  `isbn_issn_no` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_seminar` (
  `seminar_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `seminar_type` int(11) NOT NULL,
  `seminar_title` varchar(255) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `details_event` varchar(255) NOT NULL,
  `sponsorer` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `recognation` int(11) NOT NULL,
  `Incentative_details` varchar(255) NOT NULL,
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`seminar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `hrms_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `certification` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `ins_compliances` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `year_publish` int(11) NOT NULL,
  `grad_year1` int(11) NOT NULL,
  `grad_year2` int(11) NOT NULL,
  `affiliated` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `affilate_file` varchar(200) NOT NULL,
  `sra` int(11) NOT NULL,
  `ugc_2f` int(11) NOT NULL,
  `ugc_2f_date` date NOT NULL,
  `ugc_2f_file` text NOT NULL,
  `ugc_12b` int(11) NOT NULL,
  `ugc_12b_date` date NOT NULL,
  `ugc_12b_file` text NOT NULL,
  `ugc_upe` int(11) NOT NULL,
  `ugc_upe_date` date NOT NULL,
  `ugc_upe_file` text NOT NULL,
  `nature_of_univ` int(11) NOT NULL,
  `nature_of_univ_file` text NOT NULL,
  `type_of_univ` int(11) NOT NULL,
  `type_of_univ_file` text NOT NULL,
  `par_aut_doc` int(11) NOT NULL,
  `par_aut_doc_file` text NOT NULL,
  `aishe` int(11) NOT NULL,
  `aishe_date` date NOT NULL,
  `aishe_file` text NOT NULL,
  `inst_aut` int(11) NOT NULL,
  `inst_aut_file` text NOT NULL,
  `self_certify` int(11) NOT NULL,
  `self_certify_file` text NOT NULL,
  `declare_stat` int(11) NOT NULL,
  `declare_link` varchar(100) NOT NULL,
  `mou` int(11) NOT NULL,
  `mou_file` text NOT NULL,
  `committee` varchar(100) NOT NULL,
  `iqac_formed` int(11) NOT NULL,
  `iqac_date` date NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comp_status` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `ins_departments` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `depart_name` varchar(100) NOT NULL,
  `dept_hod` int(11) NOT NULL,
  `vision` blob NOT NULL,
  `mission` blob NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `depart_name` (`depart_name`),
  KEY `dept_hod` (`dept_hod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `manage_leaves` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `att_date` varchar(50) NOT NULL,
  `att_day_type` varchar(50) NOT NULL,
  `att_leave_type` varchar(50) NOT NULL,
  `att_details` varchar(155) NOT NULL,
  `att_leave_status` varchar(30) NOT NULL,
  `att_comments` varchar(255) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `pay_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `user_type` int(11) NOT NULL,
  `fees_id` varchar(555) NOT NULL,
  `fee_amt` varchar(555) NOT NULL,
  `late_fee` varchar(555) NOT NULL,
  `total_amount` varchar(555) NOT NULL,
  `paid_by` varchar(55) NOT NULL,
  `adjustment` varchar(100) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `adjustment_tot` varchar(255) NOT NULL,
  `convenience` varchar(255) NOT NULL,
  `total_amt` varchar(100) NOT NULL,
  `Date_transaction` varchar(30) NOT NULL,
  `Bank_name` varchar(155) NOT NULL,
  `Cheque_dd_no` varchar(55) NOT NULL,
  `Cheque_dd_date` varchar(30) NOT NULL,
  `Cheque_dd_amt` varchar(155) NOT NULL,
  `online_payment_id` varchar(155) NOT NULL,
  `transaction_no` varchar(155) NOT NULL,
  `paid_status` varchar(55) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `qualitative` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ins_id` int(11) NOT NULL,
  `super_parent` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `child_id` varchar(255) NOT NULL,
  `content` blob NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `user_type` int(11) NOT NULL,
  `aadhar_no` varchar(50) NOT NULL,
  `aadhar_doi` varchar(50) NOT NULL,
  `aadhar_valid` varchar(50) NOT NULL,
  `aadhar_file` varchar(500) NOT NULL,
  `pan_no` varchar(50) NOT NULL,
  `pan_doi` varchar(50) NOT NULL,
  `pan_valid` varchar(50) NOT NULL,
  `pan_file` varchar(500) NOT NULL,
  `driving_no` varchar(50) NOT NULL,
  `driving_doi` varchar(50) NOT NULL,
  `driving_valid` varchar(50) NOT NULL,
  `driving_file` varchar(500) NOT NULL,
  `passport_no` varchar(50) NOT NULL,
  `passport_doi` varchar(50) NOT NULL,
  `passport_valid` varchar(50) NOT NULL,
  `passport_file` varchar(500) NOT NULL,
  `birth_cert_no` varchar(55) NOT NULL,
  `birth_cert_doi` varchar(55) NOT NULL,
  `birth_cert_file` varchar(500) NOT NULL,
  `community_no` varchar(55) NOT NULL,
  `community_doi` varchar(55) NOT NULL,
  `community_file` varchar(500) NOT NULL,
  `transfer_cert_no` varchar(55) NOT NULL,
  `transfer_cert_doi` varchar(55) NOT NULL,
  `transfer_cert_file` varchar(500) NOT NULL,
  `other1_name` varchar(50) NOT NULL,
  `other1_no` varchar(50) NOT NULL,
  `other1_doi` varchar(50) NOT NULL,
  `other1_valid` varchar(50) NOT NULL,
  `other1_file` varchar(500) NOT NULL,
  `other2_name` varchar(50) NOT NULL,
  `other2_no` varchar(50) NOT NULL,
  `other2_doi` varchar(50) NOT NULL,
  `other2_valid` varchar(50) NOT NULL,
  `other2_file` varchar(500) NOT NULL,
  `other3_name` varchar(50) NOT NULL,
  `other3_no` varchar(50) NOT NULL,
  `other3_doi` varchar(50) NOT NULL,
  `other3_valid` varchar(50) NOT NULL,
  `other3_file` varchar(500) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_enotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL COMMENT 'activity_occurence.id',
  `adate` date NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `imgur_link` varchar(255) NOT NULL,
  `imgur_id` varchar(255) NOT NULL,
  `imgur_deletehash` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_family_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `guardian_father_name` varchar(150) NOT NULL,
  `guardian_mother_name` varchar(150) NOT NULL,
  `guardian_father_occupation` varchar(150) NOT NULL,
  `guardian_mother_occupation` varchar(150) NOT NULL,
  `guardian_father_annual_salary` varchar(100) NOT NULL,
  `guardian_mother_annual_salary` varchar(100) NOT NULL,
  `guardian_father_mobile_no` varchar(100) NOT NULL,
  `guardian_mother_mobile_no` varchar(100) NOT NULL,
  `guardian_father_email_id` varchar(255) NOT NULL,
  `guardian_mother_email_id` varchar(255) NOT NULL,
  `guardian_father_qualification` varchar(100) NOT NULL,
  `guardian_mother_qualification` varchar(100) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_group_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_year` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `faculty_id` varchar(255) NOT NULL,
  `weekly_occurence` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `faculty_incharge` varchar(255) NOT NULL,
  `academic_year` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sis_list` text NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` varchar(100) NOT NULL,
  `ldate` varchar(100) NOT NULL,
  `day_type` varchar(100) NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_leave_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_name` varchar(255) NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_medical_info` (
  `med_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `doctor_mobile` varchar(100) NOT NULL,
  `allergies` varchar(255) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `any_known_condition` varchar(255) NOT NULL,
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`med_info_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_medical_symp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `Date` varchar(155) NOT NULL,
  `symptoms` varchar(255) NOT NULL,
  `height` varchar(155) NOT NULL,
  `weight` varchar(155) NOT NULL,
  `temperature` varchar(155) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sis_students_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `student_photo` varchar(500) NOT NULL,
  `sex` int(11) NOT NULL,
  `identification_marks` varchar(500) NOT NULL,
  `department` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `study_type` int(11) NOT NULL,
  `current_year_or_grade` varchar(100) NOT NULL,
  `section` varchar(50) NOT NULL,
  `joining_date` varchar(100) NOT NULL,
  `graduation_date` varchar(100) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `community` varchar(155) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `state_of_origin` int(11) NOT NULL,
  `nationality` int(11) NOT NULL,
  `permanant_address` varchar(255) NOT NULL,
  `permanant_state` varchar(100) NOT NULL,
  `permanant_city` varchar(100) NOT NULL,
  `permanant_pincode` varchar(50) NOT NULL,
  `temporary_address` varchar(255) NOT NULL,
  `temporary_state` varchar(100) NOT NULL,
  `temporary_city` varchar(100) NOT NULL,
  `temporary_pincode` varchar(50) NOT NULL,
  `blood_group` varchar(30) NOT NULL,
  `physical_disability` varchar(15) NOT NULL,
  `emergency_name` varchar(55) NOT NULL,
  `emergency_mobile` varchar(100) NOT NULL,
  `ref1_name` varchar(55) NOT NULL,
  `ref1_mobile` varchar(30) NOT NULL,
  `ref1_email` varchar(155) NOT NULL,
  `ref1_associate` varchar(155) NOT NULL,
  `ref2_name` varchar(55) NOT NULL,
  `ref2_mobile` varchar(30) NOT NULL,
  `ref2_email` varchar(155) NOT NULL,
  `ref2_associate` varchar(155) NOT NULL,
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `sra_name` varchar(150) NOT NULL,
  `sra_short_code` varchar(30) NOT NULL,
  `sra_file` text NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `student_constraints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acad_year` int(11) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `constraint_name` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `weight_percentage` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `survey_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `survey_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scid` int(11) NOT NULL,
  `question` text NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tbl_notice_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewer` varchar(255) NOT NULL,
  `date_of_notice` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` blob NOT NULL,
  `activate` varchar(255) NOT NULL,
  `notice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tbl_push_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `message` blob NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tce_answers` (
  `answer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `answer_question_id` bigint(20) unsigned NOT NULL,
  `answer_question_type` int(11) NOT NULL,
  `answer_description` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_explanation` text COLLATE utf8_unicode_ci,
  `answer_isright` tinyint(1) NOT NULL DEFAULT '0',
  `answer_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `answer_position` bigint(20) unsigned DEFAULT NULL,
  `answer_keyboard_key` smallint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `p_answer_question_id` (`answer_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `tce_custom_test_papers` (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `part_name` varchar(500) NOT NULL,
  `question_id` varchar(70) NOT NULL,
  `num_ans` int(11) NOT NULL,
  `marks_carry` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tce_questions` (
  `question_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question_subject_id` bigint(20) unsigned NOT NULL,
  `question_description` text COLLATE utf8_unicode_ci NOT NULL,
  `question_explanation` text COLLATE utf8_unicode_ci,
  `question_type` smallint(3) unsigned NOT NULL DEFAULT '1',
  `question_difficulty` smallint(6) NOT NULL DEFAULT '1',
  `question_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `question_position` bigint(20) unsigned DEFAULT NULL,
  `question_timer` smallint(10) DEFAULT NULL,
  `question_fullscreen` tinyint(1) NOT NULL DEFAULT '0',
  `question_inline_answers` tinyint(1) NOT NULL DEFAULT '0',
  `question_auto_next` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `p_question_subject_id` (`question_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `tce_questions_syllabus` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `sylb_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tce_test_subject_set` (
  `tsubset_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tsubset_test_id` bigint(20) unsigned NOT NULL,
  `tsubset_type` smallint(6) NOT NULL DEFAULT '1',
  `tsubset_difficulty` smallint(6) NOT NULL DEFAULT '1',
  `tsubset_quantity` smallint(6) NOT NULL DEFAULT '1',
  `tsubset_answers` smallint(6) NOT NULL DEFAULT '0',
  `qids` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  PRIMARY KEY (`tsubset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `tce_tests` (
  `test_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `test_description` text COLLATE utf8_unicode_ci NOT NULL,
  `test_begin_time` datetime DEFAULT NULL,
  `test_end_time` datetime DEFAULT NULL,
  `test_duration_time` smallint(10) unsigned NOT NULL DEFAULT '0',
  `test_ip_range` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*.*.*.*',
  `test_results_to_users` tinyint(1) NOT NULL DEFAULT '0',
  `test_report_to_users` tinyint(1) NOT NULL DEFAULT '0',
  `test_score_right` decimal(10,3) DEFAULT '1.000',
  `test_score_wrong` decimal(10,3) DEFAULT '0.000',
  `test_score_unanswered` decimal(10,3) DEFAULT '0.000',
  `test_max_score` decimal(10,3) NOT NULL DEFAULT '0.000',
  `test_user_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `test_score_threshold` decimal(10,3) DEFAULT '0.000',
  `test_random_questions_select` tinyint(1) NOT NULL DEFAULT '1',
  `test_random_questions_order` tinyint(1) NOT NULL DEFAULT '1',
  `test_questions_order_mode` smallint(3) unsigned NOT NULL DEFAULT '0',
  `test_random_answers_select` tinyint(1) NOT NULL DEFAULT '1',
  `test_random_answers_order` tinyint(1) NOT NULL DEFAULT '1',
  `test_answers_order_mode` smallint(3) unsigned NOT NULL DEFAULT '0',
  `test_comment_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `test_menu_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `test_noanswer_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `test_mcma_radio` tinyint(1) NOT NULL DEFAULT '1',
  `test_repeatable` tinyint(1) NOT NULL DEFAULT '0',
  `test_mcma_partial_score` tinyint(1) NOT NULL DEFAULT '1',
  `test_logout_on_timeout` tinyint(1) NOT NULL DEFAULT '0',
  `test_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `syl_id` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `teacher_activity_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL COMMENT 'activity_occurenct.id',
  `adate` date NOT NULL,
  `attendance` varchar(1500) NOT NULL,
  `syllabus` varchar(255) NOT NULL,
  `questions` varchar(255) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `survey_question` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `publish` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `teacher_constraints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(25) NOT NULL,
  `acad_year` int(11) NOT NULL,
  `constraint_name` varchar(255) NOT NULL,
  `con_value_name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `weight_percentage` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `teacher_freeperiods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `adate` date NOT NULL,
  `pid` int(11) NOT NULL,
  `free_activity` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `teacher_leisure_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acad_year` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `gen_status` varchar(100) NOT NULL,
  `xml_filepath` varchar(255) NOT NULL,
  `createddate` datetime NOT NULL,
  `modifieddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tm_bus_route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `route` varchar(30) NOT NULL,
  `start_location` varchar(30) NOT NULL,
  `end_location` varchar(30) NOT NULL,
  `start_time` varchar(15) NOT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tm_bus_stop` (
  `stop_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `id` int(11) NOT NULL,
  `route` varchar(30) NOT NULL,
  `distance` bigint(20) NOT NULL,
  `estimated_time` text NOT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tm_passengers` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `route` varchar(30) NOT NULL,
  `stop` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `tm_vehicle_details` (
  `tm_vehicle_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_id` int(11) NOT NULL,
  `number` varchar(20) NOT NULL,
  `type` text NOT NULL,
  `capacity` int(11) NOT NULL,
  `vehicle_condition` text NOT NULL,
  `vehicle_status` text NOT NULL,
  `rfid` varchar(30) NOT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `conductor` varchar(50) DEFAULT NULL,
  `route` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tm_vehicle_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `users_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `user_id_2` (`user_id`),
  KEY `first_name_2` (`first_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


