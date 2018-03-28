-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2018 at 10:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exigency`
--

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `emergency_id` int(11) NOT NULL,
  `emergency_name` varchar(50) NOT NULL,
  `emergency_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`emergency_id`, `emergency_name`, `emergency_status`) VALUES
(1, 'Asthma', 'saved'),
(2, 'Bleeding', 'saved'),
(4, 'Burns', 'saved'),
(6, 'Chest Pain', 'saved'),
(7, 'Choking', 'saved'),
(8, 'Drowning', 'saved'),
(9, 'Head Injury', 'saved'),
(11, 'Poisoning', 'saved'),
(12, 'Resuscitation', 'saved'),
(13, 'Seizure', 'saved'),
(16, 'Stroke', 'saved');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_info`
--

CREATE TABLE `emergency_info` (
  `emergency_type_id` int(11) NOT NULL,
  `emergency_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_info` text NOT NULL,
  `pic` varchar(100) NOT NULL,
  `cat_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_info`
--

INSERT INTO `emergency_info` (`emergency_type_id`, `emergency_id`, `cat_name`, `cat_info`, `pic`, `cat_status`) VALUES
(1, 6, 'Responsive', '1.	Make the casualty comfortable in a half sitting position. Support their head and shoulders. Place a coat/blanket under knees for additional support\r\n2.	Dial 999/112 for the emergency services. Tell them you suspect a heart attack\r\n3.	Encourage the casualty to rest\r\n4.	If the casualty has angina medication, encourage consumption\r\n5.	If possible, get the casualty to chew 300mg of aspirin\r\n6.	Monitor the casualty’s breathing and be prepared to resuscitate.\r\n', '', 'saved'),
(2, 6, 'Unresponsive', '1.	Open airway and check breathing\r\n2.	If breathing normally, place them in the recovery position\r\n3.	Dial 999/112 for the emergency services. Tell them the casualty is unresponsive and you suspect a heart attack\r\n4.	Monitor their breathing constantly\r\n5.	If the casualty’s breathing is absent or abnormal, start resuscitation immediately.\r\n6.	If a defibrillator (AED: Automated External Defibrillator) is available, attach the device to the casualty and follow the voice prompts:\r\n•	The AED will automatically analyse the heart rhythm and deliver a shock, if required\r\n•	The modern AED will issue voice prompts to direct you\r\n•	It is recommended that you receive training on how to use an AED\r\n', '', 'saved'),
(3, 7, 'Adult/Child', '1.	Ask they casualty, ‘Are you choking?’\r\n2.	Encourage the casualty to cough\r\n3.	If they cannot clear the object themselves, support them with one hand while leaning them forwards:\r\n•	Give up to five back blows between shoulder blades\r\n•	Check their mouth\r\n4.	If unsuccessful, try up to five abdominal thrusts:\r\n•	Stand behind the casualty and link your hands below their rib cage with the lower hand clenched in a fist. Pull sharply inwards and upwards\r\n•	Check their mouth\r\n5.	If the casualty is still choking dial 999/112 for emergency services\r\n6.	Repeat steps 3 and 4, checking the mouth after each step until help arrives\r\nIf the casualty becomes unresponsive at any point during the procedure, dial 999/112 for the emergency services immediately and start resuscitation.\r\nIf abdominal thrusts are used, seek medical advice\r\n', '', 'saved'),
(4, 7, 'Infant', 'Never use abdominal thrusts on an infant.\r\n1.	Lay the infant face down on your thigh while supporting their head. Give the infant up to five back blows\r\n2.	Turn the infant over so they are lying in your other thigh and check their mouth for obvioud obstruction (do not do a blind finger sweep).\r\nIf chocking persist try up to five chest thrusts.\r\n3.	Place two fingers on the breastbone, one fingers breadth below the nipple line and push downwards\r\n4.	Check the mouth\r\n5.	If the obstruction has not cleared, dial 999/112 for emergency help using mobile on speaker phone. Taking the infant with you if necessary.\r\n6.	Continue the cycles of back blows and chest thrusts while waiting for the emergency services to arrive. If the infant becomes unresponsive carry out resuscitation for one minute. The dial 999/112 for an ambulance, taking the infant with you.\r\n', '', 'saved'),
(5, 8, 'Assessing The Situation', 'D.R.A.B.C\r\n•	DANGER\r\no	Only if it is safe, you are trained to do so and the casualty is unresponsive should you enter the water to rescue a drowning victim.\r\no	Do not approach until expert help arrives. Dial 999/112 for emergency help immediately.\r\n•	RESPONSE\r\nCheck if the casualty is responsive:\r\no	Call their name or shout ‘Open your eye!’\r\no	Tap their shoulders for response\r\no	Gently shake an adult\r\no	Do not shake an infant or child. Tap the sole of an infant’s foot\r\no	CALL FOR HELP.\r\n•	AIRWAY\r\nWhen a casualty is unresponsive, their tongue can easily block their airway.\r\nKeep the airway open.\r\n•	BREATHING\r\nOnce the airway is open, check the casualty’s breathing:\r\n1.	Place your cheek above the casualty’s mouth/nose\r\n2.	Listen, look and feel for breathing\r\n3.	If the casualty is not breathing normally, or you are in any doubt start resuscitation immediately. Call for help, send helper to dial 999/112, or call emergency help yourself. If there is an AED nearby get that too.\r\n4.	If the casualty is breathing normally, place them in recovery position.\r\n•	CIRCULATION\r\nCheck for sever bleeding and treart life threatening injuries\r\n', '', 'saved'),
(6, 8, 'Adult CPR', 'Before you start, be aware of the correct hand position.\r\nA.	Perform five rescue breaths:\r\n1.	Ensure airway is open\r\n2.	Support the casualty’s chin with fingertips of one hand\r\n3.	With other hand, pinch the soft part of the casualty’s nose\r\nUse a pocket mask if possible\r\n4.	Take a breath. Place youe mouth over the casualty’s mouth, making a good seal\r\n5.	Breath steadily into the casualty’s mouth for one second. Watch the chest rise\r\n6.	Keeping hands in position, remove your mouth. Let chest fall.\r\n\r\nB.	Perform 30 chest compressions using both hands:\r\n1.	Kneel beside casualty\r\n2.	Place the heel of one hand on the centre of chest. Do not press on the casualty’s ribs, stomach or bottom of breastbone. Place the heel of your other hand on top. Interlock fingers and keep them off the casualty’s ribs\r\n3.	Leaning over the casualty, press straight down to five to six centimetres elbows straight. Release pressure fully, but do not take hands off chest\r\n4.	Give 30 chest compressions, at a rate of between 100-120 compressions per minute.\r\nC.	Continue giving 30 chest compressions followed by two rescue breaths until one of these things happen:\r\n•	Professional help takes over\r\n•	The casualty to wake up, open their eyes and breaths normally\r\n•	You become exhausted.\r\nNB If you are unable, unwilling or untrained to give rescue breaths, you can give chest compressions only.\r\n', '', 'saved'),
(7, 8, 'Child CPR', 'Before you start, be aware of the correct hand position.\r\nA.	Perform five initial rescue breaths:\r\n1.	Ensure airway is open\r\n2.	Carefully remove any visible obstruction from the mouth\r\n3.	Gently support chin with two fingertips of one hand\r\n4.	With other hand, pinch the soft part of the child’s nose\r\n5.	Take a breath and place your mouth around the child’s lips, making a good seal\r\n6.	Breathe steadily into the child’s mouth for one second. Watch the chest rise\r\n7.	Keeping hands in position, remove your mouth and allow their chest to fall\r\nRepeat steps 5 to 7, keeping airway open while pinching the child’s nose and supporting their chin.\r\nB.	Perform 30 chest compressions\r\n1.	Kneel beside the child\r\n2.	Leaning over, place the heel of one hand on the centre of the child’s chest. Do not press down on the child’s ribs, stomach or the bottom end of their breastbone\r\n3.	Press straight down to at least a third of the depth of the child’s chest, keeping your elbow straight. Release the pressure fully but do not take your hand off their chest\r\n4.	Give 30 chest compressions at a rate of 100-120 compressions per minute\r\nIf you are performing chest compressions on a large child, or you are small person, it may be easier to achieve the correct depth for each compression by using both hands, as in the adult procedure.\r\nC.	Give two rescue breaths.\r\nD.	Continue alternatiing 30 chest compressions with two rescue breaths.\r\nE.	After one minute, if you have no helper, dial 999/112.\r\nF.	Continue giving 30 chest compressions followed by two rescue breaths until one of these things happen:\r\n•	Professional help takes over\r\n•	The child starts to wake up, open their eyes and breathes normally\r\n•	You become exhausted.\r\nNB If you are unable, unwilling or untrained to give rescue breaths, you can give chest compressions only\r\n', '', 'saved'),
(8, 8, 'Infant CPR', 'Before you start, be aware of the correct hand position.\r\nA.	Ask helper to dial 999/112 for an ambulance\r\nIf you are alone, start the sequence of rescue breaths and chest compressions below. Do not leave the infant alone at this time.\r\nB.	Perform five initial rescue breaths:\r\n1.	Ensure airway is open.\r\n       Do not tilt the head too far back, as the airway may close\r\n2.	Carefully remove any visible obstructions from the mouth and nose\r\n3.	Keep supporting the infant’s chin with the fingertip of one hand\r\n4.	Take a breath and seal your lips around the infant’s mouth and nose\r\n5.	Breathe steadily into the infant’s mouth and nose for one second. Watch the chest rise\r\n6.	Keeping hands in position, remove your mouth and allow their chest to fall\r\n7.	Repeat steps 4 to 6. Keep airway open and support the chin.\r\nC.	Perform 30 chest compressions using two fingers only:\r\n1.	Lay the infant on their back, on a hard, flat surface\r\n2.	Place two fingertips on the centre of the infant’s chest\r\nMake sure your fingertips are placed so you will not apply pressure to the ribs, stomach or bottom end of the breastbone\r\n3.	Press straight down to at least a third of the depth of the infant’s chest\r\nRelease pressure, but do not take fingertips off the chest\r\n4.	Give 30 chest compressions at a rate 100-120 compressions per minute.\r\nD.	Give two rescue breaths.\r\nE.	Continue alternating 30 chest compressions with two rescue breaths.\r\nF.	After one minute, if you have no helper, dial 999/112 for an ambulance.\r\nTake the infant with you while you phone.\r\nG.	Continue giving 30 chest compressions followed by two rescue breaths until one these things happen:\r\n•	Professional help takes over\r\n•	The infant starts to wake up, open their eyes and breathes normally\r\n•	You become exhausted\r\nNB If you are unable, unwilling or untrained to give rescue breaths, you can give chest compressions only.\r\n', '', 'saved'),
(9, 9, 'General Warning', 'Any head injury must be treated seriously as it is potentially life threatening.\r\nYou must advise casualties to seek medical advice.\r\nHead injury may result in concussion or compression, with or without a fractured skull:\r\n•	Concussion is a mild injury to the brain, usually resulting in a full recovery\r\n•	Compression describes a bleed or swelling in the head which requires urgent medical attention.\r\nWith all head injuries:\r\n•	Always assume that any casualty with a head injury may also have a neck injury\r\n•	Check the casualty’s level of response by asking simple questions\r\n•	Anyone who has suffered a blow to the head that results in a loss of responsiveness must see a healthcare professional. \r\n', '', 'saved'),
(10, 9, 'Recognition', 'CONCUSSION\r\nMay have some or all of the following:\r\n•	Recent blow to head\r\n•	General headache\r\n•	Impaired or becoming unresponsive\r\n•	Dizziness on recovery\r\n•	Memory loss\r\n•	Confusion\r\nCOMPRESSION\r\nMay have some or all of the following:\r\n•	Recent blow to head\r\n•	Intense and increasing headache\r\n•	Becoming unresponsive\r\n•	Poor responses\r\n•	Confusion\r\n•	Slow, noisy breathing\r\n•	Slow, strong pulse\r\n•	Pupils of unequal size\r\n•	Weakness on one side\r\n•	Drowsiness\r\n•	Irritability, disorientation\r\n•	Vomiting\r\nFRACTURES\r\nMay have some or all of the following:\r\n•	History of injury\r\n•	Wound/bruise to head\r\n•	Soft area/dip in scalp\r\n•	Low levels of response\r\n•	Nose/ear fluid leak\r\n•	Distortion oh head/face\r\n•	Irritability, confusion\r\n', '', 'saved'),
(11, 9, 'Treatment', '1.	Monitor casualty regularly. Keep a close eye on the level of response in case it deteriorates\r\n2.	When they have recovered ask a responsible adult to look after them\r\n3.	If they were playing a sport when it happened do not let them return to play until they have been fully assessed by a medical practitioner\r\n4.	Seek medical help in any of the following apply:\r\n•	Increasing drowsiness\r\n•	Persistent headache\r\n•	Difficulty in speaking or walking\r\n•	Vomiting \r\n•	Double vision\r\n•	Seizure\r\n•	Over 65 years old\r\n•	They are taking anti clothing medication\r\n•	They are intoxicated with drugs or alcohol\r\n•	There is no responsible adult to look after them\r\n', '', 'saved'),
(12, 11, 'Swallowed', '1.	Find out what was swallowed. Keep any containers with information about the possible poison\r\nReassure the casualty\r\n2.	If their ‘lips are burning’, give frequent sips of water or milk. Do not attempt to make them sick. See also burns face/mouth\r\n3.	Dial 999/112 for an ambulance\r\nIf necessary, remove contaminated clothing\r\n4.	If the casualty is unresponsive, open their airway and check their breathing:\r\n•	If they are breathing, put them in the recovery position \r\n•	If they are not breathing, be prepared to resuscitate\r\n5.	When the ambulance arrives, pass on any details of the poison.\r\n', '', 'saved'),
(13, 11, 'Skin', '1.	Try to find out what the casualty has been in contact with. Keep any containers with information about poison\r\n2.	Do not touch the affected area with you bare hands\r\n3.	Flush away residual poison with running water for at least 20 minutes\r\nGently remove any contaminated clothing as you do this. Avoid splashing\r\n4.	If the casualty is unresponsive, open their airway and check their breathing:\r\n•	If they are breathing, put them in the recovery position \r\n•	If they are not breathing, be prepared to resuscitate. Dial 999/112 for an ambulance\r\n5.	When the ambulance arrives, pass on any details of the poison.\r\n', '', 'saved'),
(14, 11, 'Drugs', '1.	If the casualty is responsive, place in a comfortable position and attempt to find out what has been taken\r\n2.	Do not induce vomiting\r\n3.	Dial 999/112 for an ambulance giving as much information about the suspected drug as possible\r\n4.	If the casualty vomits, save a specimen for the emergency services:\r\n•	If the casualty is breathing but unresponsive, place them in the recovery position and monitor their breathing constantly\r\n•	If the casualty has stopped breathing, be prepared to start resuscitation\r\n', '', 'saved'),
(15, 12, 'Assessing The Situation', '      D.R.A.B.C\r\n•	DANGER\r\no	Make the area safe, eg. Turn off electricity\r\no	If unable to ensure safety, do not approach until expert help arrives\r\no	Only move the casualty as a last resort\r\n\r\n•	RESPONSE\r\n       Check if the casualty is responsive:\r\no	Call their name or shout ‘Open your eyes!’\r\no	Tap their shoulders for a response\r\no	Gently shake an adult\r\no	Do not shake and infant or child. Tap the sole of an infant’s foot\r\no	CALL FOR HELP\r\n•	AIRWAY\r\nWhen a casualty is unresponsive, their tongue can easily block their airway.\r\nKeep the airway open.\r\n•	BREATHING\r\n       Once the airway is open, check the casualty’s breathing:\r\n1.	Place your cheek above the casualty’s mouth/nose\r\n2.	Listen, look and feel for breathing\r\n3.	If the casualty is not breathing normally, or you are in any doubt start resuscitation immediately. Call for help, send helper to dial 999/112, or call emergency help yourself. If there is an AED nearby get that too.\r\n4.	If the casualty is breathing normally, place them in recovery position.\r\n•	CIRCULATION\r\n       Check for sever bleeding and treart life threatening injuries.\r\n', '', 'saved'),
(16, 12, 'Adult CPR', 'Before you start, be aware of the correct hand position.\r\nA.	Perform 30 chest compressions using both hands:\r\n1.	Kneel beside casualty\r\n2.	Place the heel of one hand on the cenrtr of chest. Do not press on the casualty’s ribs, stomach or bottom of breastbone.\r\nPlace the heel of your other hand on top. Interlock fingers and keep them off the casualty’s ribs\r\n3.	Leaning over the casualty, press straight down to five to six centimetres keeping elbows straight.\r\nRelease pressure fully, but do not take hands off chest\r\n4.	Give 30 chest compressions, at a rate of between 100-120 compressions per minute.\r\nB.	Perform two rescue breaths:\r\n1.	Ensure airway is open\r\n2.	Support the casualty’s chin with fingertips of one hand\r\n3.	With other hand, pinch the soft part of the casualty’s nose\r\nUse a pocket mask if possible\r\n4.	Take a breath. Place youe mouth over the casualty’s mouth, making a good seal\r\n5.	Breath steadily into the casualty’s mouth for one second. Watch the chest rise\r\n6.	Keeping hands in position, remove your mouth. Let chest fall.\r\nC.	Continue giving 30 chest compressions followed by two rescue breaths until one these things happen:\r\n•	Professional help takes over\r\n•	The casualty starts to wake up, open their eyes and breathes normally\r\n•	You become exhausted\r\nNB If you are unable, unwilling or untrained to give rescue breaths, you can give chest compressions only.\r\n', '', 'saved'),
(17, 12, 'Child CPR', 'Before you start, be aware of the correct hand position.\r\nA.	Perform five initial rescue breaths:\r\n1.	Ensure airway is open\r\n2.	Carefully remove any visible obstruction from the mouth\r\n3.	Gently support chin with two fingertips of one hand\r\n4.	With other hand, pinch the soft part of the child’s nose\r\n5.	Take a breath and place your mouth around the child’s lips, making a good seal\r\n6.	Breathe steadily into the child’s mouth for one second. Watch the chest rise\r\n7.	Keeping hands in position, remove your mouth and allow their chest to fall\r\nRepeat steps 5 to 7, keeping airway open while pinching the child’s nose and supporting their chin.\r\nB.	Perform 30 chest compressions\r\n1.	Kneel beside the child\r\n2.	Leaning over, place the heel of one hand on the centre of the child’s chest. Do not press down on the child’s ribs, stomach or the bottom end of their breastbone\r\n3.	Press straight down to at least a third of the depth of the child’s chest, keeping your elbow straight. Release the pressure fully but do not take your hand off their chest\r\n4.	Give 30 chest compressions at a rate of 100-120 compressions per minute\r\nIf you are performing chest compressions on a large child, or you are small person, it may be easier to achieve the correct depth for each compression by using both hands, as in the adult procedure.\r\nC.	Give two rescue breaths.\r\nD.	Continue alternatiing 30 chest compressions with two rescue breaths.\r\nE.	After one minute, if you have no helper, dial 999/112.\r\nF.	Continue giving 30 chest compressions followed by two rescue breaths until one of these things happen:\r\n•	Professional help takes over\r\n•	The child starts to wake up, open their eyes and breathes normally\r\n•	You become exhausted.\r\nNB If you are unable, unwilling or untrained to give rescue breaths, you can give chest compressions only.\r\n', '', 'saved'),
(18, 12, 'Infant CPR', 'Before you start, be aware of the correct hand position.\r\nA.	Ask helper to dial 999/112 for an ambulance\r\nIf you are alone, start the sequence of rescue breaths and chest compressions below. Do not leave the infant alone at this time.\r\nB.	Perform five initial rescue breaths:\r\n1.	Ensure airway is open.\r\n       Do not tilt the head too far back, as the airway may close\r\n2.	Carefully remove any visible obstructions from the mouth and nose\r\n3.	Keep supporting the infant’s chin with the fingertip of one hand\r\n4.	Take a breath and seal your lips around the infant’s mouth and nose\r\n5.	Breathe steadily into the infant’s mouth and nose for one second. Watch the chest rise\r\n6.	Keeping hands in position, remove your mouth and allow their chest to fall\r\n7.	Repeat steps 4 to 6. Keep airway open and support the chin.\r\nC.	Perform 30 chest compressions using two fingers only:\r\n1.	Lay the infant on their back, on a hard, flat surface\r\n2.	Place two fingertips on the centre of the infant’s chest\r\nMake sure your fingertips are placed so you will not apply pressure to the ribs, stomach or bottom end of the breastbone\r\n3.	Press straight down to at least a third of the depth of the infant’s chest\r\nRelease pressure, but do not take fingertips off the chest\r\n4.	Give 30 chest compressions at a rate 100-120 compressions per minute.\r\nD.	Give two rescue breaths.\r\nE.	Continue alternating 30 chest compressions with two rescue breaths.\r\nF.	After one minute, if you have no helper, dial 999/112 for an ambulance.\r\nTake the infant with you while you phone.\r\nG.	Continue giving 30 chest compressions followed by two rescue breaths until one these things happen:\r\n•	Professional help takes over\r\n•	The infant starts to wake up, open their eyes and breathes normally\r\n•	You become exhausted\r\nNB If you are unable, unwilling or untrained to give rescue breaths, you can give chest compressions only.\r\n', '', 'saved'),
(19, 13, 'Recognition', '       ABSENCE SEIZURE\r\n	May have some or all of the following:\r\n•	Lost awareness for seconds\r\n•	Unusual movements\r\n      CONVULSIVE SEIZURE\r\n	May have some or all of the following:\r\n•	Stiifen and fall to the ground\r\n•	Convulsing\r\n•	Rigid body\r\n•	Difficulty breathing/no breathing\r\n•	Clenched jaw\r\n•	Loss of bowel/bladder control\r\n•	Excessive saliva from mouth\r\n•	They relax, breathing becomes normal and they recover responsiveness within a few minutes\r\n•	They may be unaware of their surroundings\r\n•	Feel very tired\r\n•	They can fall into deep sleep\r\n', '', 'saved'),
(20, 13, 'Absence Seizure', '1.	There is no immediate treatment other than reassurance and keeping them safe\r\nAdvise the casualty to seek advice\r\n2.	Be aware that an absence seizure may be followed by a convulsive seizure\r\n', '', 'saved'),
(21, 13, 'Convulsive Seizure', '1.	Clear space around the casualty. Protect them by padding sharp or dangerous objects with coats or cushions. Note the time the seizure started\r\n2.	Loosen tight clothing around their neck, chest and waist\r\n•	Do not put anything around their neck, chest and waist\r\n•	Do not attempt to force or keep their jaws open\r\n•	Do not attempt to restrain them\r\n3.	When the seizure stops, open airway and check the casualty’s breathing:\r\n•	If they are breathing, place them in the recovery position\r\n•	If they are not breathing, be prepared to resuscitate\r\n4.	Stay with the casualty. Note duration of seizure and regularly check breathing and pulse\r\n5.	Dial 999/112 for an ambulance if:\r\n•	The casualty has continuous seizures\r\n•	Injury is sustained\r\n•	The casualty becomes unresponsive\r\n•	It is casualty’s first seizure\r\n•	If the seizure lasts for more than five minutes\r\n•	If the casualty is not fully recovered\r\n', '', 'saved'),
(22, 16, 'Recognition', 'May have some or all of the following:\n     F.A.S.T\n•	FACIAL WEAKESS\nUnable to smile\nDroopy mouth or eye\n•	ARM WEAKNESS\nUnable to lift arm(s) or leg(s)\n•	SPEECH PROBLEMS\nUnable to speak clearly ur understand\n•	TIME TO CALL 999/112\nIf stroke suspected\nOther symptoms:\n•	Unequal pupils\n•	Confusion\n', '', 'saved'),
(23, 16, 'Responsive', '1.	Keep the casualty in a comfortable, supported position. Even help them to lie down\r\n2.	Dial 999/112 for the emergency services\r\n3.	Loosen any tight clothing and continue to reassure the casualty\r\n4.	Monitor and record the casualty’s level of response, pulse and breathing\r\n5.	Do not give the casualty anything to eat or drink, as they may have difficulty swallowing\r\n', '', 'saved'),
(24, 16, 'Unresponsive', 'UNRESPONSIVE\r\n1.	Open aiway and check breathing:\r\n•	If they are breathing, place them in the recovery position\r\n•	If they are not breathing, be prepared to resuscitate\r\n2.	Dial 999/112 for the emergency services\r\n3.	Monitor and record the casualty’s level of response, pulse and breathing\r\n4.	Be prepared to resuscitate\r\n', '', 'saved'),
(25, 1, 'Instructions', '1.       Keep calm and reassure the casualty. Get Them to use their inhaler\r\n2.       Let them adopt the position they find comfortable. Do NOT make the casualty lie down.\r\n3.       Mild attacks should ease within minutes. If not, ask the casualty to yse their inhaler again.\r\n', '../src/Asthma/ashtma.jpg', 'saved'),
(27, 2, 'Minor', 'If it is dirty, clean the wound under running water. Pat the wound dry using sterile materials, like gauze.\r\n\r\nCover the wound completely with a sterile material such as a gauze square or dressing.\r\n\r\nSupport the injured area\r\n\r\nClean thesurrounding area, remove the wound covering and apply the sterile adhesive dressing to the wound\r\n\r\nAdvise the casualty to see their doctor if there is a special risk of infection or any other concerns.', '', ''),
(28, 2, 'Nose Bleeding', 'Be aware of the risk of cross infection when dealing with any open wound:\r\n\r\n• Always wash your hands before and after treatment \r\n\r\n• If possible, wear disopsable gloves. If gloves are not available encourage the casualty to dress/cover their own wound(s)\r\n\r\n• Make sure that if you have any open wonds that they are covered with a plaster\r\n\r\n• Try not to touch a wound, or any dressing that is going to have contact with a wound \r\n\r\n• Dispose of any waste', '', ''),
(29, 2, 'Severe', 'Control bleeding by applying direct pressure to the wound\r\n\r\nApply a dressing firmly to control bleeding. Be careful it is not so tight that it restricts circulation.\r\n\r\nPrevent/treat shock by lying the casualty down with their feet raised.\r\n\r\nIf the casualty has a head injury, lay them down and slightly raise their head and shoulders \r\n\r\nIf blood comes through dressing, apply another on top\r\n\r\nIf the blood also seeps through this too, remove both dressing using direct new sterile dressing using direct pressure to the wound \r\n\r\nSupport the injured area in a raised position\r\n', '', ''),
(34, 1, 'Recognition', '            May have some or all of the following:\n          \n           	• Previous history of asthma \n          \n           	• Difficult breathing\n          \n           	• Wheezing (breathe with a whistling or rattling sound in the chest.)\n          \n           	• Difficulty talking in full setntences \n          \n           	• Increased breathing rate ', '../src/Asthma/ashtma.jpg', ''),
(35, 1, 'Asthma Attack', '1. Keep calm and reassure the casualty. Get Them to use their inhaler\r\n2. Let them adopt the position they find comfortable. Do NOT Make the casualty lie down\r\n3. Mild Attacks should ease within minutes. If not, ask the casualty to use their inhaler again\r\n4.  If the casualty becomes unresponsive, open the airway and check\r\n• If the casualty is breathing, place them in the recovery position\r\n  Monitor breathing and level of response until help arrives\r\n • If the casualty is not breathing, begin resuscitation monitor breathing and level of response until help arrives', '../src/Asthma/ashtma.jpg', ''),
(39, 4, 'Chemical Burn', 'For body:\r\n         Douse the burn with cold water for 20 minutes\r\n        As you pour cold water iver the burn, carefully remove any contaminated clothing\r\n        \r\nFor eyes:\r\n         Irrigate under cold running wate for 10 minute. Include both sides of the eyelid when irrigating\r\n         Ensure that water drains away from the face\r\n         Avoid splashing any contaminated water on you or the casualty\r\n        1. Leave any blisters intact\r\n      \r\n      2. Cover with a sterile dressing\r\n      \r\n      3. Go to call tab which is the most right side of the screen and call ambulance hotlines', '', ''),
(40, 4, 'Face', '      1.heck for danger\r\n      \r\n      \r\n      2. Maintain the airway, loosening clothing around the casualty''s neck if needed\r\n      \r\n      \r\n      \r\n      3. Give the casualty ice or sips of cold water to relieve the pain and any swelling\r\n        \r\n      \r\n      \r\n       4. Monitor the casualty continuosly as any injury may cause difficulty in breathing', '', ''),
(41, 4, 'General', '      1. Do NOT touch the burnt area\r\n \r\n\r\n      2. Leave any clothing stuck to the burn in place unless it is contaminated with\r\n         chemicals\r\n\r\n\r\n      3. Leave any blisters intact\r\n \r\n\r\n      4. Hold the burn under cold running water for 10 minutes, or until the pain settles. As you do this, remove any jewelery, or any other constrictive clothing', '', ''),
(42, 4, 'Important Information', ' When treating burns:\r\n          \r\n           	• Do NOT remove anything that is sticking to the burn\r\n            \r\n          \r\n          \r\n          \r\n           	• Do NOT over cool the casualty as there is a risk of lowering their body temperature too much\r\n            \r\n          \r\n          \r\n          \r\n           	• Do NOT use lotions, ointments or creams\r\n            \r\n          \r\n          \r\n          \r\n           	• Do NOT use adhesive dressings\r\n            \r\n          \r\n          \r\n          \r\n           	• Do NOT break blisters', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_location`
--

