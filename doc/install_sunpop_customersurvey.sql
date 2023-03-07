--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `customersurvey_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `code` text NOT NULL,
  `code_title` text NOT NULL,
  PRIMARY KEY (`customersurvey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`customersurvey_id`, `title`, `enabled`, `code`, `code_title`) VALUES
(1, 'General Website Survey', 1, '', ''),
(2, 'General Satisfaction', 1, '', '');

--
-- Table structure for table `survey_questions`
--

CREATE TABLE IF NOT EXISTS `survey_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `customersurvey_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer_type` text NOT NULL,
  `sort_order` int(11) NOT NULL,
  `possible_answers` text,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`question_id`, `customersurvey_id`, `question`, `answer_type`, `sort_order`) VALUES
(15, 1, '���ǵ�App������������?', 'yesno', 5),
(14, 1, '���ǵ�һ��ʹ�����ǵĲ�Ʒ��?', 'yesno', 6),
(13, 1, '����ô��������App�Ĺ���?', 'bubbles2', 3),
(12, 1, '��д����������:', 'area', 7),
(11, 2, '���������ǵ�ӡ�²�Ʒ��������.', 'bubbles2', 2),
(10, 2, '���������ǵĿͻ������������.', 'bubbles2', 2),
(8, 1, '���ǵ�App������?', 'bubbles2', 1),
(7, 2, '��������Щ�ط���Ҫ�Ľ�����������ı������?', 'area', 4),
(6, 2, '��������:', 'area', 5),
(5, 2, '�������ǵĲ�Ʒ�ۺ�������ⲻ?', 'bubbles1', 1),
(4, 2, 'δ�������й������ǲ�Ʒ�ļƻ���?', 'yesno', 3),
(3, 2, '�������ǹ�˾�������?', 'bubbles1', 0),
(2, 1, '���ǵ�App�˵�ʹ�÷�����?', 'yesno', 4),
(1, 1, '����������App�Ĳ�Ʒ�������?', 'bubbles2', 2);

--
-- Table structure for table `survey_results`
--

CREATE TABLE IF NOT EXISTS `survey_results` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `customersurvey_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `input_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `unique_id` int(11) NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=174 ;