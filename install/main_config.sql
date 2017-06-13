/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `main_config`
--

DROP TABLE IF EXISTS `main_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(50) NOT NULL,
  `friendly_name` varchar(50) NOT NULL,
  `config_value` varchar(1000) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(15) NOT NULL,
  `display` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `main_config` WRITE;
/*!40000 ALTER TABLE `main_config` DISABLE KEYS */;
INSERT INTO `main_config` VALUES 
(1,'recipient_name','Recipient Name','','The name that emails sent from SSD will be addressed to (usually the company name).','email_text','string'),
(2,'greeting_incident_new','Greeting : Incident New','we are currently experiencing a service issue that is impacting one or more production services.  We are actively working to resolve this issue and will update you as progress is made on a resolution.  All known information about this incident is listed below.','The greeting that will accompany email messages about new incidents.','email_text','string'),
(3,'greeting_incident_update','Greeting : Incident Update','the purpose of this message is to update you on the status of a service issue that has impacted one or more production services.  All known information about this incident is listed below.','The greeting that will accompany email updates about existing incidents.','email_text','string'),
(4,'email_format_maintenance','Maintenance Email Format','1','Whether to use HTML formatting (true) or text formatting (false) for maintenance emails.','email_format','boolean'),
(5,'email_format_incident','Incident Email Format','1','Whether to use HTML formatting (true) or text formatting (false) for incident emails.','email_format','boolean'),
(6,'email_from','Sender Address','do_not_reply@your_company.com','The email address that email messages from SSD will be sent from.','email_addresses','string'),
(7,'email_subject_incident','Subject : Incident','Incident Notification','The subject of email messages sent about incidents.','email_text','string'),
(8,'email_subject_maintenance','Subject : Maintenance','Maintenance Notification','The subject of email messages sent about system maintenance.','email_text','string'),
(9,'greeting_maintenance_new','Greeting : Maintenance New','the purpose of this message is to inform you of upcoming maintenance activities within our technical infrastructure.','The greeting that will accompany email messages about new maintenance notifications.','email_text','string'),
(10,'greeting_maintenance_update','Greeting : Maintenance Update','the purpose of this message is to update you on the status of maintenance activities within our technical infrastructure.','The greeting that will accompany email messages about existing maintenances','email_text','string'),
(11,'recipient_pager','Pager Recipient','/dev/null','The email address that will receive user generated incident notifications sent through the Report Incident link.  These messages will be constrained to 160 characters.','email_addresses','string'),
(12,'message_success','Message Success','Your message has been successfully processed.  Our Engineers will be in touch.','The success message that will be displayed to a user who has submitted an incident report.','email_text','string'),
(13,'message_error','Message Error','There was an error processing your message.  Please contact your system administrator.','The error message that will be displayed when a user submits an incident report but an error was encountered in processing the email.','email_text','string'),
(14,'notify','Notify','0','Whether or not to enable email notifications.','functionality','boolean'),
(15,'instr_maintenance_description','Create Maintenance : Description','Enter a complete description for this maintenance.','n/a','instructions','string'),
(16,'instr_maintenance_impact','Create Maintenance : Impact Analysis','Enter the impact analysis.','n/a','instructions','string'),
(17,'instr_maintenance_coordinator','Create Maintenance : Coordinator','Enter the name and contact details for the maintenance coordinator.','n/a','instructions','string'),
(18,'instr_maintenance_update','Update Maintenance : Update','Enter an update for this incident.','n/a','instructions','string'),
(19,'instr_incident_description','Create Incident : Description','Please enter a full description of the incident, including all relevant details.','n/a','instructions','string'),
(20,'instr_incident_update','Update Incident : Description','Enter a detailed update for this incident.','n/a','instructions','string'),
(21,'instr_report_name','Report Incident : Name','Enter your full name.','n/a','instructions','string'),
(22,'instr_report_email','Report Incident : Email','Enter your email address.','n/a','instructions','string'),
(23,'instr_report_detail','Report Incident : Detail','Enter a description of the issue you are experiencing.  Input is limited to 160 characters.','n/a','instructions','string'),
(24,'instr_report_extra','Report Incident : Extra','Enter any additional information, beyond 160 characters, that you would like to report about this incident.','n/a','instructions','string'),
(25,'instr_escalation_name','Add Contact : Name','Enter the full name','n/a','instructions','string'),
(26,'instr_escalation_details','Add Contact : Details','Enter the contact details (e.g. job title, cell phone, pager)','n/a','instructions','string'),
(27,'logo_display','Display Company Logo','0','Whether or not to display a company logo.','functionality','boolean'),
(28,'logo_url','Company Logo Url','','The company logo to display','urls','string'),
(29,'nav_display','Display Navigation Header','1','Whether or not to display the navigation header.','functionality','boolean'),
(30,'escalation_display','Display Escalation','1','Whether or not to display the escalation link in the navigation header.','functionality','boolean'),
(31,'report_incident_display','Display Report Incident','1','Whether or not to display the report incident link in the navigation header.','functionality','boolean'),
(32,'login_display','Display Login Link','1','Whether or not to display the login link in the navigation header.','functionality','boolean'),
(33,'display_alert','Display : Main','0','Whether or not to display the main alert message on the SSD homepage','alerts','boolean'),
(34,'alert','Text : Main','','A message that will be prominently displayed on the SSD homepage.','alerts','string'),
(35,'help_sched_maint','Scheduled Maintenance','When creating a scheduled maintenance, please keep the following guidelines in mind:<ol> <li>The maintenance description should clearly state the purpose of the scheduled maintenance, in human readable format.</li> <li>The impact analysis should indicate any possible issues that could arrise as a result of the maintenance.</li><li>The maintenance coordinator will be responsible for coordinating and communicating about the maintenance.  At a minimum, first/last names, email address and cell phone should be provided.</li><li>If you would like to broadcast a message about the maintenance to an individual or an email distribution list, the address must be defined first.</li><li>You must select at least one service that will be impacted by the maintenance.</li><li>The dates/times should be entered in your own timezone.</li></ol>','Help instructions that will be displayed on the schedule maintenance page.','help','string'),
(36,'help_report_incident','Report Incident','When reporting an incident, please provide as much detail as possible to assist our engineers in diagnosing and correcting the issue.  Keep in mind that the incident description field will be sent via text message and is restricted to 160 characters.','Help instructions that will be displayed on the report incident page.','help','string'),
(37,'help_create_incident','Create Incident','When creating an incident, please keep the following guidelines in mind:<ol><li>Provide a human friendly description of the incident.</li><li>You must select at least one impacted service.</li><li>If you would like to broadcast a message to an individual or an email distribution list about the incident, the address must be defined first.</li><li>The date/time should reflect the actual date/time the incident began.</li><li>The date/time should be in your own timezone.</li></ol>','Help instructions that will be displayed on the create incident page.','help','string'),
(38,'help_escalation','Escalation','If you reported an incident via the <a href="/report">report incident</a> link and have not received confirmation that our engineers are investigating the problem, please follow the below escalation path. If you are unable to make contact, please leave a voice message, wait 5 minutes for a response, and escalate to the next contact on the list.','Help instructions that will be displayed on the escalation page.','help','string'),
(39,'enable_uploads','Incident Report File Uploads','0','Whether or not to allow users to upload screenshots when reporting incidents','file_uploads','boolean'),
(40,'upload_path','Incident Report Upload Path','/opt/ssd-local','The path on the local (or shared) filesystem where image uploads will be saved.  This path must be writeable by the user running the Apache webserver.  You may need to restart the Apache server after changing this value for the application to recognize the change.','file_uploads','string'),
(41,'file_upload_size','Maximum File Upload Size','1024','The maximum size (in bytes) allowed for user uploaded screenshots','file_uploads','string'),
(42,'ssd_url','SSD URL','','The SSD url that will be displayed on communication sent from this SSD server','urls','string'),
(43,'information_main','Main System Greeting','This dashboard displays status information for all critical services.  The dashboard will be updated whenever status information for any service changes.  Please check back here at any time to obtain current status information.<br><br>To report a problem with a service, please use the <a href="/report">report incident</a> link.  If you have reported an incident and have not received a response, please <a href="/escalation">escalate</a> the issue.','The information that will be displayed above the main status dashboard','information','string')
;

/*!40000 ALTER TABLE `main_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
