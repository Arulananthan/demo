

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
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`alumini_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO alumini_edudetails VALUES("1","A_DBIP/CE/L15/001","3","5","xcZXC","xzczxc","xzczxc","2017","2020","2018-03-03 17:29:58","1");
INSERT INTO alumini_edudetails VALUES("2","A_DBIP/CE/L15/001","3","5","Scsad","dsrfwer","sdfsdf","2009","2015","2018-03-03 17:29:58","1");



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
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`alumini_id`),
  UNIQUE KEY `alumini_userid` (`alumini_userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO alumini_info VALUES("1","A_DBIP/CE/L15/001","3","0","","4","5","2018-02-15","2018-02-15","","","","","2018-03-03 17:29:59","1");



CREATE TABLE `alumini_workexp` (
  `alumini_id` int(11) NOT NULL AUTO_INCREMENT,
  `alumini_userid` varchar(55) NOT NULL,
  `alumini_usertype` int(11) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `job` varchar(55) NOT NULL,
  `start_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `role` varchar(55) NOT NULL,
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`alumini_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inst_id` int(11) NOT NULL,
  `sms_api` varchar(255) NOT NULL,
  `email_api` varchar(255) NOT NULL,
  `safexpay_api` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO api_keys VALUES("1","1","185673Ah8Bfl3v7H75a1bfa61","","");



CREATE TABLE `blood_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloodgroup_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO blood_group VALUES("1","O-");
INSERT INTO blood_group VALUES("2","O+");
INSERT INTO blood_group VALUES("3","A-");
INSERT INTO blood_group VALUES("4","A+");
INSERT INTO blood_group VALUES("5","B-");
INSERT INTO blood_group VALUES("6","B+");
INSERT INTO blood_group VALUES("7","AB-");
INSERT INTO blood_group VALUES("8","AB+");



CREATE TABLE `castes` (
  `castes_id` int(11) NOT NULL AUTO_INCREMENT,
  `castes_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  PRIMARY KEY (`castes_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO castes VALUES("1","Scheduled Castes","1");
INSERT INTO castes VALUES("2","Scheduled Tribes","1");
INSERT INTO castes VALUES("3","Most Backward Classes","1");
INSERT INTO castes VALUES("4","Denotified Communities","1");
INSERT INTO castes VALUES("5","Backward Classes","1");
INSERT INTO castes VALUES("6","Backward Classes Muslims","1");
INSERT INTO castes VALUES("7","General","1");
INSERT INTO castes VALUES("8","Others","1");



CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `alpha_2` varchar(2) NOT NULL DEFAULT '',
  `alpha_3` varchar(3) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

INSERT INTO countries VALUES("1","Afghanistan","af","afg","1");
INSERT INTO countries VALUES("2","Aland Islands","ax","ala","1");
INSERT INTO countries VALUES("3","Albania","al","alb","1");
INSERT INTO countries VALUES("4","Algeria","dz","dza","1");
INSERT INTO countries VALUES("5","American Samoa","as","asm","1");
INSERT INTO countries VALUES("6","Andorra","ad","and","1");
INSERT INTO countries VALUES("7","Angola","ao","ago","1");
INSERT INTO countries VALUES("8","Anguilla","ai","aia","1");
INSERT INTO countries VALUES("9","Antarctica","aq","","1");
INSERT INTO countries VALUES("10","Antigua and Barbuda","ag","atg","1");
INSERT INTO countries VALUES("11","Argentina","ar","arg","1");
INSERT INTO countries VALUES("12","Armenia","am","arm","1");
INSERT INTO countries VALUES("13","Aruba","aw","abw","1");
INSERT INTO countries VALUES("14","Australia","au","aus","1");
INSERT INTO countries VALUES("15","Austria","at","aut","1");
INSERT INTO countries VALUES("16","Azerbaijan","az","aze","1");
INSERT INTO countries VALUES("17","Bahamas","bs","bhs","1");
INSERT INTO countries VALUES("18","Bahrain","bh","bhr","1");
INSERT INTO countries VALUES("19","Bangladesh","bd","bgd","1");
INSERT INTO countries VALUES("20","Barbados","bb","brb","1");
INSERT INTO countries VALUES("21","Belarus","by","blr","1");
INSERT INTO countries VALUES("22","Belgium","be","bel","1");
INSERT INTO countries VALUES("23","Belize","bz","blz","1");
INSERT INTO countries VALUES("24","Benin","bj","ben","1");
INSERT INTO countries VALUES("25","Bermuda","bm","bmu","1");
INSERT INTO countries VALUES("26","Bhutan","bt","btn","1");
INSERT INTO countries VALUES("27","Bolivia, Plurinational State of","bo","bol","1");
INSERT INTO countries VALUES("28","Bonaire, Sint Eustatius and Saba","bq","bes","1");
INSERT INTO countries VALUES("29","Bosnia and Herzegovina","ba","bih","1");
INSERT INTO countries VALUES("30","Botswana","bw","bwa","1");
INSERT INTO countries VALUES("31","Bouvet Island","bv","","1");
INSERT INTO countries VALUES("32","Brazil","br","bra","1");
INSERT INTO countries VALUES("33","British Indian Ocean Territory","io","","1");
INSERT INTO countries VALUES("34","Brunei Darussalam","bn","brn","1");
INSERT INTO countries VALUES("35","Bulgaria","bg","bgr","1");
INSERT INTO countries VALUES("36","Burkina Faso","bf","bfa","1");
INSERT INTO countries VALUES("37","Burundi","bi","bdi","1");
INSERT INTO countries VALUES("38","Cambodia","kh","khm","1");
INSERT INTO countries VALUES("39","Cameroon","cm","cmr","1");
INSERT INTO countries VALUES("40","Canada","ca","can","1");
INSERT INTO countries VALUES("41","Cape Verde","cv","cpv","1");
INSERT INTO countries VALUES("42","Cayman Islands","ky","cym","1");
INSERT INTO countries VALUES("43","Central African Republic","cf","caf","1");
INSERT INTO countries VALUES("44","Chad","td","tcd","1");
INSERT INTO countries VALUES("45","Chile","cl","chl","1");
INSERT INTO countries VALUES("46","China","cn","chn","1");
INSERT INTO countries VALUES("47","Christmas Island","cx","","1");
INSERT INTO countries VALUES("48","Cocos (Keeling) Islands","cc","","1");
INSERT INTO countries VALUES("49","Colombia","co","col","1");
INSERT INTO countries VALUES("50","Comoros","km","com","1");
INSERT INTO countries VALUES("51","Congo","cg","cog","1");
INSERT INTO countries VALUES("52","Congo, The Democratic Republic of the","cd","cod","1");
INSERT INTO countries VALUES("53","Cook Islands","ck","cok","1");
INSERT INTO countries VALUES("54","Costa Rica","cr","cri","1");
INSERT INTO countries VALUES("55","Cote d'Ivoire","ci","civ","1");
INSERT INTO countries VALUES("56","Croatia","hr","hrv","1");
INSERT INTO countries VALUES("57","Cuba","cu","cub","1");
INSERT INTO countries VALUES("58","Curacao","cw","cuw","1");
INSERT INTO countries VALUES("59","Cyprus","cy","cyp","1");
INSERT INTO countries VALUES("60","Czech Republic","cz","cze","1");
INSERT INTO countries VALUES("61","Denmark","dk","dnk","1");
INSERT INTO countries VALUES("62","Djibouti","dj","dji","1");
INSERT INTO countries VALUES("63","Dominica","dm","dma","1");
INSERT INTO countries VALUES("64","Dominican Republic","do","dom","1");
INSERT INTO countries VALUES("65","Ecuador","ec","ecu","1");
INSERT INTO countries VALUES("66","Egypt","eg","egy","1");
INSERT INTO countries VALUES("67","El Salvador","sv","slv","1");
INSERT INTO countries VALUES("68","Equatorial Guinea","gq","gnq","1");
INSERT INTO countries VALUES("69","Eritrea","er","eri","1");
INSERT INTO countries VALUES("70","Estonia","ee","est","1");
INSERT INTO countries VALUES("71","Ethiopia","et","eth","1");
INSERT INTO countries VALUES("72","Falkland Islands (Malvinas)","fk","flk","1");
INSERT INTO countries VALUES("73","Faroe Islands","fo","fro","1");
INSERT INTO countries VALUES("74","Fiji","fj","fji","1");
INSERT INTO countries VALUES("75","Finland","fi","fin","1");
INSERT INTO countries VALUES("76","France","fr","fra","1");
INSERT INTO countries VALUES("77","French Guiana","gf","guf","1");
INSERT INTO countries VALUES("78","French Polynesia","pf","pyf","1");
INSERT INTO countries VALUES("79","French Southern Territories","tf","","1");
INSERT INTO countries VALUES("80","Gabon","ga","gab","1");
INSERT INTO countries VALUES("81","Gambia","gm","gmb","1");
INSERT INTO countries VALUES("82","Georgia","ge","geo","1");
INSERT INTO countries VALUES("83","Germany","de","deu","1");
INSERT INTO countries VALUES("84","Ghana","gh","gha","1");
INSERT INTO countries VALUES("85","Gibraltar","gi","gib","1");
INSERT INTO countries VALUES("86","Greece","gr","grc","1");
INSERT INTO countries VALUES("87","Greenland","gl","grl","1");
INSERT INTO countries VALUES("88","Grenada","gd","grd","1");
INSERT INTO countries VALUES("89","Guadeloupe","gp","glp","1");
INSERT INTO countries VALUES("90","Guam","gu","gum","1");
INSERT INTO countries VALUES("91","Guatemala","gt","gtm","1");
INSERT INTO countries VALUES("92","Guernsey","gg","ggy","1");
INSERT INTO countries VALUES("93","Guinea","gn","gin","1");
INSERT INTO countries VALUES("94","Guinea-Bissau","gw","gnb","1");
INSERT INTO countries VALUES("95","Guyana","gy","guy","1");
INSERT INTO countries VALUES("96","Haiti","ht","hti","1");
INSERT INTO countries VALUES("97","Heard Island and McDonald Islands","hm","","1");
INSERT INTO countries VALUES("98","Holy See (Vatican City State)","va","vat","1");
INSERT INTO countries VALUES("99","Honduras","hn","hnd","1");
INSERT INTO countries VALUES("100","Hong Kong","hk","hkg","1");
INSERT INTO countries VALUES("101","Hungary","hu","hun","1");
INSERT INTO countries VALUES("102","Iceland","is","isl","1");
INSERT INTO countries VALUES("103","India","in","ind","1");
INSERT INTO countries VALUES("104","Indonesia","id","idn","1");
INSERT INTO countries VALUES("105","Iran, Islamic Republic of","ir","irn","1");
INSERT INTO countries VALUES("106","Iraq","iq","irq","1");
INSERT INTO countries VALUES("107","Ireland","ie","irl","1");
INSERT INTO countries VALUES("108","Isle of Man","im","imn","1");
INSERT INTO countries VALUES("109","Israel","il","isr","1");
INSERT INTO countries VALUES("110","Italy","it","ita","1");
INSERT INTO countries VALUES("111","Jamaica","jm","jam","1");
INSERT INTO countries VALUES("112","Japan","jp","jpn","1");
INSERT INTO countries VALUES("113","Jersey","je","jey","1");
INSERT INTO countries VALUES("114","Jordan","jo","jor","1");
INSERT INTO countries VALUES("115","Kazakhstan","kz","kaz","1");
INSERT INTO countries VALUES("116","Kenya","ke","ken","1");
INSERT INTO countries VALUES("117","Kiribati","ki","kir","1");
INSERT INTO countries VALUES("118","Korea, Democratic People's Republic of","kp","prk","1");
INSERT INTO countries VALUES("119","Korea, Republic of","kr","kor","1");
INSERT INTO countries VALUES("120","Kuwait","kw","kwt","1");
INSERT INTO countries VALUES("121","Kyrgyzstan","kg","kgz","1");
INSERT INTO countries VALUES("122","Lao People's Democratic Republic","la","lao","1");
INSERT INTO countries VALUES("123","Latvia","lv","lva","1");
INSERT INTO countries VALUES("124","Lebanon","lb","lbn","1");
INSERT INTO countries VALUES("125","Lesotho","ls","lso","1");
INSERT INTO countries VALUES("126","Liberia","lr","lbr","1");
INSERT INTO countries VALUES("127","Libyan Arab Jamahiriya","ly","lby","1");
INSERT INTO countries VALUES("128","Liechtenstein","li","lie","1");
INSERT INTO countries VALUES("129","Lithuania","lt","ltu","1");
INSERT INTO countries VALUES("130","Luxembourg","lu","lux","1");
INSERT INTO countries VALUES("131","Macao","mo","mac","1");
INSERT INTO countries VALUES("132","Macedonia, The former Yugoslav Republic of","mk","mkd","1");
INSERT INTO countries VALUES("133","Madagascar","mg","mdg","1");
INSERT INTO countries VALUES("134","Malawi","mw","mwi","1");
INSERT INTO countries VALUES("135","Malaysia","my","mys","1");
INSERT INTO countries VALUES("136","Maldives","mv","mdv","1");
INSERT INTO countries VALUES("137","Mali","ml","mli","1");
INSERT INTO countries VALUES("138","Malta","mt","mlt","1");
INSERT INTO countries VALUES("139","Marshall Islands","mh","mhl","1");
INSERT INTO countries VALUES("140","Martinique","mq","mtq","1");
INSERT INTO countries VALUES("141","Mauritania","mr","mrt","1");
INSERT INTO countries VALUES("142","Mauritius","mu","mus","1");
INSERT INTO countries VALUES("143","Mayotte","yt","myt","1");
INSERT INTO countries VALUES("144","Mexico","mx","mex","1");
INSERT INTO countries VALUES("145","Micronesia, Federated States of","fm","fsm","1");
INSERT INTO countries VALUES("146","Moldova, Republic of","md","mda","1");
INSERT INTO countries VALUES("147","Monaco","mc","mco","1");
INSERT INTO countries VALUES("148","Mongolia","mn","mng","1");
INSERT INTO countries VALUES("149","Montenegro","me","mne","1");
INSERT INTO countries VALUES("150","Montserrat","ms","msr","1");
INSERT INTO countries VALUES("151","Morocco","ma","mar","1");
INSERT INTO countries VALUES("152","Mozambique","mz","moz","1");
INSERT INTO countries VALUES("153","Myanmar","mm","mmr","1");
INSERT INTO countries VALUES("154","Namibia","na","nam","1");
INSERT INTO countries VALUES("155","Nauru","nr","nru","1");
INSERT INTO countries VALUES("156","Nepal","np","npl","1");
INSERT INTO countries VALUES("157","Netherlands","nl","nld","1");
INSERT INTO countries VALUES("158","New Caledonia","nc","ncl","1");
INSERT INTO countries VALUES("159","New Zealand","nz","nzl","1");
INSERT INTO countries VALUES("160","Nicaragua","ni","nic","1");
INSERT INTO countries VALUES("161","Niger","ne","ner","1");
INSERT INTO countries VALUES("162","Nigeria","ng","nga","1");
INSERT INTO countries VALUES("163","Niue","nu","niu","1");
INSERT INTO countries VALUES("164","Norfolk Island","nf","nfk","1");
INSERT INTO countries VALUES("165","Northern Mariana Islands","mp","mnp","1");
INSERT INTO countries VALUES("166","Norway","no","nor","1");
INSERT INTO countries VALUES("167","Oman","om","omn","1");
INSERT INTO countries VALUES("168","Pakistan","pk","pak","1");
INSERT INTO countries VALUES("169","Palau","pw","plw","1");
INSERT INTO countries VALUES("170","Palestinian Territory, Occupied","ps","pse","1");
INSERT INTO countries VALUES("171","Panama","pa","pan","1");
INSERT INTO countries VALUES("172","Papua New Guinea","pg","png","1");
INSERT INTO countries VALUES("173","Paraguay","py","pry","1");
INSERT INTO countries VALUES("174","Peru","pe","per","1");
INSERT INTO countries VALUES("175","Philippines","ph","phl","1");
INSERT INTO countries VALUES("176","Pitcairn","pn","pcn","1");
INSERT INTO countries VALUES("177","Poland","pl","pol","1");
INSERT INTO countries VALUES("178","Portugal","pt","prt","1");
INSERT INTO countries VALUES("179","Puerto Rico","pr","pri","1");
INSERT INTO countries VALUES("180","Qatar","qa","qat","1");
INSERT INTO countries VALUES("181","Reunion","re","reu","1");
INSERT INTO countries VALUES("182","Romania","ro","rou","1");
INSERT INTO countries VALUES("183","Russian Federation","ru","rus","1");
INSERT INTO countries VALUES("184","Rwanda","rw","rwa","1");
INSERT INTO countries VALUES("185","Saint Barthelemy","bl","blm","1");
INSERT INTO countries VALUES("186","Saint Helena, Ascension and Tristan Da Cunha","sh","shn","1");
INSERT INTO countries VALUES("187","Saint Kitts and Nevis","kn","kna","1");
INSERT INTO countries VALUES("188","Saint Lucia","lc","lca","1");
INSERT INTO countries VALUES("189","Saint Martin (French Part)","mf","maf","1");
INSERT INTO countries VALUES("190","Saint Pierre and Miquelon","pm","spm","1");
INSERT INTO countries VALUES("191","Saint Vincent and The Grenadines","vc","vct","1");
INSERT INTO countries VALUES("192","Samoa","ws","wsm","1");
INSERT INTO countries VALUES("193","San Marino","sm","smr","1");
INSERT INTO countries VALUES("194","Sao Tome and Principe","st","stp","1");
INSERT INTO countries VALUES("195","Saudi Arabia","sa","sau","1");
INSERT INTO countries VALUES("196","Senegal","sn","sen","1");
INSERT INTO countries VALUES("197","Serbia","rs","srb","1");
INSERT INTO countries VALUES("198","Seychelles","sc","syc","1");
INSERT INTO countries VALUES("199","Sierra Leone","sl","sle","1");
INSERT INTO countries VALUES("200","Singapore","sg","sgp","1");
INSERT INTO countries VALUES("201","Sint Maarten (Dutch Part)","sx","sxm","1");
INSERT INTO countries VALUES("202","Slovakia","sk","svk","1");
INSERT INTO countries VALUES("203","Slovenia","si","svn","1");
INSERT INTO countries VALUES("204","Solomon Islands","sb","slb","1");
INSERT INTO countries VALUES("205","Somalia","so","som","1");
INSERT INTO countries VALUES("206","South Africa","za","zaf","1");
INSERT INTO countries VALUES("207","South Georgia and The South Sandwich Islands","gs","","1");
INSERT INTO countries VALUES("208","South Sudan","ss","ssd","1");
INSERT INTO countries VALUES("209","Spain","es","esp","1");
INSERT INTO countries VALUES("210","Sri Lanka","lk","lka","1");
INSERT INTO countries VALUES("211","Sudan","sd","sdn","1");
INSERT INTO countries VALUES("212","Suriname","sr","sur","1");
INSERT INTO countries VALUES("213","Svalbard and Jan Mayen","sj","sjm","1");
INSERT INTO countries VALUES("214","Swaziland","sz","swz","1");
INSERT INTO countries VALUES("215","Sweden","se","swe","1");
INSERT INTO countries VALUES("216","Switzerland","ch","che","1");
INSERT INTO countries VALUES("217","Syrian Arab Republic","sy","syr","1");
INSERT INTO countries VALUES("218","Taiwan, Province of China","tw","","1");
INSERT INTO countries VALUES("219","Tajikistan","tj","tjk","1");
INSERT INTO countries VALUES("220","Tanzania, United Republic of","tz","tza","1");
INSERT INTO countries VALUES("221","Thailand","th","tha","1");
INSERT INTO countries VALUES("222","Timor-Leste","tl","tls","1");
INSERT INTO countries VALUES("223","Togo","tg","tgo","1");
INSERT INTO countries VALUES("224","Tokelau","tk","tkl","1");
INSERT INTO countries VALUES("225","Tonga","to","ton","1");
INSERT INTO countries VALUES("226","Trinidad and Tobago","tt","tto","1");
INSERT INTO countries VALUES("227","Tunisia","tn","tun","1");
INSERT INTO countries VALUES("228","Turkey","tr","tur","1");
INSERT INTO countries VALUES("229","Turkmenistan","tm","tkm","1");
INSERT INTO countries VALUES("230","Turks and Caicos Islands","tc","tca","1");
INSERT INTO countries VALUES("231","Tuvalu","tv","tuv","1");
INSERT INTO countries VALUES("232","Uganda","ug","uga","1");
INSERT INTO countries VALUES("233","Ukraine","ua","ukr","1");
INSERT INTO countries VALUES("234","United Arab Emirates","ae","are","1");
INSERT INTO countries VALUES("235","United Kingdom","gb","gbr","1");
INSERT INTO countries VALUES("236","United States","us","usa","1");
INSERT INTO countries VALUES("237","United States Minor Outlying Islands","um","","1");
INSERT INTO countries VALUES("238","Uruguay","uy","ury","1");
INSERT INTO countries VALUES("239","Uzbekistan","uz","uzb","1");
INSERT INTO countries VALUES("240","Vanuatu","vu","vut","1");
INSERT INTO countries VALUES("241","Venezuela, Bolivarian Republic of","ve","ven","1");
INSERT INTO countries VALUES("242","Viet Nam","vn","vnm","1");
INSERT INTO countries VALUES("243","Virgin Islands, British","vg","vgb","1");
INSERT INTO countries VALUES("244","Virgin Islands, U.S.","vi","vir","1");
INSERT INTO countries VALUES("245","Wallis and Futuna","wf","wlf","1");
INSERT INTO countries VALUES("246","Western Sahara","eh","esh","1");
INSERT INTO countries VALUES("247","Yemen","ye","yem","1");
INSERT INTO countries VALUES("248","Zambia","zm","zmb","1");
INSERT INTO countries VALUES("249","Zimbabwe","zw","zwe","1");



CREATE TABLE `degree_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO degree_list VALUES("1","MBA");
INSERT INTO degree_list VALUES("2","BCOM");
INSERT INTO degree_list VALUES("3","BBA");
INSERT INTO degree_list VALUES("4","Bsc");
INSERT INTO degree_list VALUES("5","BA");
INSERT INTO degree_list VALUES("6","10TH");
INSERT INTO degree_list VALUES("7","MCOM");
INSERT INTO degree_list VALUES("8","9TH");
INSERT INTO degree_list VALUES("9","12th");
INSERT INTO degree_list VALUES("10","DIPLOMO");
INSERT INTO degree_list VALUES("11","Msc");
INSERT INTO degree_list VALUES("12","BE");



CREATE TABLE `ins_institute_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `about_us` text NOT NULL,
  `vision` text NOT NULL,
  `mission` text NOT NULL,
  `description` text NOT NULL,
  `own_campus` int(11) NOT NULL,
  `address` char(100) DEFAULT NULL,
  `city` char(100) DEFAULT NULL,
  `state` varchar(55) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `zipcode` char(10) DEFAULT NULL,
  `sal` varchar(10) NOT NULL,
  `design` varchar(100) NOT NULL,
  `principal` char(100) DEFAULT NULL,
  `profile_image` varchar(100) CHARACTER SET latin1 NOT NULL,
  `phone` char(30) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `www_address` char(100) DEFAULT NULL,
  `asal` varchar(10) NOT NULL,
  `adesign` varchar(200) NOT NULL,
  `aprincipal` varchar(200) NOT NULL,
  `amobile` varchar(20) NOT NULL,
  `afax` varchar(20) NOT NULL,
  `aphone` varchar(20) NOT NULL,
  `logo` blob NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1','','') NOT NULL,
  `notes` text NOT NULL,
  `syear` double(4,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ins_institute_details VALUES("1","Demo Institute","","<p>To be a leading global technology university that provides a transformative education to create leaders and innovators, and generates new knowledge for society and industry.</p>
","<ul>
	<li>To create an ambience in which new ideas, research and scholarship flourish, and from which the leaders and innovators of tomorrow emerge.</li>
	<li>To address problems faced by the nation and the world through the talent we nurture and the research we do.</li>
	<li>To provide an education that transforms students through rigorous coursework and by providing an understanding of the needs of society and industry.</li>
	<li>To collaborate with other academic and research institutes around the world to strengthen the education and research ecosystem.</li>
</ul>
","<p>dsfsdfsdf</p>
","0","west","2323","37","103","32233","Ms","design","tina test","","2232323","23333","233343434","new@gmail.com","www.webmail.com","Mr","MD","john","767878","34344545","232323","","2018-03-27 16:09:53","1","","0");



CREATE TABLE `ins_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ins_id` int(11) NOT NULL,
  `email_id` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL,
  `ins_rights` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `forgot_pass_identity` varchar(50) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `session_id_var` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

INSERT INTO ins_user VALUES("9","2","test@gmail.com","36af559a113ae276d7426f95e3598bf6","1,2,3,4,5","9658321456","2017-12-12 14:41:33","","1","");
INSERT INTO ins_user VALUES("8","1","new@gmail.com","36af559a113ae276d7426f95e3598bf6","1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17","98888823333","2018-06-13 10:33:13","","1","h0ip8j25qrpqfpjav02ltpa7u5");
INSERT INTO ins_user VALUES("13","1","welcome@gmail.com","91f8d36c64e225bc0096cd1a80b7181d","1","9600085403","2017-10-11 12:31:35","","1","");
INSERT INTO ins_user VALUES("14","1","mapme@test.com","91f8d36c64e225bc0096cd1a80b7181d","1","987654321","2017-10-11 12:31:32","","1","");
INSERT INTO ins_user VALUES("15","1","mapmemail@test.com","36af559a113ae276d7426f95e3598bf6","2","1223232323","2017-10-11 12:31:30","","1","");
INSERT INTO ins_user VALUES("17","1","","26972cc08d6afdb295b9073cf489fb6a","","","2017-10-21 13:03:43","","1","");
INSERT INTO ins_user VALUES("27","1","vijaysavkaka@gmail.com","41bbf32d85a9ab0c336bd462b6757a56","4,8","9963254781","2017-11-04 16:35:28","","1","");
INSERT INTO ins_user VALUES("28","1","fgg@gmail.com","2aff27ea9f34c23c9c1d5bbeefc4f4b6","1","9876543210","2017-11-13 14:40:24","","0","");
INSERT INTO ins_user VALUES("21","1","vijaykumarv@yoursefficiently.com","36af559a113ae276d7426f95e3598bf6","3, 6","9962135225","2017-12-12 14:44:24","","1","25q62729nhi16sdhob4i7tm3i3");
INSERT INTO ins_user VALUES("29","1","tina@test.com","8fac05f20329b1823d0f28901b51db1e","1, 2, 3, 4","9999999999","2017-12-06 17:46:29","","1","");



CREATE TABLE `languages_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `flag` tinyint(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO languages_list VALUES("1","TAMIL","0");
INSERT INTO languages_list VALUES("2","ENGLISH","0");
INSERT INTO languages_list VALUES("3","HINDI","0");
INSERT INTO languages_list VALUES("4","TELUGU","0");
INSERT INTO languages_list VALUES("5","MALAYALAM","0");
INSERT INTO languages_list VALUES("6","URDU","0");
INSERT INTO languages_list VALUES("7","KANNADA","0");
INSERT INTO languages_list VALUES("8","SOURASHTRA","0");
INSERT INTO languages_list VALUES("9","FRENCH","0");



CREATE TABLE `manage_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO manage_modules VALUES("1","Profile","1");
INSERT INTO manage_modules VALUES("2","Committee","1");
INSERT INTO manage_modules VALUES("3","Department","1");
INSERT INTO manage_modules VALUES("4","HRMS","1");
INSERT INTO manage_modules VALUES("5","Examination","1");
INSERT INTO manage_modules VALUES("6","Survey","1");
INSERT INTO manage_modules VALUES("7","SIS","1");
INSERT INTO manage_modules VALUES("8","Fees","1");
INSERT INTO manage_modules VALUES("9","Transport","1");
INSERT INTO manage_modules VALUES("10","Communication","1");



CREATE TABLE `religions` (
  `religions_id` int(11) NOT NULL,
  `religions_name` varchar(100) NOT NULL,
  `status` enum('1','0') NOT NULL,
  PRIMARY KEY (`religions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO religions VALUES("1","Hindu","1");
INSERT INTO religions VALUES("2","Muslim","1");
INSERT INTO religions VALUES("3","Christian","1");
INSERT INTO religions VALUES("4","Sikh","1");
INSERT INTO religions VALUES("5","Buddhist","1");
INSERT INTO religions VALUES("6","Jain","1");
INSERT INTO religions VALUES("7","Parsi","1");
INSERT INTO religions VALUES("8","Others","1");



CREATE TABLE `sis_students_year` (
  `year_id` int(11) NOT NULL AUTO_INCREMENT,
  `year_name` varchar(55) NOT NULL,
  `update_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO sis_students_year VALUES("1","I","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("2","II","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("3","III","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("4","IV","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("5","V","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("6","VI","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("7","VII","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("8","VIII","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("9","IX","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("10","X","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("11","XI","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("12","XII","2017-11-28 15:02:40","0");
INSERT INTO sis_students_year VALUES("13","PreKG","2017-11-28 12:50:23","0");
INSERT INTO sis_students_year VALUES("14","LKG","2017-11-28 12:50:23","0");
INSERT INTO sis_students_year VALUES("15","UKG","2017-11-28 12:50:23","0");



CREATE TABLE `state_list` (
  `id` int(10) unsigned NOT NULL,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO state_list VALUES("1","ANDAMAN AND NICOBAR ISLANDS");
INSERT INTO state_list VALUES("2","ANDHRA PRADESH");
INSERT INTO state_list VALUES("3","ARUNACHAL PRADESH");
INSERT INTO state_list VALUES("4","ASSAM");
INSERT INTO state_list VALUES("5","BIHAR");
INSERT INTO state_list VALUES("6","CHATTISGARH");
INSERT INTO state_list VALUES("7","CHANDIGARH");
INSERT INTO state_list VALUES("8","DAMAN AND DIU");
INSERT INTO state_list VALUES("9","DELHI");
INSERT INTO state_list VALUES("10","DADRA AND NAGAR HAVELI");
INSERT INTO state_list VALUES("11","GOA");
INSERT INTO state_list VALUES("12","GUJARAT");
INSERT INTO state_list VALUES("13","HIMACHAL PRADESH");
INSERT INTO state_list VALUES("14","HARYANA");
INSERT INTO state_list VALUES("15","JAMMU AND KASHMIR");
INSERT INTO state_list VALUES("16","JHARKHAND");
INSERT INTO state_list VALUES("17","KERALA");
INSERT INTO state_list VALUES("18","KARNATAKA");
INSERT INTO state_list VALUES("19","LAKSHADWEEP");
INSERT INTO state_list VALUES("20","MEGHALAYA");
INSERT INTO state_list VALUES("21","MAHARASHTRA");
INSERT INTO state_list VALUES("22","MANIPUR");
INSERT INTO state_list VALUES("23","MADHYA PRADESH");
INSERT INTO state_list VALUES("24","MIZORAM");
INSERT INTO state_list VALUES("25","NAGALAND");
INSERT INTO state_list VALUES("26","ORISSA");
INSERT INTO state_list VALUES("27","PUNJAB");
INSERT INTO state_list VALUES("28","PONDICHERRY");
INSERT INTO state_list VALUES("29","RAJASTHAN");
INSERT INTO state_list VALUES("30","SIKKIM");
INSERT INTO state_list VALUES("31","TAMIL NADU");
INSERT INTO state_list VALUES("32","TELANGANA");
INSERT INTO state_list VALUES("36","TRIPURA");
INSERT INTO state_list VALUES("37","UTTARAKHAND");
INSERT INTO state_list VALUES("38","UTTAR PRADESH");
INSERT INTO state_list VALUES("39","WEST BENGAL");