CREATE TABLE `hospital_location` (
  `hospital_location_id` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `hospital_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_location`
--

INSERT INTO `hospital_location` (`hospital_location_id`, `latitude`, `longitude`, `hospital_name`, `hospital_status`) VALUES
(1, 14.6028, 121.006, 'St. Luke Hospital Global Nephro Training Center', 'saved'),
(2, 14.5991, 121.015, 'Valenzuela Hospital Santa. Mesa Manila', 'saved'),
(3, 14.6328, 120.978, 'Amisola Maternity Hospital - Hermosa Street, Manuguit, Tondo', 'saved'),
(4, 14.6236, 120.962, 'Canossa Health and Social Center Foundation, Inc. - E. Jacinto Street, Magsaysay Village, Tondo', 'saved'),
(5, 14.6055, 120.979, 'Clinica Arellano General Hospital - Doroteo Jose Street, Santa Cruz', 'saved'),
(6, 14.5998, 121, 'De Ocampo Memorial Medical Center - Nagtahan Street, Santa Mesa', 'saved'),
(7, 14.6063, 120.984, 'Dr. Jose Fabella Memorial Hospital - Lope de Vega Street, Santa Cruz', 'saved'),
(8, 14.6018, 121.015, 'Dr. Mirando Unciano, Sr. Medical Center - V. Mapa Street, Santa Mesa', 'saved'),
(9, 14.6125, 120.981, 'F. Lanuza Health Center and Lying-in Clinic - Alvarez Street, Santa Cruz', 'saved'),
(10, 14.6009, 120.965, 'GAT Andres Bonifacio Memorial Medical Center - Delpan Street, Tondo', 'saved'),
(11, 14.614, 120.989, 'Hospital of the Infant Jesus - Laong Laan Street, Sampaloc', 'saved'),
(12, 14.6142, 120.982, 'Jose R. Reyes Memorial Medical Center - San Lazaro Compound, Rizal Avenue, Santa Cruz', 'saved'),
(13, 14.597, 120.972, 'Justice Jose Abad Santos General Hospital - Numancia St. Binondo Manila', 'saved'),
(14, 14.5819, 120.983, 'Manila Doctors'' Hospital - United Nations Avenue, Ermita', 'saved'),
(15, 14.618, 120.991, 'Maria Clara Health Center and Lying-in Clinic - Maria Clara corner Prudencio Streets, Sampaloc', 'saved'),
(16, 14.6033, 120.99, 'Mary Chiles General Hospital - Dalupan Street, Sampaloc', 'saved'),
(17, 14.5096, 121.013, 'Mary Johnston Hospital - Juan Nolasco Street, Tondo', 'saved'),
(18, 14.5825, 120.985, 'Medical Center Manila[1] - General Luna Street, Ermita', 'saved'),
(19, 14.6092, 120.979, 'Metropolitan Medical Center - Masangkay Street, Tondo', 'saved'),
(20, 14.584, 121.016, 'New Manila District Hospital - Pad. Peo, Santa Cruz', 'saved'),
(21, 14.5707, 120.993, 'Nephrology Center of Manila - San Andres Street corner Leon Guinto Street, Malate', 'saved'),
(22, 14.5639, 120.986, 'Ospital ng Maynila Medical Center - Quirino Avenue corner Roxas Boulevard, Malate', 'saved'),
(23, 14.6076, 120.997, 'Ospital ng Sampaloc - Geronimo Street, Sampaloc', 'saved'),
(24, 14.6259, 120.978, 'Ospital ng Tondo - Jose Abad Santos Avenue, Tondo', 'saved'),
(25, 14.5948, 121.022, 'Our Lady of Lourdes Hospital - P. Sanchez Street, Santa Mesa', 'saved'),
(26, 14.5714, 121.001, 'Pedro Gil Health Center and Lying-in Clinic - A. Francisco Street corner Perlita Street, San Andres', ''),
(27, 14.6126, 120.988, 'Perpetual Help Hospital - Laong Laan Street, Sampaloc', ''),
(28, 14.6082, 120.992, 'Perpetual Succor Hospital - Cayco Street, Sampaloc', ''),
(29, 14.5777, 120.986, 'Philippine General Hospital - Taft Avenue, Ermita', ''),
(30, 121, 14.5944, 'Presidential Security Group Station Hospital - Malacañang Park', ''),
(31, 14.6158, 120.989, 'Saint Jude Hospital and Medical Center - Don Quijote corner Dimasalang Streets, Sampaloc', ''),
(32, 14.6138, 120.981, 'San Lazaro Hospital - Quiricada Street, Santa Cruz', ''),
(33, 14.584, 121.016, 'Santa Ana Hospital - New Panaderos Street, Santa Ana', ''),
(34, 14.5874, 120.978, 'Seamen''s Hospital - Cabildo corner San Jose Streets, Intramuros', ''),
(35, 14.6157, 120.987, 'The Family Clinic, Inc. - Maria Clara Street, Sampaloc', ''),
(36, 14.6144, 120.961, 'Tondo Foreshore Health Center - Pacheco Street corner Santa Fe Street, Tondo', ''),
(37, 14.6207, 120.972, 'Tondo Health Center - Gagalangin, Tondo', ''),
(38, 14.6348, 120.963, 'Tondo Medical Center - Kalakal Street, Balut, Tondo', ''),
(39, 14.5844, 121.017, 'Trinity Woman and Child Center "The Birthplace" - New Panaderos Street, Santa Ana', ''),
(40, 14.574, 121.044, 'Unciano General Hospital', ''),
(41, 14.6173, 121.002, 'United Doctor''s Medical Center - near Mabuhay Rotonda', ''),
(42, 14.5639, 120.986, 'Ospital ng Maynila Medical Center - Quirino Avenue corner Roxas Boulevard, Malate', ''),
(43, 14.6076, 120.997, 'Ospital ng Sampaloc - Geronimo Street, Sampaloc', ''),
(44, 14.6259, 120.978, 'Ospital ng Tondo - Jose Abad Santos Avenue, Tondo', ''),
(45, 14.5948, 121.022, 'Our Lady of Lourdes Hospital - P. Sanchez Street, Santa Mesa', ''),
(46, 14.5714, 121.001, 'Pedro Gil Health Center and Lying-in Clinic - A. Francisco Street corner Perlita Street, San Andres', ''),
(47, 14.6126, 120.988, 'Perpetual Help Hospital - Laong Laan Street, Sampaloc', ''),
(48, 14.6082, 120.992, 'Perpetual Succor Hospital - Cayco Street, Sampaloc', ''),
(49, 14.5777, 120.986, 'Philippine General Hospital - Taft Avenue, Ermita', ''),
(50, 121, 14.5944, 'Presidential Security Group Station Hospital - Malacañang Park', ''),
(51, 14.6158, 120.989, 'Saint Jude Hospital and Medical Center - Don Quijote corner Dimasalang Streets, Sampaloc', ''),
(52, 14.6138, 120.981, 'San Lazaro Hospital - Quiricada Street, Santa Cruz', ''),
(53, 14.584, 121.016, 'Santa Ana Hospital - New Panaderos Street, Santa Ana', ''),
(54, 14.5874, 120.978, 'Seamen''s Hospital - Cabildo corner San Jose Streets, Intramuros', ''),
(55, 14.6157, 120.987, 'The Family Clinic, Inc. - Maria Clara Street, Sampaloc', ''),
(56, 14.6144, 120.961, 'Tondo Foreshore Health Center - Pacheco Street corner Santa Fe Street, Tondo', ''),
(57, 14.6207, 120.972, 'Tondo Health Center - Gagalangin, Tondo', ''),
(58, 14.6348, 120.963, 'Tondo Medical Center - Kalakal Street, Balut, Tondo', ''),
(59, 14.5844, 121.017, 'Trinity Woman and Child Center "The Birthplace" - New Panaderos Street, Santa Ana', ''),
(60, 14.574, 121.044, 'Unciano General Hospital', ''),
(61, 14.6173, 121.002, 'United Doctor''s Medical Center - near Mabuhay Rotonda', ''),
(62, 1, 2, 'siraulo', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotlines`
--

CREATE TABLE `hotlines` (
  `line_id` int(11) NOT NULL,
  `line_number` varchar(12) NOT NULL,
  `line_owner` varchar(50) NOT NULL,
  `line_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotlines`
--

INSERT INTO `hotlines` (`line_id`, `line_number`, `line_owner`, `line_status`) VALUES
(1, '911', 'OFFICIAL EMERGENCY HOTLINE', 'saved'),
(2, '124', 'Phivolcs', 'saved'),
(3, '117', 'PNP', 'saved'),
(4, '117', 'Bureau of fire protection', 'saved'),
(5, '136', 'MMDA', 'saved'),
(6, '143', 'Red Cross', 'saved'),
(7, '4211918', 'NDRRMC', 'saved'),
(8, '132786', 'Office if Civil Defense', 'saved'),
(9, '4422786', 'PAGASA', 'saved'),
(10, '5273877', 'Philippine Coastguard', 'saved'),
(11, '9517119', 'DSWD', 'saved'),
(12, '7295166', 'Bureau of Fire Protection', 'saved'),
(13, '2481743', 'Cainta ', 'saved'),
(14, '3866568', 'Caloocan (north)', 'saved'),
(15, '3245168', 'Caloocan (south)', 'saved'),
(16, '8443146', 'Makati ', 'saved'),
(17, '184999', 'Malabon', 'saved'),
(18, '5273087', 'Manila ', 'saved'),
(19, '6461633', 'Marikina', 'saved'),
(20, '2811111', 'Navotas', 'saved'),
(21, '9232499', 'Parañaque', 'saved'),
(22, '8338512', 'Pasay', 'saved'),
(23, '64331111', 'Pasig', 'saved'),
(24, '6311111', 'Pateros', 'saved'),
(25, '112', 'Quezon City', 'saved'),
(26, '4681697', 'San Juan', ''),
(27, '8384301', 'Taguig', ''),
(28, '2921405', 'Valenzuela', ''),
(29, '213', 'dito', '');

-- --------------------------------------------------------

--
-- Table structure for table `learn`
--

CREATE TABLE `learn` (
  `learn_id` int(11) NOT NULL,
  `learn_name` varchar(30) NOT NULL,
  `learn_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learn`
--

INSERT INTO `learn` (`learn_id`, `learn_name`, `learn_status`) VALUES
(1, 'Pressure Points', 'saved'),
(2, 'Dressing', 'saved'),
(3, 'Folds', 'saved'),
(5, 'Roller Bandage', 'saved'),
(6, 'Triangular Bandage', 'saved'),
(7, 'siraulosijona', 'saved');

-- --------------------------------------------------------

--
-- Table structure for table `learn_info`
--

CREATE TABLE `learn_info` (
  `learn_type_id` int(11) NOT NULL,
  `learn_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_info` text NOT NULL,
  `cat_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learn_info`
--

INSERT INTO `learn_info` (`learn_type_id`, `learn_id`, `cat_name`, `cat_info`, `cat_status`) VALUES
(1, 1, 'Information', 'Pressure points can be used in an emergency to reduce circulation to areas in the body. By reducing bleeding, you can enable a patient can survive the wait to receive medical care, as well as prevent a victim from going into shock.\r\n\r\n In a serious accident, there may be internal bleeding, which cannot be stopped by direct pressure.\r\n\r\n If the person is vomiting blood, has bruises or other signs of possible bone damage or is bleeding from the genitalia, do not attempt to intervene.\r\n\r\n If the person has cold, moist skin or seems to be struggling to breathe evenly, the situation could also be life-threatening. Seek immediate urgent medical care. Otherwise, you can begin by helping the person to sit down or lie down. If possible, elevate the affected limb or head above the heart, to reduce blood flow to the wound. Then locate a pulsing sensation at the appropriate pressure point.\r\n\r\n', 'saved'),
(2, 1, 'Face/Head Wounds', 'Trace from the outside corner of the eye towards the ear. You will feel a dip near where the ear begins to extend from the head. Press and hold, to confirm you feel a pulse, which indicates the temporal artery.\r\n', 'saved'),
(3, 1, 'Neck Wounds', 'Trace from the outside corner of the eye towards the ear. You will feel a dip near where the ear begins to extend from the head. Press and hold, to confirm you feel a pulse, which indicates the temporal artery.\r\n\r\n', 'saved'),
(4, 1, 'Upper Arm/Elbow Wounds', 'Access the brachial artery on the inner side of the arm, above the elbow bone, between the large upper arm muscles. This may not be as apparent as the carotid artery.\r\n\r\n', 'saved'),
(5, 1, 'Groin/Thigh Wounds', 'Find the femoral artery in the middle of the bottom crease of the groin, between the groin and the upper thigh. This is also known as the “bikini line.” This artery may require substantial pressure, pressing down with the entire heel of your hand, to reduce its circulation.\r\n\r\n', 'saved'),
(6, 1, 'Lower Leg Wounds', 'Press the back of the knee, directly behind the knee cap, to access the popliteal artery. Do not bend or move the leg to put it in a more convenient location. Reach around to the back of the leg and press up.\r\n\r\n', 'saved'),
(7, 1, 'Hand/Feet Wounds', 'On the inside of the wrist, move away from the thumb towards the tip of the forearm. For foot wounds, trace above the front/top of the foot, right where it meets the shin. In both cases, do not forget to feel for a pulse before applying pressure.', 'saved'),
(8, 2, 'Information', '\r\nA dressing is used to protect a wound and prevent infection, but also to allow healing. A dressing should be large enough to totally cover the wound, with a safety margin of about 2.5 cm on all sides beyond the wound. A sterile dressing may be used to control bleeding from a major wound or to absorb any discharge from a minor wound.\r\n\r\nDressings vary greatly in nature and size, so it is important to select the correct dressing for use on a specific wound. A sterile dressing which is past its expiry date should NOT be used.\r\n\r\nA bandage is used in combination with a dressing where a wound is present. A roller bandage is used to secure a dressing in place. A triangular bandage is used as an arm sling or as a pad to control bleeding. It may also be used to support or immobilise an injury to a bone or joint or as improvised padding over a painful injury. A tubular gauze bandage is used to retain a dressing on a finger or toe.\r\n\r\n\r\n', 'saved'),
(9, 2, 'Sterile wound dressings', 'Wound dressings will be in a sterile packet, which should be opened carefully by a person with clean or gloved hands. Then, to avoid contamination of the sterile dressing, it is not removed from the opened packet until the wound is ready to be covered.\r\n\r\nDressings used to control bleeding must be bulky to ensure that adequate pressure is applied over the injured area. The most common dressing is made of combined wool or cellulose, covered in a light cotton woven fabric, and these are generally known as ‘combine dressings’.\r\n\r\nSome major wound dressings are labelled as BPC or BP (because they are listed in the British Pharmacopoeia) and consist of a sterile combine dressing with attached bandage. They are ideal  to fill crater wounds or to control severe bleeding.\r\n\r\nSterile gauze squares are used mainly for cleaning a wound. Cotton wool should NOT be used because of loose cotton fibres that might stick to the wound during healing.\r\n', 'saved'),
(10, 2, 'Sterile non-adherent dressings', 'Very light dressings are used on a minor wound to aid healing and most have a non-adherent surface. A non-adherent dressing is often covered on one or both sides with a plastic film containing many perforations. If only one side has a plastic film, that is the side to be placed against the wound. This allows fluids to pass through into an absorbent layer, to keep the wound dry.\r\n\r\nOther types of non-adherent dressing have a special synthetic coating on one or both sides to prevent adhesion to the wound surface. The non-adherent layer is always placed against the wound. To reduce confusion and incorrect use, some manufacturers make both sides onadherent.\r\n\r\nNon-adherent dressings are used for extensive surface wounds such as an abrasion (graze) or burn.\r\n', 'saved'),
(11, 2, 'Improvised dressings', 'In an emergency a dressing may be improvised from a range of materials. To control bleeding a bulky pad may be made from a bundle of several facial tissues or from any clean, non-fluffy material.\r\n\r\nFor a minor burn or scald, a piece of clean plastic kitchen wrap may be used initially. However, if the burn is serious, it is vital to use only sterile coverings to avoid the risk of infection. Cooling should be continued until a sterile dressing is available.\r\n', 'saved'),
(12, 3, 'Broad-fold bandage', 'As a broad-fold bandage with the apex folded down to the base twice to immobilise a lower body injury.', 'saved'),
(13, 2, 'Narrow-fold Bandage', 'As a narrow-fold bandage with the broadfold bandage folded in half to control severe bleeding, or for immobilisation of a lower limb.\r\nAs a collar-and-cuff sling for an upper body injury.\r\n\r\n', 'saved'),
(14, 3, 'Pad', 'As a folded pad after the ends of the narrowfold bandage have been brought into the centre three times, and for use on a major wound or as padding.\r\n\r\n', 'saved'),
(15, 3, 'Sling', 'In the open form as a sling to support an upper body injury.', 'saved'),
(16, 5, 'Information', 'A roller bandage is used to:\r\n• hold a dressing in place on a wound\r\n• maintain pressure over a bulky pad to control bleeding\r\n• support an injured limb or joint\r\n• apply pressure to a limb\r\n\r\nRoller bandages are made from lightweight cotton, crepe or elasticised crepe, depending on the pressure to be achieved. A lightweight cotton bandage is used to hold a dressing in place, whereas a crepe or elasticised crepe bandage is used for applying support or firm pressure to a soft tissue injury.\r\n\r\n\r\nA roller bandage needs to be chosen carefully to ensure that it is the correct width for the body part involved. As a general guide, the following widths are recommended:\r\n\r\n• Lower arm, elbow, hand and foot – 75 mm.\r\n\r\n• Upper arm, knee and lower leg – 100 mm.\r\n\r\n• Large leg or trunk – 150 mm.\r\nIt is best to use a bandage with some degree of stretch in the weave. This will make the bandage easy to use and more likely to stay in place for many hours. However, the correct application technique is essential to provide comfort and adequate support for the affected part.\r\n\r\n', 'saved'),
(17, 5, 'Basic Steprs', 'Bandage the part in the position of greatest comfort to the patient. Support the part adequately before starting to apply the bandage.\r\n\r\nHold the tightly rolled bandage with the ‘head’ of the bandage on top and wrap the ‘tail’ around the body part without unrolling more than a few centimetres at a time.\r\n\r\nBegin with a locking turn to hold the start of the bandage securely under each following turn.\r\n\r\nWork from the middle of the body or limb in an outwards direction.\r\n\r\nWork from the narrowest part below the dressing and work upwards.\r\n\r\nEnsure that each turn covers two-thirds of the previous turn.\r\n\r\nCover totally any dressing and padding used.\r\n\r\nFinish with a straight turn at the end of the bandage.\r\n\r\nSecure the bandage with a safety pin or adhesive tape. Avoid the use of metal clips because they are less secure and can fall out during activity.\r\n', 'saved'),
(18, 5, 'Lower arm or leg', 'Start with a diagonal, locking turn below the dressing or padding to secure the dressing.\r\n\r\nContinue up the limb, covering two-thirds of each previous turn.\r\n\r\nFinish with a straight turn to secure the bandage and fasten it with a pin or adhesive tape.\r\n', 'saved'),
(19, 5, 'Elbow or knee', 'Start with a full turn over the point of the elbow or knee to secure the bandage.\r\n\r\nMake a second turn just below the first, exposing one-third of the initial turn over the point of the elbow or knee.\r\n\r\nMake a third turn just above the first, again exposing one-third of the initial turn over the point of the elbow or knee.\r\n\r\nContinue with one or two more turns alternately working from below to above the affected joint, until the dressing or padding is fully covered.\r\n\r\nAvoid any extra turns that will cause pressure on the inside surface of the joint.\r\n\r\nFinish with a full turn above the elbow or knee and secure the bandage with a safety pin or adhesive tape.\r\n', 'saved'),
(20, 5, 'Hand or Foot', 'Start with a diagonal, locking turn around the wrist or foot.\r\n\r\nCarry the bandage across the back of the hand or foot to the base of the little finger or little toe and then make a complete turn around the fingers or toes.\r\n\r\nMake another turn across the back of the hand or foot from the fingers/toes to the wrist/ankle.\r\n\r\nRepeat these turns working upwards with each turn until the dressing or padding is covered.\r\n\r\nFinish with a circular turn around the wrist ankle and secure the bandage with a safety pin or adhesive tape.\r\n', 'saved'),
(21, 6, 'Informa', '', 'saved'),
(22, 6, 'Information', 'use these as large dressings, as slings to support a wrist, arm or shoulder injury, or folded as a broad-fold bandage to stop a limb from moving.\r\n\r\nIf you can’t find a bandage, then you can always improvise by using a piece of clothing or material. For example, you could fold a headscarf diagonally in half to make a triangular bandage for a sling.\r\n', 'saved'),
(23, 6, 'Steps for arm sling', '\r\nStep 1 of 5: Support their bad arm\r\nAsk them to support their bad arm with their other hand. Slide the triangular bandage underneath it, with the longest edge (the base) parallel to their body at the tip of the little finger. The tip of the bandage (the point) should stick out past their elbow.\r\n\r\nStep 2 of 5: Pull the top bit\r\nGently pull the top bit under their bad arm and around the neck to the opposite shoulder.\r\nTake the bit that’s hanging down over their arm and up to meet the other end at their shoulder.\r\n\r\nStep 3 of 5: Make a reef knot\r\nTie the ends together in a reef knot at the hollow above their collar bone and tuck in the ends.\r\n\r\n\r\nStep 4 of 5: Adjust the sling\r\n• Adjust the sling so that it supports their arm all the way to the top of their little finger.\r\n• Twist the tip by their elbow until it fits snugly around their elbow and tuck it in or safety pin it.\r\n\r\nStep 5 of 5: Check their circulation\r\nCheck their circulation in their fingers and keep checking every ten minutes. If it’s too tight, loosen the bandage and sling and tie them again.\r\n', 'saved');

-- --------------------------------------------------------

--
-- Table structure for table `prepare`
--

CREATE TABLE `prepare` (
  `prepare_id` int(11) NOT NULL,
  `prepare_name` varchar(50) NOT NULL,
  `prepare_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prepare`
--

INSERT INTO `prepare` (`prepare_id`, `prepare_name`, `prepare_status`) VALUES
(1, 'Earthquake', 'saved'),
(2, 'Fire', 'saved'),
(3, 'Flood', 'saved'),
(4, 'Tsunami', 'saved'),
(5, 'Typhoon', 'saved'),
(6, 'Volcanic Eruption', 'saved');

-- --------------------------------------------------------

--
-- Table structure for table `prepare_info`
--

CREATE TABLE `prepare_info` (
  `prepare_type_id` int(11) NOT NULL,
  `prepare_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_info` text NOT NULL,
  `cat_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prepare_info`
--

INSERT INTO `prepare_info` (`prepare_type_id`, `prepare_id`, `cat_name`, `cat_info`, `cat_status`) VALUES
(1, 1, 'Information', 'An earthquake is a sudden, rapid shaking of the ground caused by the shifting of rocks beneath the earth’s surface. Earthquakes strike suddenly, without warning, and can occur at any time of the year – day or night.', 'saved'),
(2, 1, 'During (Indoors)', '1.	‘Drop, cover and hold on.’\r\n  - Drop down on your knees and make yourself small. Cover your head and neck, and protect your face. Hold on to this cover, or move with it, until the shaking stops. Do not attempt to run.\r\n  - Pulling in your hands, arms, feet and legs makes you a smaller target and places you in position, ready to crawl to a safer location if necessary.\r\n\r\n•	If you are near a sturdy table, get under it. Hold on to the table leg with one hand and protect your eyes with the other hand.\r\n\r\n•	If you are in bed, stay there and protect your head with a pillow.\r\n\r\n•	If you are near a sofa, get \r\ndown next to it and use a cushion to protect your head and neck.\r\n\r\n•	If you are sitting in a theatre or stadium seat, brace yourself while protecting your head and neck.\r\n\r\n•	If you are in a wheelchair, lock it. If you cannot get down low, brace yourself and protect your head with your arms.\r\n\r\n•	If you cannot drop to the floor, stay where you are, brace yourself in place.\r\n\r\n2.	Stay indoors until the shaking stops and you are sure it is safe to exit.\r\n\r\n3.	If you are on the ground floor of an adobe house with a heavy roof, exit quickly.\r\n\r\n  - Drop, cover and hold on, away from the building and any overheard hazards.\r\n\r\n  - Note: This is the only exception to the rule to stay indoors until the shaking has stopped, as lightweight roofs pose little danger.\r\n', 'saved'),
(3, 1, 'During (Outdoors)', '1.	Find a clear spot away from overhead hazards.\r\n\r\n  - Overhead hazards include buildings, trees, streetlights, power lines, overpasses, underpasses or above-ground gas lines.\r\n\r\n2.	‘Drop, cover and hold on’ and stay there until the shaking stops.\r\n\r\n3.	Stay outside and remain in open areas away from hazards.\r\n', 'saved'),
(4, 1, 'During (Other precautions)', '•	If you are in a multi-storey buildings, be careful both during and after the shaking stops.\r\n\r\n•	Avoid bridges, trees, power lines, poles, street signs, overpasses, underpasses, tunnels and other overhead or ground-level hazards.\r\n\r\n•	Once the shaking has stopped, proceed with caution. Avoid bridges, elevated roadways, ramps and tunnels that might have been damaged by the quake.\r\n', 'saved'),
(5, 1, 'After the shaking stops', '1.	Expect aftershocks.\r\n  - Aftershocks will be frequent during the first hours and days after an earthquake, and will gradually diminish in frequency and intensity. However, unusually large aftershocks may occur days or even weeks after the main earthquake. Aftershocks can trigger additional building damage or collapse.\r\n\r\n  - Follow the same guidance for an aftershock as you would for any earthquake.\r\n\r\n2.	Check for damage and stay out of damaged buildings.\r\n\r\n  - Use extreme caution. Move cautiously and check for any unstable objects and other hazards around you, such as fallen power lines or broken gas lines. Open cabinet and closet doors with care.\r\n\r\n  - Arrange for temporary shelter rather than staying in damaged buildings. If your building is damaged, it may need to be surveyed by an expert to determine whether you can go back inside.\r\n\r\n3.	Extinguish flames and put out small fires.\r\n\r\n  - Fire is a common hazard following earthquakes. Check for small fires and extinguish any that you find.\r\n\r\n4.	Look for and prevent fire hazards.\r\n\r\n•	Do not light any match, candle, lighter, flame or cigarette until you are sure there is no danger of a gas leak. \r\n\r\n•	Check for gas leaks and turn off any gas connections. If there is any doubt, shut off main connections.\r\n\r\n•	Do not use any electrical \r\nswitch, appliance or phone if there is danger of a gas leak. Evacuate immediately if you hear or smell gas and cannot immediately locate the source and shut it off.\r\n\r\n•	Remember that natural gas rises and can escape through windows and doors, but that liquefied propane, kerosene and carbon monoxide gases sink, and can be trapped on lower floors.\r\n\r\n•	Stay away from downed power lines. Do not touch wires that lying on the ground or hanging, or any objects touching them.\r\n\r\n•	Shut off power at the main electrical switch if you suspect any damage to household electrical wiring.\r\n\r\n•	Do not re-fuel or operate generators indoors. Take care when handling flammable fuel.\r\n', 'saved'),
(6, 1, 'After (Indoors)', '1.	Put on sturdy shoes before moving cautiously to evacuate.\r\n\r\n  - If it is dark, use a torch/flashlight. Move to your pre-determined meeting place either inside the building or outside, away from buildings. Notice any damage as you exit.\r\n\r\n2.	"Don''t run. Don''t talk. Don''t push. Assist others to evacuate the building.’ \r\n\r\n  - If you again feel strong shaking, exit the building following the standard building evacuation rules.\r\n\r\n3.	Take your evacuation "lifeline kit" with you when you evacuate.\r\n', 'saved'),
(7, 1, 'After (Coastal Area)', '1.	Move away from water to higher ground. \r\n\r\n  - Move quickly away from the coast or tributaries, to higher ground, avoiding buildings, bridges and downed power lines. Take your animals with you, if you can. \r\n\r\n  - If you cannot get inland, go up to higher floors of the strongest buildings available.\r\n2.	Do not return to the shore, as waves may continue to arrive for hours.\r\n\r\n3.	Stay informed and listen to official tsunami alerts. Prepare to evacuate.\r\n\r\n  - The earthquake could cause a tsunami very soon afterwards or some hours later lf there is a tsunami watch, stay informed by radio. If a tsunami warning is issued, be ready to evacuate.\r\n\r\n4.	If the shaking of a strong earthquake lasts 20 seconds or longer or, if you see receding waters at the shoreline, do not wait for an official tsunami warning to take action.\r\n', 'saved'),
(8, 1, 'After (Mountains)', '1.	Stay alert\r\n\r\n  - Be alert for earthquake-induced landslides and avalanches, which can dam streams or rivers or cause outbursts from glacial lakes. Even weeks after an earthquake, breakage of dams can put downstream areas in danger of flooding.\r\n\r\n2.	Watch and listen for:\r\n\r\n•	Falling rocks and other debris.\r\n\r\n•	Unusual sounds, such as cracking trees.\r\n\r\n•	Sudden increase or decrease of water in streams.\r\n\r\n•	Local dams, dykes, or levees that may be prone to damage or destruction.\r\n\r\n3.	Tune into your early warning system.\r\n\r\n4.	If there is a landslide or flood warning, leave if it is safe to do so.\r\n\r\n  - If a warming includes evacuation, evacuate immediately. Watch for flooding and be alert when driving near embankments or along swollen waterways.\r\n', 'saved'),
(9, 1, 'Assess and Prepare', '•	Practice earthquake drills in different locations.\r\n\r\n  - Practice earthquake drills, both physically and as thought exercises, in different locations. Considering the impact of strong shaking and identify the safest actions in each place (at home, work and school)\r\n\r\n•	Identify items within the building and around the perimeter that could fall, slide or collide during earthquake shaking. Move them or find the best ways to secure them.\r\n\r\n•	Move or secure objects that may fall and block exits.\r\n\r\n•	Do not be misled by disinformation, myths or rumours\r\n\r\n  - Base safety information on the available scientific evidence. Do not spread rumours or unfounded myths about causes or effects of hazards. Many popular anecdotes are not supported by scientific data.\r\n\r\nIdentifying safest places:\r\n    During an earthquake, the safest places in your building are located away from:\r\n\r\n•	Exterior walls and unsecured partition walls.\r\n\r\n•	Windows and glass.\r\n\r\n•	Large or heavy objects that fall, slide or collide.\r\n\r\n•	Objects such as heaters and open fireplaces that can cause a fire.\r\n    Outside your building, the safest places are away from:\r\n\r\n•	Overhead and underground hazards.\r\n\r\n•	Objects that may fall, slide or roll.\r\n', 'saved'),
(10, 2, 'information', 'The greatest cause of death are home fires. Most fire deaths are preventable with careful action. It is important to safeguard your home and be prepared to evacuate should there be a fire.', 'saved'),
(11, 2, 'Before', '•	Eliminate fire hazards through good housekeeping.\r\n\r\n•	Oil or gas lamps and candles should be placed away from curtains or flammable materials.\r\n\r\n  - Do not place them near windows, fans or where children or pets may fall over them.\r\n\r\n•	PUT OUT THE FLAME before going to bed.\r\n\r\n•	NEVER leave a lighted cigarette/cigar/pipe unattended.\r\n\r\n•	Do not keep FLAMMABLE materials like gasoline, kerosene, alcohol and paint inside the house.\r\n\r\n•	Regularly CHECK your electrical installations and have all threadbare wirings and electrical equipment changed or repaired by a licensed electrician.\r\n', 'saved'),
(12, 2, 'During', '•	If you see smoke or fire, immediately find the nearest fire exit nearest you.\r\n\r\n•	Before the fire gets out of control, if you have close access to fire extinguisher or a bucket full of sand, use it to put out the fire.\r\n\r\n•	Cover with a very wet blanket/cloth or throw a bucketful of sand to put out fire caused by faulty electrical wiring, gasoline or petrol, never douse with water.\r\n\r\n•	If you must exit through smoke, crawl to your nearest exit.\r\n\r\n•	If the cause or source of fire is electrical in nature, immediately turn off the main power switch.\r\n\r\n•	If a door is warm DO NOT open it. \r\n\r\n•	Call the fire department immediately as soon as you are in a safe place/area. \r\n\r\n- If smoke, heat, or flames block your exit routes, STAY IN THE ROOM with the door closed.\r\n\r\n- Signal for help using a bright coloured cloth. Call the fire department and tell them where you are.\r\n', 'saved'),
(13, 2, 'After', '•	Immediately go to the nearest clinic or hospital if you have burn injuries or have inhaled smoke.\r\n\r\n•	Even if the building or house did not totally burn down, never enter the premises until you are sure that the structure is still sound and it is safe from falling debris.\r\n', 'saved'),
(14, 2, 'Assess and Prepare', '      Know your area’s fire risks\r\n\r\n•	Learn about potential fire hazards\r\n\r\n  - Familiarize yourself with local emergency plans, communications and warning systems in your community.\r\n\r\n•	Know your building\r\n\r\n  - Know the structural type of your home and learn local regulations on land use, construction, remodelling, landscape maintenance and fire safety.\r\n\r\n      Prepare for fires\r\n\r\n•	Extinguish small fires\r\n  - Put a fire extinguisher (ABC), bucket of sand or fire blanket in place and learn how to use it.\r\n\r\n•	Use the correct fire extinguisher for the situation\r\n\r\n•	Know what to do if you see fire or smell smoke\r\n\r\n  - If you smell smoke or see a fire, alert others, get out quickly, assist others and call for help. If you cannot get out, close the doors and stay down low. Protect your hands and face with wet cloths. Place a wet towel at the bottom of the door to prevent smoke from entering the room.\r\n\r\n•	Practice regular emergency drills\r\n\r\n  - Conduct or participate in emergency evacuation drills (including at home) at least twice a year.\r\n', 'saved'),
(15, 3, 'Information', 'Floods can be very high-impact events. Natural causes include: high-intensity or prolonged rains, storms and storm surges, sudden melting of snow or ice, sudden release of water held or diverted by ice or debris jams and drought. Man-made causes include: the failure of water containment and drainage system, human-generated refuse in riverbeds and run-off channel, deforestation, unsustainable land management, urban cement and asphalt cover.', 'saved'),
(16, 3, 'Before', '      General preparedness\r\n\r\n•	Know your area’s flood risk.\r\n\r\n•	Make it a habit to monitor the weather forecast every day.\r\n\r\n•	If your area is usually affected by the high tide, make sure that you have a calendar that indicates the “high tide” and “low tide”.\r\n\r\n•	Be prepared to evacuate at a moment’s notice.\r\n\r\n  - Make sure that you have your lifeline kit ready.\r\n\r\n•	Critical appliances and equipment at home should be placed in an elevated area and if possible electric sockets are covered.\r\n\r\n•	Know the highest ground or elevation or building in your area and make sure that you have access to it.\r\n\r\n•	Clean canals and drainage that may possibly be the cause of flooding in your area.\r\n', 'saved'),
(17, 3, 'During', '•	When flood or flash flood warning is issued by authorities, take heed of the warning.\r\n  - Immediately evacuate and head for higher ground and stay there.\r\n\r\n  - Before leaving the house make sure that all windows and doors are closed and secured and place a notice in your door indicating where you are headed to.\r\n\r\n•	Stay away at all times from floodwaters. If you come upon flowing stream turn around and go another way.\r\n\r\n•	If you are stuck at home and can no longer move out, immediately turn off the main switch of the power supply.\r\n\r\n•	Keep children out of water – do not allow them to play and take a bath in the flooded waters.\r\n\r\n•	Be cautious and whenever possible avoid crossing bridges or roads that are flooded.\r\n\r\n•	Avoid exposing yourself to the elements.\r\n\r\n•	Be especially cautious at night when it is harder to recognize flood water.\r\n\r\n‘Turn around, don’t drown’\r\n    Fast-moving water only 15cm (6in) deep can sweep a person off their feet. To stay safe:\r\n\r\n1.	Stay out if floodwater\r\n\r\n  - Never try to walk, swim or drive through swift water. If you come across flowing water above your ankles, stop, turn around and go the other way.\r\n\r\n2.	Do not try to outrun floodwater\r\n\r\n  - Do not expect to outrun floodwater, as it may flow at 10-20km per hour (6-12mph)\r\n\r\n3.	Move to higher ground\r\n\r\n  - If you have not been able to evacuate out of the area, then evacuate vertically, moving to higher ground or the uppermost floors of buildings.\r\n\r\nIf you are in a vehicle, avoid unsafe conditions\r\n\r\nAs little as 20cm (6in) of water can cause you to lose control of your vehicle, and as little as 50cm (2ft) of rushing water can carry away most vehicles, including trucks.\r\n\r\n1.	Never attempt to cross any flowing water or water-covered roads or bridges.\r\n\r\n2.	Do not drive around barricades: they are there for your safety. Turn around and find another route.\r\n\r\n3.	Stay away from underpasses, as the depth to water there is not obvious. Underpasses can fill with 1.5 – 2m (5-6ft) of water.\r\n\r\n4.	Avoid traveling at night.\r\n\r\n5.	Move to higher ground, away from rivers, streams, creeks and storm drains.\r\n\r\n6.	Avoid standing water.\r\n  - Standing water may be electrically charged from underground or downed power lines.\r\n\r\n7.	If your brakes become wet, test them on a clear patch of road at low speed.\r\n\r\n  - If brakes are not stopping as they should, dry them by pressing gently on the brake pedal while maintaining speed.\r\n\r\n8.	If your vehicles stalls in water, abandon it and climb to higher ground.\r\n\r\n  - Restarting your engine may cause irreparable damage.\r\n\r\n9.	If your vehicle is being submerged, open the windows to escape.\r\n', 'saved'),
(18, 3, 'After', '      Take care around floodwaters\r\n\r\n•	Stay away from low-lying areas.\r\n\r\n•	Do not drink from, play or swim in water left by floods.\r\n\r\n•	Watch out for poisonous snakes especially around trees and bushes. Use a stick to poke through debris.\r\n\r\n•	Avoid touching electrical that is wet or any water that is in contact with electrical wires\r\n', 'saved'),
(19, 3, 'Sanitation precautions', '\r\n\r\n•	Service sanitation systems as soon as possible.\r\n\r\n•	Check drinking wells for contamination before using the water.\r\n\r\n•	Use protective equipment for all tasks (including tall boots, long pants, long sleeves, eye protection and gloves).\r\n\r\n•	Wash hands before eating, drinking or smoking\r\n\r\n•	Use disinfectant when cleaning.\r\n\r\n•	Disinfectant any cuts and protect them with a waterproof dressing.\r\n\r\n•	Keep children away during the clean-up.\r\n\r\n•	Bury human waste matter quickly\r\n', 'saved'),
(20, 3, 'Household recovery steps', '•	Pump out floodwater from basements gradually. \r\n\r\n  - Pump out flooded basements gradually (about one-third of the water per day to avoid the basement walls collapsing due to pressure from water saturated soil outside.\r\n\r\n•	Start clearing out and drying your home when rain stops and water recedes.\r\n\r\n  - Drying may take weeks, and complete restoration may take months. Sewage and toxic contamination is difficult to clean.\r\n\r\n•	Move everything that is wet outside (weather permitting)\r\n\r\n•	Drain away water under the house.\r\n\r\n•	Keep doors and windows open on dry days on wet days, leave windows ajar. \r\n\r\n•	Wash and then disinfect every part of your home that has been flooded.\r\n\r\n  - Start from the bottom and work up.\r\n\r\n•	Remove mildew.\r\n      Cleaning up carefully\r\n', 'saved'),
(21, 3, 'Cleaning up carefully', '    Paper and photographs:\r\n\r\n•	To protect paper, rinse and freeze it or place it in a sealed container with moth crystals or stacked individually between sheets of wax paper and sealed in a plastic bag. Freezing slows the damage, and the paper can then be defrosted and dried later.\r\n\r\n•	Place wet photos in cold clear water and separate them. Do not hold them under running water or wipe. Dislodge dirt by moving gently in a tub.\r\n\r\n•	Photocopy the items as soon as possible.\r\n\r\n•	 As soon as the pages are thawed or unsealed, dry them with a blow dryer blotting paper.\r\n\r\n•	Don''t force pages apart dry them until they come apart easily\r\n\r\n•	Seek professional help for rare and heritage books, photographs and stamp collections.\r\n\r\n\r\n     Computers and disks:\r\n\r\n•	Rinse disks, place them in a plastic bag and refrigerate them until you can get professional help.\r\n\r\n\r\n     Clothing and linens:\r\n\r\n•	Shake out mud, hose off dirt and wash items in a washing machine with hot water and disinfectant.\r\n\r\n\r\n     Furniture and appliances:\r\n\r\n•	If appliances are wet, turn off the electricity at main fuse box or circuit breaker. Unplug appliances and let them dry out. Ensure that the electrical system and appliances are checked by a professional before turning power on and using them.\r\n\r\n•	Clean appliances with clean drinkable water.\r\n\r\n•	Check that sewer line is working before using toilet/ latrine.\r\n\r\n•	Discard all food that has been in contact with the water.\r\n\r\n•	Discard plastic or porous kitchen items.\r\n\r\n•	Clean and disinfect refrigerators and other appliances with drinkable water and disinfectant. (However, refrigerators and freezers may not be salvageable.)\r\n\r\n•	Use hot water to wash pots, pans, dishes and utensils. Disinfect and air dry.\r\n\r\n•	Remove the backs of furniture to allow air to circulate.\r\n\r\n•	Do not force open wooden drawers and doors: let them dry first.\r\n', 'saved'),
(22, 3, 'Assess and Prepare', 'Know your area’s flood risks:\r\n\r\n•	Understand the risks.\r\n\r\n  - Know the local terrain, water sources, catchment area and weather patterns to better understand the risks.\r\n\r\n•	If flood plains have been mapped.\r\n\r\n  - Find out whether you are located on a flood plain and learn about the elevation of your property and buildings relative to predictable flood levels.\r\n\r\n•	Consider what is nearby.\r\n\r\n  - Consider risk factors such a proximity to rivers, dykes and coastlines, blockage of channels gullies, and urban infrastructure.\r\n\r\n•	Know the history of your area\r\n\r\n  - Investigate historical experience and the potential impact of climate change on your area.\r\n\r\n•	Speak with local authorities and neighbour.\r\n\r\n  - Find out whether your area is prone to flooding and how flood risk is being addressed.\r\n\r\n•	Maintain communication with neighbours located above and below you.\r\n\r\n•	Identify industrial activity.\r\n\r\n  - Be aware of anything that may create hazardous materials release and contamination risks during flooding.\r\n\r\n\r\n  Preparing for floods\r\n\r\n•	Store valuables and dangerous materials above likely water levels.\r\n\r\n  - Keep important papers, equipment, feedstock, and other valuables above potential flood levels, using water proof containers where possible. Also keep hazardous chemicals above anticipated flood levels.\r\n\r\n•	Consider Relocating or mitigating and adapting.\r\n\r\n  - If you live in a place prone to frequent or serious flooding, consider relocating, building elevated storage buildings or using floating shelters.\r\n\r\n•	Plan to protect your animals.\r\n\r\n  - Consider precautionary evacuation of your livestock and pets.\r\n\r\n•	Know your areas expected flood evacuation routes.\r\n\r\n  - Identify your safe evacuation routes, using any forms of transportation available to you, as well as routes that can be used on foot.\r\n', 'saved'),
(23, 4, 'Information', 'Tsunamis are a series large ocean waves generated by major earthquakes beneath the ocean floor or major landslides into the ocean.', 'saved'),
(24, 4, 'Before', '       Natural warning signs:\r\n\r\n1.	If an earthquake is long or strong go immediately to higher ground.\r\n\r\n2.	Strong earthquake shaking for 30 seconds or more \r\n\r\n  - There is immediate, high tsunami risk from near-field earthquake. There may be no time for official warming. Move to higher ground immediately.\r\n\r\n3.	Long moderate or weak earthquake shaking that lasts for 40 seconds or more\r\n\r\n  - There is high local tsunami risk from mid- field earthquake, official warning time may be very short notice, so move to higher ground immediately.\r\n\r\n4.	Rapid rise or fall in coastal waters \r\n\r\n5.	Coastal water making unusual noise \r\n\r\n  - The noise may sound like an approaching train, plane or whistling\r\n\r\n6.	Protect livestock and pets\r\n\r\n  - Consider precautionary evacuation of your animals to higher ground.\r\n', 'saved'),
(25, 4, 'During', '1.	Follow instructions for tsunami advisory or alert.\r\n\r\n  - Share warnings in your community and follow instructions for evacuation. If time permits secure unanchored objects outside.\r\n\r\n•	In case of International Tsunami warning, listen to radio, TV and local warnings and prepare to evacuate.\r\n\r\n•	In case of Regional Tsunami warning, help vulnerable members of household to evacuate early.\r\n\r\n2.	If an earthquake is very ‘long or strong’, evacuate immediately.\r\n\r\n  - If strong shaking makes it difficult to stand up, and lasts for 20 seconds, or if moderate or weak shaking lasts for 40 seconds or more, evacuate immediately. Respond to natural warning signs and do not wait.\r\n\r\n3.	Evacuate to higher ground 30m above the sea or 3km inland\r\n\r\n  - Follow posted evacuation route, where present. Do not stop to collect animals.\r\n\r\n•	If you cannot evacuate to higher ground, evacuate vertically to 3rd floor or above, onto roof, up a tree, or grab a floating object.\r\n\r\n4.	When you can see the wave, you are too close to outrun it. Tsunamis can travel quickly up rivers, streams and estuaries.\r\n\r\n\r\n\r\n    If you are at sea, stay there\r\n\r\n•	Boats are generally safer in water deeper than 20 meters.\r\n\r\n•	Ships are safest on high seas in water deeper than 100m.\r\n\r\n•	Use loose mooring and loose anchorage to reduce risk of boats drifting onto land.\r\n\r\n•	Do not return to land until ‘all clear’ has been issued. Listen to mariner and port reports before returning to port.\r\n', 'saved'),
(26, 4, 'After', '       Immediately After\r\n\r\n•	Expect aftershocks which could generate another tsunami.\r\n\r\n•	Know when it’s safe to return home.\r\n\r\n  - If there had been no official warning or “All Clear” message, you may return after 2 hours. If there has been no impact.\r\n\r\n    After an official “All Clear” message is issued:\r\n\r\n1.	Follow family reunification plans\r\n\r\n2.	Return home only if it is safe.\r\n\r\n•	Stay out of buildings if there is water around it they may sink or collapse.\r\n\r\n•	Avoid tsunami impacted areas and debris in the water.\r\n\r\n3.	Avoid use of contaminated water.\r\n\r\n4.	Be aware of and minimize secondary hazards.\r\n\r\n  - Beware of secondary hazards such as contaminated water, damaged roads, landslides, mudflows, and other hazards.\r\n\r\n•	Watch out for wild animals, especially poisonous snakes in water. Use a stick to poke through debris.\r\n\r\n\r\n\r\n    Returning home\r\n\r\n1.	Check your water supply, because it may have been contaminated.\r\n\r\n2.	Minimize risks of fire, electrical and hazardous materials release.\r\n\r\n•	Turn of gas in case of leaks.\r\n\r\n•	Turn off electricity in case of inundation or damage.\r\n\r\n', ''),
(27, 4, 'Assess and Prepare', '  Know your area’s tsunami risks\r\n•	Learn about local risks of tsunami, storm surge, (and king tides).\r\n•	Find out if your home, workplace, school or visited locations are at risk from tsunami and coastal inundation. \r\n•	Learn about the history of tsunami, coastal inundation and king tides, and the impacts of climate change on these risks in your area. \r\n•	Practice tsunami evacuation drills \r\n  - Practice community-wide tsunami evacuation drills from work, school and home, following evacuation routes to safe haven, and waiting for “all clear” signal.\r\n•	Make tsunami evacuation plans\r\n•	Identify higher ground (f possible 30m/ 100 above sea level or 3km/2m inland) and the routes to get there.\r\n•	Know the tsunami evacuation zone and evacuation routes for your area. Display maps wherever helpful.\r\n•	Post and observe evacuation route signs\r\n•	Consider and plan for evacuation needs of all household members, including children and the elderly\r\n•	Make plans for safe family reunification after "all clear" is given\r\n\r\n\r\n   Learn the official and local tsunami advisory and alert\r\n\r\n International Tsunami (Stage 1) \r\n\r\n  - This alert means there is more than 10 hours warning for possible tsunami heading towards the country. Be prepared to evacuate\r\n\r\n\r\nRegional Tsunami (Stage 2)\r\n\r\n  - This alert means a big earthquake in the Pacific Ocean has caused a tsunami approaching Do not wait Evacuate to safe place and wait for \r\nAll Clear.\r\n\r\n\r\nLocal Tsunami (Stage 3)\r\n\r\n  - This alert means a strong local earthquake lasting a long time has struck or an international or regional tsunami is about to strike the country. Evacuate immediately. Help vulnerable people and those with special needs. \r\n\r\n\r\nAll Clear\r\n\r\n  - This alert means danger has passed you may return home.\r\n', ''),
(28, 5, 'Information', ' The term "Typhoon is the regional name in the Northwest Pacific for a severe (or mature) tropical cyclone. Typhoons are associated with a spiral inflow of mass at the bottom level and spiral outflow at the top level usually over oceans that produce strong winds, heavy rain and thunderstorms. They are classified according to their strength which is determined by the speed of the maximum sustained winds near the centre (30 KPH to > 185KPH)', ''),
(29, 5, 'Before', 'Prepare for a typhoon\r\n\r\n•	Store food and clean potable water. \r\n\r\n•	Make sure that you have emergency battery operated lights and a transistor radio ready and handy. \r\n\r\n•	Monitor TV and radio stations for weather updates.\r\n\r\n•	Check your house for structures that needs retrofitting or repair and strengthen it when necessary to withstand the strong winds.\r\n\r\n•	Herd domesticated animals to safe grounds. If you have agricultural crops that can already be harvested, harvest them before the typhoon strike. \r\n\r\n•	If you live in an area that is frequently flooded, near mountains or near the sea, you must have your lifeline kit ready for grab should an evacuation be required.\r\n\r\n•	Small fishing boats or vessels should be well-anchored in/to safer areas.\r\n', ''),
(30, 5, 'During', '•	Monitor the news and weather forecast on radio and TV to get the latest information. \r\n\r\n•	Stay indoors all the time unless you are told to evacuate to the nearest evacuation centre.\r\n\r\n•	Boil tap water.\r\n\r\n•	Ensure that candles or lanterns are kept away from flammable objects or materials when using them.\r\n\r\n•	 Never walk in or expose yourself unnecessarily to flood waters.\r\n\r\n•	If you need to evacuate, be calm and move in an orderly and safe manner.\r\n  - Close all windows and doors before leaving your house.\r\n\r\n  - If you have time, make sure that appliances or equipment are moved to higher parts of the house. \r\n\r\n  - Avoid roads or routes that are near the river. \r\n\r\n  - Never cross rivers or streams at the height of the typhoon. \r\n\r\n‘Eye of the storm'' - Be aware that the eye of the storm is deceptively calm and quiet. The storm is not over. If things seem calm, it is probably the lull at the centre of the storm, so maintain your secure position and do not go outside as the winds will get stronger again.\r\n', ''),
(31, 5, 'After', '•	Return home only when local authorities have declared that your area is safe\r\n\r\n•	Stay away from power lines and electrical wires. \r\n\r\n  - Immediately report downed power lines to the power company. \r\n\r\n  - If power lines are down outside your home, do not step on puddles or stand on water.\r\n\r\n•	Before entering your homes, look for loose power lines and other damage.\r\n\r\n•	 Look out for wild animals especially snakes. \r\n\r\n•	Throw away or empty containers that have accumulated water as this is a breeding ground for mosquitoes.\r\n', ''),
(32, 5, 'Assess and Prepare', '        Know your area’s risks for \r\ntyphoons\r\n•	Learn more about the risks \r\n\r\n  - Learn about the risks and potential impacts of severe tropical storms that can impact your location (especially winds, storm surges and flooding). \r\n\r\n•	Make an evacuation plan: know your evacuation centre, evacuation route and transportation method. \r\n\r\n•	If evacuation is necessary, work with your network to determine various transportation options. \r\n\r\n•	Make sure everyone in your household knows where to go if they have to leave the area. \r\n\r\n•	Practice your evacuation routes\r\n\r\n  - Make sure household members know where to evacuate to, what route to take, and where to meet each other, if they have to leave.\r\n\r\n•	Store valuables up high \r\n\r\n  - Strategically place drinkable water, food, cooking equipment, and blankets, this can save lives. \r\n\r\n•	Keep supplies to protect your home.\r\n\r\n  - Keep supplies on hand to protect your home for example, plywood, plastic sheeting, nails, a hammer and saw a crow bar, sand, sandbags and washboards, \r\n\r\n•	Keep vehicle fuel tanks filled \r\n\r\n  - During the storm season, refill vehicle fuel tanks before they are half empty, in case you need to evacuate.\r\n\r\n•	Stay informed\r\n - Monitor the weather closely. \r\n\r\n•	If you are advised to vacate the area, or if you think you are in danger evacuate immediately away from the storm''s direction of movement.\r\n\r\n\r\n       Work with your community to:\r\n\r\n•	Identify evacuation centres\r\n  - Work with your community to identify evacuation centre locations for anyone who will need them. Make sure each household member knows the location and route to the agreed shelter.\r\n', ''),
(33, 6, 'Information', 'Volcanic eruptions happen when lava and gas are discharged from a volcanic vent. The most common consequences of this are population movements as large numbers of people are often forced to flee the moving lava flow. Volcanic eruptions often cause temporary food shortages and volcanic ash landslides called Lahar. \r\n', ''),
(34, 6, 'Before', 'Be prepared\r\n\r\n•	Learn about your community warning systems and emergency plans.\r\n\r\n•	Be prepared for the hazards that can accompany volcanoes:\r\n\r\n  - Mudflows and flash floods\r\n\r\n  - Landslides and rock falls \r\n\r\n  - Earthquakes\r\n\r\n  - Ash fall and acid rain \r\n\r\n  - Tsunamis\r\n•	Make evacuation plans.\r\n\r\n  - If you live in a known volcanic hazard area plan a route out and have a backup route in mind.\r\n\r\n  - Stay away from low areas where landslides may occur.\r\n\r\n  - Do not cut trees surrounding the volcano for these will serve as protection from the harmful effects of lahar.\r\n\r\n  - Build temporary but strong shelter or building.\r\n\r\n  - Always stand by for updates on volcanic eruption from the Philippine Institute of volcanology and Seismology (PHIVOLCS)\r\n\r\n  - Make sure a vehicle can be used to evacuate. \r\n\r\n•	Develop an emergency communication plan.\r\n\r\n  - In case family members are separated from one another during a volcanic eruption (a real possibility during the day when adults are at work and children are at school), have a plan for getting back together.\r\n\r\n  - Ask an out-of-state relative or friend to serve the “family contact,” because after a disaster, it’s often easier to call long distance. Make sure everyone knows the name, address, and phone number of the contact person.\r\nDur\r\n', ''),
(36, 6, 'After', '     After a Volcanic Eruption\r\n\r\n•	Go back to your homes only if advised by the Barangay captain, PHIVOLCS, or your local disaster coordinating council and Red Cross 143.\r\n\r\n•	If possible, stay away from volcanic ash fall areas.\r\n\r\n•	When outside:\r\n\r\n  - Cover your mouth and nose with a mask or wet cloth. Volcanic ash can irritate your respiratory system. \r\n\r\n  - Wear goggles to protect your eyes.\r\n\r\n  -  Keep skin covered to avoid irritation from contact with ash\r\n\r\n  - Clear roofs ash fall. Ash fall is very heavy and can cause buildings to collapse. Exercise great caution when working on a roof\r\n\r\n  - Avoid driving in heavy ash fall, Driving will stir up more ash that can clog engines and stall vehicles.\r\n\r\n  - If you have a respiratory ailment avoid contact with any amount of ash. Stay indoors until local health officials advise it is safe to go outside.\r\n\r\n  - Remember to help your neighbours who may require special assistance – infants, elderly people, and people with disabilities.\r\n\r\n•	The above mentioned guidelines cover the time before a volcanic eruption until it ceases. These do not include preparation for long-term, harmful effects of volcanic deposits and lahar. Low areas and those near the rivers and streams may be prone to lahars.\r\n', ''),
(37, 6, 'During', '•	Follow the evacuation order issued by authorities.\r\n\r\n•	Avoid areas downwind and river valleys downstream of the volcano.\r\n\r\n•	Listen to a battery-operated radio or television for the latest emergency information.\r\n\r\n•	If caught indoors:\r\n  - Close all windows, doors, and dampers.\r\n\r\n  - Put all machinery inside a garage or barn.\r\n\r\n  - Bring animals and livestock into closed shelters.\r\n\r\n•	If trapped outdoors:\r\n\r\n  - Seek shelter indoors.\r\n\r\n  - If caught in a rock fall, roll into a ball and protect your head\r\n\r\n  - If caught near a stream, be aware of mudflows. Move up to higher areas, especially if you hear the roar of a mudflow.\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `varchar_username` varchar(11) NOT NULL,
  `varchar_password` varchar(20) NOT NULL,
  `char_usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `varchar_username`, `varchar_password`, `char_usertype`) VALUES
(101, 'admin', 'admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emergency`
--
ALTER TABLE `emergency`
  ADD PRIMARY KEY (`emergency_id`);

--
-- Indexes for table `emergency_info`
--
ALTER TABLE `emergency_info`
  ADD PRIMARY KEY (`emergency_type_id`),
  ADD KEY `emergency_id` (`emergency_id`);

--
-- Indexes for table `hospital_location`
--
ALTER TABLE `hospital_location`
  ADD PRIMARY KEY (`hospital_location_id`);

--
-- Indexes for table `hotlines`
--
ALTER TABLE `hotlines`
  ADD PRIMARY KEY (`line_id`);

--
-- Indexes for table `learn`
--
ALTER TABLE `learn`
  ADD PRIMARY KEY (`learn_id`);

--
-- Indexes for table `learn_info`
--
ALTER TABLE `learn_info`
  ADD PRIMARY KEY (`learn_type_id`),
  ADD KEY `learn_id` (`learn_id`);

--
-- Indexes for table `prepare`
--
ALTER TABLE `prepare`
  ADD PRIMARY KEY (`prepare_id`);

--
-- Indexes for table `prepare_info`
--
ALTER TABLE `prepare_info`
  ADD PRIMARY KEY (`prepare_type_id`),
  ADD KEY `prepare_id` (`prepare_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emergency`
--
ALTER TABLE `emergency`
  MODIFY `emergency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `emergency_info`
--
ALTER TABLE `emergency_info`
  MODIFY `emergency_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `hospital_location`
--
ALTER TABLE `hospital_location`
  MODIFY `hospital_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `hotlines`
--
ALTER TABLE `hotlines`
  MODIFY `line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `learn`
--
ALTER TABLE `learn`
  MODIFY `learn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `learn_info`
--
ALTER TABLE `learn_info`
  MODIFY `learn_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `prepare`
--
ALTER TABLE `prepare`
  MODIFY `prepare_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `prepare_info`
--
ALTER TABLE `prepare_info`
  MODIFY `prepare_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `emergency_info`
--
ALTER TABLE `emergency_info`
  ADD CONSTRAINT `emergency_info_ibfk_1` FOREIGN KEY (`emergency_id`) REFERENCES `emergency` (`emergency_id`);

--
-- Constraints for table `learn_info`
--
ALTER TABLE `learn_info`
  ADD CONSTRAINT `learn_info_ibfk_1` FOREIGN KEY (`learn_id`) REFERENCES `learn` (`learn_id`);

--
-- Constraints for table `prepare_info`
--
ALTER TABLE `prepare_info`
  ADD CONSTRAINT `prepare_info_ibfk_1` FOREIGN KEY (`prepare_id`) REFERENCES `prepare` (`prepare_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
