-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-06-2011 a las 17:13:56
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: 'bibliocnic'
--

--
-- Volcar la base de datos para la tabla 'articulo_version'
--


--
-- Volcar la base de datos para la tabla 'autor'
--


--
-- Volcar la base de datos para la tabla 'biblioteca_personal_version'
--


--
-- Volcar la base de datos para la tabla 'busqueda'
--

INSERT INTO busqueda (id, user_id, titulo, mensaje, is_active, tematica, fecha_antes, fecha_despues, created_at, updated_at) VALUES
(2, 1, 'prueba1', 'hello esta e s mi primera prueba', 1, 'FISICA', '2007-01-03 01:04:00', '2010-03-04 03:02:00', '2011-05-06 22:43:00', '2011-05-06 22:44:00'),
(3, 1, 'prueba2', 'esta vez espero llegue bien', 1, 'FISICA', '2006-01-19 17:17:00', '2008-10-15 16:14:00', '2011-06-08 15:21:00', '2011-06-08 15:21:00'),
(4, NULL, 'prueba3', 'con unset', 1, 'FISICA', NULL, NULL, '2012-07-15 15:14:00', '2012-10-15 13:14:00'),
(5, NULL, 'veremos si no pone el updated at', 'adfdfadfadfadfaf', 0, 'FISICA', NULL, NULL, '2011-06-08 16:56:34', '2011-06-08 16:56:34'),
(6, 1, 'Necesito literatura rusa', 'Donde puedo encontrarla', 1, 'ARTE Y HUMANIDADES', '2010-01-06 00:00:00', '2011-08-08 00:00:00', '2011-06-09 08:41:45', '2011-06-09 08:41:45'),
(7, 1, 'primera prueba depues del tsunami', 'espero que esta vez no me de problemas', 1, 'AGRICULTURA', '1917-11-16 00:00:00', '1920-08-17 00:00:00', '2011-06-17 13:48:04', '2011-06-17 13:48:04'),
(8, 1, 'asfasdfasdfadsfadfadfadfa', 'fasdfasdfadfasdfasdfadfadsf', 1, 'AGRICULTURA', '1917-10-18 00:00:00', '1919-09-17 00:00:00', '2011-06-17 13:49:00', '2011-06-17 13:49:00'),
(9, 1, 'rggsdfgsdfgsdfgs', 'dfgsdfgsdfgsdfgsdfgsdfgsdfgs', 1, 'FARMACOLOGÍA TOXICOLOGÍA Y FARMACIA', '1918-11-22 00:00:00', '1919-09-18 00:00:00', '2011-06-17 13:50:05', '2011-06-17 13:50:05'),
(10, 1, 'adsfadfadfadsfadsfasdfasd', 'fadsfsdfasdfsdfasdfasdfadsfadsfasdfa', 1, 'ECONOMÍA', NULL, NULL, '2011-06-17 14:13:18', '2011-06-17 14:13:18'),
(11, 1, 'gsdfgsdfgsfdgsdfg', 'sdfgsdfgsdfgsdfgsdfgsdfgsfgsfg', 1, 'ESTOMATOLOGÍA', NULL, NULL, '2011-06-17 17:03:37', '2011-06-17 17:03:37');

--
-- Volcar la base de datos para la tabla 'descarga'
--


--
-- Volcar la base de datos para la tabla 'diseminacion'
--


--
-- Volcar la base de datos para la tabla 'dm_area'
--

INSERT INTO dm_area (id, dm_layout_id, dm_page_view_id, type) VALUES
(1, NULL, 2, '1'),
(2, NULL, 3, '1'),
(3, 1, NULL, 'top'),
(4, 1, NULL, 'left'),
(5, NULL, 1, 'content'),
(6, 1, NULL, 'right'),
(7, 1, NULL, 'bottom'),
(8, NULL, 4, 'content'),
(9, NULL, 5, 'content'),
(10, NULL, 2, 'content'),
(11, NULL, 3, 'content');

--
-- Volcar la base de datos para la tabla 'dm_auto_seo'
--

INSERT INTO dm_auto_seo (id, module, action, created_at, updated_at) VALUES
(1, 'busqueda', 'show', '2011-06-05 19:50:56', '2011-06-05 19:50:56');

--
-- Volcar la base de datos para la tabla 'dm_auto_seo_translation'
--

INSERT INTO dm_auto_seo_translation (id, slug, name, title, h1, description, keywords, strip_words, lang) VALUES
(1, '%busqueda%', '%busqueda%', '%busqueda%', NULL, '%busqueda%', NULL, NULL, 'es');

--
-- Volcar la base de datos para la tabla 'dm_catalogue'
--

INSERT INTO dm_catalogue (id, name, source_lang, target_lang) VALUES
(1, 'messages.es', 'en', 'es'),
(2, 'dm.es', 'en', 'es');

--
-- Volcar la base de datos para la tabla 'dm_error'
--

INSERT INTO dm_error (id, php_class, name, description, module, action, uri, env, created_at) VALUES
(1, 'sfError404Exception', 'Missing widget list', 'Missing widget list\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmWidget\\lib\\BasedmWidgetActions.class.php(249): sfAction->forward404Unless(NULL, ''Missing widget ...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmWidgetActions->executeSort(Object(dmWebRequest))\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmWidgetActions))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmWidgetActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmWidget'', ''sort'')\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#17 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#18 {main}', 'dmWidget', 'sort', 'http://bibliocnic.localhost/dev.php/+/dmWidget/sort?dm_zone=10&&_=1307305480144&dm_cpi=5&dm_xhr=1', 'dev', '2011-06-05 22:24:43'),
(2, 'sfError404Exception', 'No widget_id parameter', 'No widget_id parameter\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmWidget\\lib\\BasedmWidgetActions.class.php(340): sfAction->forward404Unless('''', ''No widget_id pa...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmWidget\\lib\\BasedmWidgetActions.class.php(98): BasedmWidgetActions->requireWidget()\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmWidgetActions->executeEdit(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmWidgetActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmWidgetActions))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmWidget'', ''edit'')\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#18 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#19 {main}', 'dmWidget', 'edit', 'http://bibliocnic.localhost/dev.php/+/dmWidget/edit?_=1307305480212&dm_cpi=5&dm_xhr=1&widget_id=', 'dev', '2011-06-05 22:24:46'),
(3, 'sfError404Exception', 'No widget_id parameter', 'No widget_id parameter\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmWidget\\lib\\BasedmWidgetActions.class.php(340): sfAction->forward404Unless('''', ''No widget_id pa...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmWidget\\lib\\BasedmWidgetActions.class.php(215): BasedmWidgetActions->requireWidget()\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmWidgetActions->executeGetFull(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmWidgetActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmWidgetActions))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmWidget'', ''getFull'')\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#16 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#17 {main}', 'dmWidget', 'getFull', 'http://bibliocnic.localhost/dev.php/+/dmWidget/getFull?_=1307305561685&dm_cpi=5&dm_xhr=1&widget_id=', 'dev', '2011-06-05 22:26:03'),
(4, 'Doctrine_Connection_Mysql_Exception', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table ''bibliocnic.article'' doesn''t exist', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table ''bibliocnic.article'' doesn''t exist\n#0 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Connection\\Statement.php(269): Doctrine_Connection->rethrowException(Object(PDOException), Object(Doctrine_Connection_Statement))\n#1 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Connection.php(1006): Doctrine_Connection_Statement->execute(Array)\n#2 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query\\Abstract.php(976): Doctrine_Connection->execute(''SELECT a.id AS ...'', Array)\n#3 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query\\Abstract.php(1026): Doctrine_Query_Abstract->_execute(Array)\n#4 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query.php(281): Doctrine_Query_Abstract->execute(Array, NULL)\n#5 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\model\\doctrine\\PluginDmPage.class.php(79): Doctrine_Query->fetchOne()\n#6 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\model\\doctrine\\PluginDmPage.class.php(206): PluginDmPage->getRecord()\n#7 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Node\\NestedSet.php(1000): PluginDmPage->save()\n#8 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Node\\NestedSet.php(569): Doctrine_Node_NestedSet->insertNode(''20'', 21, 1)\n#9 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\page\\dmPageSynchronizer.php(206): Doctrine_Node_NestedSet->insertAsLastChildOf(Object(DmPage))\n#10 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\page\\dmPageSynchronizer.php(27): dmPageSynchronizer->updateListPages()\n#11 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\page\\dmPageTreeWatcher.php(207): dmPageSynchronizer->execute(Array)\n#12 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\page\\dmPageTreeWatcher.php(116): dmPageTreeWatcher->synchronizePages(Array)\n#13 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\page\\dmPageTreeWatcher.php(99): dmPageTreeWatcher->update()\n#14 [internal function]: dmPageTreeWatcher->listenToControllerRedirectionEvent(Object(sfEvent))\n#15 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\event_dispatcher\\sfEventDispatcher.php(79): call_user_func(Array, Object(sfEvent))\n#16 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\controller\\dmFrontWebController.php(10): sfEventDispatcher->notify(Object(sfEvent))\n#17 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\action\\sfAction.class.php(202): dmFrontWebController->redirect(''http://diem-ips...'', 0, 302)\n#18 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\modules\\dmUserAdmin\\lib\\BasedmUserAdminActions.class.php(56): sfAction->redirect(''http://diem-ips...'')\n#19 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmUserAdminActions->executeSignin(Object(dmWebRequest))\n#20 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#21 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmUserAdminActions))\n#22 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmUserAdminActions))\n#23 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#24 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#25 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#26 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#27 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#28 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#29 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#30 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#31 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmUserAdmin'', ''signin'')\n#32 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#33 C:\\development\\dmprojects\\diem-ipsum\\web\\admin_dev.php(7): dmContext->dispatch()\n#34 {main}', 'dmUserAdmin', 'signin', 'http://diem-ipsum.localhost/admin_dev.php/security/signin', 'dev', '2011-06-09 18:54:41'),
(5, 'Exception', 'Could not resolve host: diem-project.org; No data record of requested type', 'Could not resolve host: diem-project.org; No data record of requested type\n#0 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(217): sfCurlAdapter->call(Object(dmWebBrowser), ''http://diem-pro...'', ''GET'', Array, Array)\n#1 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(116): sfWebBrowser->call(''http://diem-pro...'', ''GET'', Array, Array)\n#2 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(50): sfWebBrowser->get(''http://diem-pro...'')\n#3 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(32): dmDiemVersionCheck->getLatestServerVersionForBranch(''5.1'')\n#4 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(93): dmDiemVersionCheck->isUpToDate()\n#5 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeVersionCheck(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#8 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#9 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''versionCheck'')\n#20 C:\\development\\dmprojects\\diem-ipsum\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#21 C:\\development\\dmprojects\\diem-ipsum\\web\\admin_dev.php(7): dmContext->dispatch()\n#22 {main}', 'dmAdmin', 'versionCheck', 'http://diem-ipsum.localhost/admin_dev.php/+/dmAdmin/versionCheck?_=1307638677634&dm_cpi=0&dm_xhr=1', 'dev', '2011-06-09 18:58:09'),
(6, 'sfError404Exception', 'busqueda-especializada is not a module type', 'busqueda-especializada is not a module type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(25): sfAction->forward404Unless(NULL, ''busqueda-especi...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeModuleType(Object(dmWebRequest))\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''moduleType'')\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#17 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#18 {main}', 'dmAdmin', 'moduleType', 'http://bibliocnic.localhost/admin_dev.php/busqueda-especializada', 'dev', '2011-06-09 19:03:39'),
(7, 'sfError404Exception', 'busqueda-especializada is not a module type', 'busqueda-especializada is not a module type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(25): sfAction->forward404Unless(NULL, ''busqueda-especi...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeModuleType(Object(dmWebRequest))\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''moduleType'')\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#17 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#18 {main}', 'dmAdmin', 'moduleType', 'http://bibliocnic.localhost/admin_dev.php/busqueda-especializada', 'dev', '2011-06-09 19:04:50'),
(8, 'sfError404Exception', 'inicio.php is not a module type', 'inicio.php is not a module type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(25): sfAction->forward404Unless(NULL, ''inicio.php is n...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeModuleType(Object(dmWebRequest))\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''moduleType'')\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#17 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#18 {main}', 'dmAdmin', 'moduleType', 'http://bibliocnic.localhost/admin_dev.php/inicio.php', 'dev', '2011-06-09 19:13:51'),
(9, 'Exception', 'Could not resolve host: diem-project.org; No data record of requested type', 'Could not resolve host: diem-project.org; No data record of requested type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(217): sfCurlAdapter->call(Object(dmWebBrowser), ''http://diem-pro...'', ''GET'', Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(116): sfWebBrowser->call(''http://diem-pro...'', ''GET'', Array, Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(50): sfWebBrowser->get(''http://diem-pro...'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(32): dmDiemVersionCheck->getLatestServerVersionForBranch(''5.1'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(93): dmDiemVersionCheck->isUpToDate()\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeVersionCheck(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''versionCheck'')\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#21 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#22 {main}', 'dmAdmin', 'versionCheck', 'http://bibliocnic.localhost/admin_dev.php/+/dmAdmin/versionCheck?_=1307639670248&dm_cpi=0&dm_xhr=1', 'dev', '2011-06-09 19:14:39'),
(10, 'Doctrine_Query_Exception', 'Unknown column busquedas', 'Unknown column busquedas\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query\\Where.php(93): Doctrine_Query->parseClause(''busqueda.busque...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query\\Where.php(81): Doctrine_Query_Where->_buildSql(''busqueda.busque...'', ''='', ''?'')\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query\\Condition.php(92): Doctrine_Query_Where->load(''busqueda.busque...'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query\\Abstract.php(2077): Doctrine_Query_Condition->parse(''busqueda.busque...'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query.php(1167): Doctrine_Query_Abstract->_processDqlQueryPart(''where'', Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query.php(1133): Doctrine_Query->buildSqlQuery(false)\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query.php(2023): Doctrine_Query->getSqlQuery(Array, false)\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\vendor\\doctrine\\Doctrine\\Query.php(2113): Doctrine_Query->getCountSqlQuery()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\validator\\sfValidatorDoctrineChoice.class.php(100): Doctrine_Query->count()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorBase.class.php(327): sfValidatorDoctrineChoice->doClean(''FISICA'')\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(157): sfValidatorBase->clean(''FISICA'')\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\form\\dmForm.php(156): sfForm->bind(Array, Array)\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\form\\dmForm.php(151): dmForm->bindRequest(Object(dmWebRequest))\n#17 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(13): dmForm->bindAndValid(Object(dmWebRequest))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#23 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#24 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#25 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#26 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#27 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#28 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#29 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#30 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#31 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#32 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#33 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#34 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#35 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#36 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-09 21:42:09'),
(11, 'InvalidArgumentException', 'sfValidatorString does not support the following options: ''min_lenght'', ''0''.', 'sfValidatorString does not support the following options: ''min_lenght'', ''0''.\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\form\\doctrine\\BusquedaForm.class.php(20): sfValidatorBase->__construct(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(70): BusquedaForm->configure()\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(33): sfForm->__construct(Array, Array, NULL)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\form\\sfFormDoctrine.class.php(52): sfFormSymfony->__construct(Array, Array, NULL)\n#4 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(11): sfFormDoctrine->__construct()\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#22 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#23 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-09 22:29:33'),
(12, 'InvalidArgumentException', 'sfValidatorString does not support the following options: ''min_lenght''.', 'sfValidatorString does not support the following options: ''min_lenght''.\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\form\\doctrine\\BusquedaForm.class.php(20): sfValidatorBase->__construct(Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(70): BusquedaForm->configure()\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(33): sfForm->__construct(Array, Array, NULL)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\form\\sfFormDoctrine.class.php(52): sfFormSymfony->__construct(Array, Array, NULL)\n#4 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(11): sfFormDoctrine->__construct()\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#22 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#23 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-09 22:31:06');
INSERT INTO dm_error (id, php_class, name, description, module, action, uri, env, created_at) VALUES
(13, 'InvalidArgumentException', 'sfValidatorString does not support the following options: ''min_lenght''.', 'sfValidatorString does not support the following options: ''min_lenght''.\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\form\\doctrine\\BusquedaForm.class.php(20): sfValidatorBase->__construct(Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(70): BusquedaForm->configure()\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(33): sfForm->__construct(Array, Array, NULL)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\form\\sfFormDoctrine.class.php(52): sfFormSymfony->__construct(Array, Array, NULL)\n#4 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(11): sfFormDoctrine->__construct()\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#22 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#23 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-09 22:31:44'),
(14, 'InvalidArgumentException', 'sfValidatorString does not support the following options: ''min_lenght''.', 'sfValidatorString does not support the following options: ''min_lenght''.\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\form\\doctrine\\BusquedaForm.class.php(20): sfValidatorBase->__construct(Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(70): BusquedaForm->configure()\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(33): sfForm->__construct(Array, Array, NULL)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\form\\sfFormDoctrine.class.php(52): sfFormSymfony->__construct(Array, Array, NULL)\n#4 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(11): sfFormDoctrine->__construct()\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#22 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#23 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-09 22:32:05'),
(15, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-09 22:45:42'),
(16, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:33:52'),
(17, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:36:01'),
(18, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:36:34'),
(19, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:40:30'),
(20, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:41:01'),
(21, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:42:08'),
(22, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:42:30'),
(23, 'sfValidatorErrorSchema', '_csrf_token [Required.]', '_csrf_token [Required.]\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\validator\\sfValidatorSchema.class.php(90): sfValidatorSchema->doClean(Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(247): sfValidatorSchema->clean(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(75): sfForm->doBind(Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(227): sfFormSymfony->doBind(Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\request\\sfWebRequest.class.php(887): sfForm->bind(Array)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(12): sfWebRequest->checkCSRFProtection()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 08:43:54'),
(24, 'sfError404Exception', 'busqueda-especializada is not a module type', 'busqueda-especializada is not a module type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(25): sfAction->forward404Unless(NULL, ''busqueda-especi...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeModuleType(Object(dmWebRequest))\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''moduleType'')\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#17 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#18 {main}', 'dmAdmin', 'moduleType', 'http://bibliocnic.localhost/admin_dev.php/busqueda-especializada', 'dev', '2011-06-10 10:46:39'),
(25, 'sfError404Exception', 'Empty module and/or action after parsing the URL "/busqueda-especializada/" (/).', 'Empty module and/or action after parsing the URL "/busqueda-especializada/" (/).\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#1 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#2 {main}', NULL, NULL, 'http://bibliocnic.localhost/admin_dev.php/busqueda-especializada/', 'dev', '2011-06-10 10:47:53'),
(26, 'sfError404Exception', 'Empty module and/or action after parsing the URL "/busqueda-especializada/" (/).', 'Empty module and/or action after parsing the URL "/busqueda-especializada/" (/).\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#1 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#2 {main}', NULL, NULL, 'http://bibliocnic.localhost/admin_dev.php/busqueda-especializada/', 'dev', '2011-06-10 10:48:05');
INSERT INTO dm_error (id, php_class, name, description, module, action, uri, env, created_at) VALUES
(27, 'Exception', 'Warning : "fopen(http://diem-project.org/service/current-version/5_1) [<a href=''function.fopen''>function.fopen</a>]: failed to open stream: HTTP request failed! " occured in C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBr', 'Warning : "fopen(http://diem-project.org/service/current-version/5_1) [<a href=''function.fopen''>function.fopen</a>]: failed to open stream: HTTP request failed! " occured in C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfFopenAdapter.class.php on line 60\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(217): sfFopenAdapter->call(Object(dmWebBrowser), ''http://diem-pro...'', ''GET'', Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(116): sfWebBrowser->call(''http://diem-pro...'', ''GET'', Array, Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(50): sfWebBrowser->get(''http://diem-pro...'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(32): dmDiemVersionCheck->getLatestServerVersionForBranch(''5.1'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(93): dmDiemVersionCheck->isUpToDate()\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeVersionCheck(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''versionCheck'')\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#21 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#22 {main}', 'dmAdmin', 'versionCheck', 'http://bibliocnic.localhost/admin_dev.php/+/dmAdmin/versionCheck?_=1307695697650&dm_cpi=0&dm_xhr=1', 'dev', '2011-06-10 10:48:50'),
(28, 'InvalidArgumentException', 'sfWidgetFormDate does not support the following options: ''max''.', 'sfWidgetFormDate does not support the following options: ''max''.\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\widget\\sfWidgetForm.class.php(48): sfWidget->__construct(Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\form\\doctrine\\BusquedaForm.class.php(18): sfWidgetForm->__construct(Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\sfForm.class.php(70): BusquedaForm->configure()\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\form\\addon\\sfFormSymfony.class.php(33): sfForm->__construct(Array, Array, NULL)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\plugins\\sfDoctrinePlugin\\lib\\form\\sfFormDoctrine.class.php(52): sfFormSymfony->__construct(Array, Array, NULL)\n#5 C:\\development\\dmprojects\\bibliocnic\\apps\\front\\modules\\busqueda\\actions\\actions.class.php(11): sfFormDoctrine->__construct()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(179): busquedaActions->executeFormWidget(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(126): BasedmFrontActions->launchDirectActions()\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\modules\\dmFront\\lib\\BasedmFrontActions.class.php(12): BasedmFrontActions->renderPage()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmFrontActions->executePage(Object(dmWebRequest))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmFrontActions))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmFrontActions))\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmFrontPlugin\\lib\\filter\\dmFrontInitFilter.php(34): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmFrontInitFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmFront'', ''page'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\dev.php(7): dmContext->dispatch()\n#24 {main}', 'dmFront', 'page', 'http://bibliocnic.localhost/dev.php/busqueda-especializada', 'dev', '2011-06-10 15:39:34'),
(29, 'Exception', 'Could not resolve host: diem-project.org; No data record of requested type', 'Could not resolve host: diem-project.org; No data record of requested type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(217): sfCurlAdapter->call(Object(dmWebBrowser), ''http://diem-pro...'', ''GET'', Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(116): sfWebBrowser->call(''http://diem-pro...'', ''GET'', Array, Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(50): sfWebBrowser->get(''http://diem-pro...'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(32): dmDiemVersionCheck->getLatestServerVersionForBranch(''5.1'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(93): dmDiemVersionCheck->isUpToDate()\n#5 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(459): BasedmAdminActions->executeVersionCheck(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(947): sfActions->execute(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(942): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#8 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(928): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#9 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfExecutionFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfCacheFilter.class.php(65): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfCacheFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): dmAdminInitFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(990): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(660): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(2344): sfController->forward(''dmAdmin'', ''versionCheck'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\admin.php(7): dmContext->dispatch()\n#24 {main}', 'dmAdmin', 'versionCheck', 'http://bibliocnic.localhost/admin.php/+/dmAdmin/versionCheck?_=1308164955495&dm_cpi=0&dm_xhr=1', 'prod', '2011-06-15 21:10:14'),
(30, 'Exception', 'Could not resolve host: diem-project.org; No data record of requested type', 'Could not resolve host: diem-project.org; No data record of requested type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(217): sfCurlAdapter->call(Object(dmWebBrowser), ''http://diem-pro...'', ''GET'', Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(116): sfWebBrowser->call(''http://diem-pro...'', ''GET'', Array, Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(50): sfWebBrowser->get(''http://diem-pro...'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(32): dmDiemVersionCheck->getLatestServerVersionForBranch(''5.1'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(93): dmDiemVersionCheck->isUpToDate()\n#5 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(459): BasedmAdminActions->executeVersionCheck(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(947): sfActions->execute(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(942): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#8 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(928): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#9 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfExecutionFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfCacheFilter.class.php(65): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfCacheFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): dmAdminInitFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): dmRememberMeFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(990): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(1026): sfRenderingFilter->execute(Object(sfFilterChain))\n#20 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(660): sfFilterChain->execute()\n#21 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\prod\\config\\config_core_compile.yml.php(2344): sfController->forward(''dmAdmin'', ''versionCheck'')\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#23 C:\\development\\dmprojects\\bibliocnic\\web\\admin.php(7): dmContext->dispatch()\n#24 {main}', 'dmAdmin', 'versionCheck', 'http://bibliocnic.localhost/admin.php/+/dmAdmin/versionCheck?_=1308171068271&dm_cpi=0&dm_xhr=1', 'prod', '2011-06-15 22:51:15'),
(31, 'Exception', 'Warning : "fopen(http://diem-project.org/service/current-version/5_1) [<a href=''function.fopen''>function.fopen</a>]: failed to open stream: HTTP request failed! " occured in C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBr', 'Warning : "fopen(http://diem-project.org/service/current-version/5_1) [<a href=''function.fopen''>function.fopen</a>]: failed to open stream: HTTP request failed! " occured in C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfFopenAdapter.class.php on line 60\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(217): sfFopenAdapter->call(Object(dmWebBrowser), ''http://diem-pro...'', ''GET'', Array, Array)\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\sfWebBrowserPlugin\\lib\\sfWebBrowser.class.php(116): sfWebBrowser->call(''http://diem-pro...'', ''GET'', Array, Array)\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(50): sfWebBrowser->get(''http://diem-pro...'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\webService\\dmDiemVersionCheck.php(32): dmDiemVersionCheck->getLatestServerVersionForBranch(''5.1'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(93): dmDiemVersionCheck->isUpToDate()\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeVersionCheck(Object(dmWebRequest))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''versionCheck'')\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#21 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#22 {main}', 'dmAdmin', 'versionCheck', 'http://bibliocnic.localhost/admin_dev.php/+/dmAdmin/versionCheck?_=1308310402760&dm_cpi=0&dm_xhr=1', 'dev', '2011-06-17 13:33:57'),
(32, 'sfRenderException', 'The template "_list_header.php" does not exist or is unreadable in "".', 'The template "_list_header.php" does not exist or is unreadable in "".\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPartialView.class.php(105): sfView->preRenderCheck()\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(218): sfPartialView->render()\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(180): get_partial(''busqueda/list_h...'', Array)\n#3 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\indexSuccess.php(15): include_partial(''busqueda/list_h...'', Array)\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(185): sfPHPView->renderFile(''C:\\development\\...'')\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(155): sfPHPView->render()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(116): sfExecutionFilter->executeView(''busqueda'', ''index'', ''Success'', Array)\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(47): sfExecutionFilter->handleView(Object(sfFilterChain), Object(busquedaActions), ''Success'')\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''busqueda'', ''index'')\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#21 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#22 {main}', 'busqueda', 'index', 'http://bibliocnic.localhost/admin_dev.php/content/busquedas/busquedas/index', 'dev', '2011-06-18 16:38:28'),
(33, 'Doctrine_Record_UnknownPropertyException', 'Unknown record property / related component "tematicas" on "Busqueda"', 'Unknown record property / related component "tematicas" on "Busqueda"\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\doctrine\\record\\dmDoctrineRecord.php(700): Doctrine_Record_Filter_Standard->filterGet(Object(Busqueda), ''tematicas'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\doctrine\\record\\dmDoctrineRecord.php(616): dmDoctrineRecord->_get(''tematicas'', true)\n#2 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\_list_td_tabular.php(21): dmDoctrineRecord->get(''tematicas'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPartialView.class.php(110): sfPHPView->renderFile(''C:\\development\\...'')\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(218): sfPartialView->render()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(180): get_partial(''busqueda/list_t...'', Array)\n#7 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\_list.php(24): include_partial(''busqueda/list_t...'', Array)\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPartialView.class.php(110): sfPHPView->renderFile(''C:\\development\\...'')\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(218): sfPartialView->render()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(180): get_partial(''busqueda/list'', Array)\n#12 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\indexSuccess.php(26): include_partial(''busqueda/list'', Array)\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(185): sfPHPView->renderFile(''C:\\development\\...'')\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(155): sfPHPView->render()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(116): sfExecutionFilter->executeView(''busqueda'', ''index'', ''Success'', Array)\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(47): sfExecutionFilter->handleView(Object(sfFilterChain), Object(busquedaActions), ''Success'')\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#23 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#24 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#25 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#26 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#27 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#28 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''busqueda'', ''index'')\n#29 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#30 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#31 {main}', 'busqueda', 'index', 'http://bibliocnic.localhost/admin_dev.php/content/busquedas/busquedas/index', 'dev', '2011-06-18 16:47:30'),
(34, 'Doctrine_Record_UnknownPropertyException', 'Unknown record property / related component "tematicas" on "Busqueda"', 'Unknown record property / related component "tematicas" on "Busqueda"\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\doctrine\\record\\dmDoctrineRecord.php(700): Doctrine_Record_Filter_Standard->filterGet(Object(Busqueda), ''tematicas'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\doctrine\\record\\dmDoctrineRecord.php(616): dmDoctrineRecord->_get(''tematicas'', true)\n#2 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\_list_td_tabular.php(21): dmDoctrineRecord->get(''tematicas'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPartialView.class.php(110): sfPHPView->renderFile(''C:\\development\\...'')\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(218): sfPartialView->render()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(180): get_partial(''busqueda/list_t...'', Array)\n#7 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\_list.php(24): include_partial(''busqueda/list_t...'', Array)\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPartialView.class.php(110): sfPHPView->renderFile(''C:\\development\\...'')\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(218): sfPartialView->render()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(180): get_partial(''busqueda/list'', Array)\n#12 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\indexSuccess.php(26): include_partial(''busqueda/list'', Array)\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(185): sfPHPView->renderFile(''C:\\development\\...'')\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(155): sfPHPView->render()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(116): sfExecutionFilter->executeView(''busqueda'', ''index'', ''Success'', Array)\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(47): sfExecutionFilter->handleView(Object(sfFilterChain), Object(busquedaActions), ''Success'')\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#23 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#24 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#25 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#26 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#27 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#28 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''busqueda'', ''index'')\n#29 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#30 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#31 {main}', 'busqueda', 'index', 'http://bibliocnic.localhost/admin_dev.php/content/busquedas/busquedas/index', 'dev', '2011-06-18 17:00:35'),
(35, 'Doctrine_Record_UnknownPropertyException', 'Unknown record property / related component "tematicas" on "Busqueda"', 'Unknown record property / related component "tematicas" on "Busqueda"\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\doctrine\\record\\dmDoctrineRecord.php(700): Doctrine_Record_Filter_Standard->filterGet(Object(Busqueda), ''tematicas'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\doctrine\\record\\dmDoctrineRecord.php(616): dmDoctrineRecord->_get(''tematicas'', true)\n#2 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\_list_td_tabular.php(21): dmDoctrineRecord->get(''tematicas'')\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPartialView.class.php(110): sfPHPView->renderFile(''C:\\development\\...'')\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(218): sfPartialView->render()\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(180): get_partial(''busqueda/list_t...'', Array)\n#7 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\_list.php(24): include_partial(''busqueda/list_t...'', Array)\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPartialView.class.php(110): sfPHPView->renderFile(''C:\\development\\...'')\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(218): sfPartialView->render()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\helper\\PartialHelper.php(180): get_partial(''busqueda/list'', Array)\n#12 C:\\development\\dmprojects\\bibliocnic\\cache\\admin\\dev\\modules\\autoBusqueda\\templates\\indexSuccess.php(26): include_partial(''busqueda/list'', Array)\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(75): require(''C:\\development\\...'')\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\view\\sfPHPView.class.php(185): sfPHPView->renderFile(''C:\\development\\...'')\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(155): sfPHPView->render()\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(116): sfExecutionFilter->executeView(''busqueda'', ''index'', ''Success'', Array)\n#17 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(47): sfExecutionFilter->handleView(Object(sfFilterChain), Object(busquedaActions), ''Success'')\n#18 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#19 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#20 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#21 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#22 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#23 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#24 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#25 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#26 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#27 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#28 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''busqueda'', ''index'')\n#29 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#30 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#31 {main}', 'busqueda', 'index', 'http://bibliocnic.localhost/admin_dev.php/content/busquedas/busquedas/index', 'dev', '2011-06-18 17:04:12'),
(36, 'sfError404Exception', 'busqueda-especializada is not a module type', 'busqueda-especializada is not a module type\n#0 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\modules\\dmAdmin\\lib\\BasedmAdminActions.class.php(25): sfAction->forward404Unless(NULL, ''busqueda-especi...'')\n#1 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\action\\sfActions.class.php(60): BasedmAdminActions->executeModuleType(Object(dmWebRequest))\n#2 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(92): sfActions->execute(Object(dmWebRequest))\n#3 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(78): sfExecutionFilter->executeAction(Object(dmAdminActions))\n#4 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfExecutionFilter.class.php(42): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmAdminActions))\n#5 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfExecutionFilter->execute(Object(sfFilterChain))\n#6 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmAdminPlugin\\lib\\filter\\dmAdminInitFilter.php(32): sfFilterChain->execute()\n#7 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmAdminInitFilter->execute(Object(sfFilterChain))\n#8 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfBasicSecurityFilter.class.php(72): sfFilterChain->execute()\n#9 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfBasicSecurityFilter->execute(Object(sfFilterChain))\n#10 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\plugins\\dmUserPlugin\\lib\\dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#11 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): dmRememberMeFilter->execute(Object(sfFilterChain))\n#12 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfRenderingFilter.class.php(33): sfFilterChain->execute()\n#13 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\filter\\sfFilterChain.class.php(53): sfRenderingFilter->execute(Object(sfFilterChain))\n#14 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfController.class.php(233): sfFilterChain->execute()\n#15 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\symfony\\lib\\controller\\sfFrontWebController.class.php(48): sfController->forward(''dmAdmin'', ''moduleType'')\n#16 C:\\development\\dmprojects\\bibliocnic\\lib\\vendor\\diem\\dmCorePlugin\\lib\\context\\dmContext.php(280): sfFrontWebController->dispatch()\n#17 C:\\development\\dmprojects\\bibliocnic\\web\\admin_dev.php(7): dmContext->dispatch()\n#18 {main}', 'dmAdmin', 'moduleType', 'http://bibliocnic.localhost/admin_dev.php/busqueda-especializada', 'dev', '2011-06-20 14:21:29');

--
-- Volcar la base de datos para la tabla 'dm_group'
--

INSERT INTO dm_group (id, name, description, created_at, updated_at) VALUES
(1, 'developer', 'Able to read and update source code', '2011-06-05 16:30:24', '2011-06-05 16:30:24'),
(2, 'seo', 'Seo knowledge', '2011-06-05 16:30:24', '2011-06-05 16:30:24'),
(3, 'integrator', 'Integrator', '2011-06-05 16:30:25', '2011-06-05 16:30:25'),
(4, 'webmaster 1', 'Webmaster level 1', '2011-06-05 16:30:26', '2011-06-05 16:30:26'),
(5, 'writer', 'Writer', '2011-06-05 16:30:27', '2011-06-05 16:30:27'),
(6, 'front_editor', 'Can fast edit front widgets', '2011-06-05 16:30:27', '2011-06-05 16:30:27'),
(7, 'usuarios', 'Este grupo solo tendrá permiso de subir pdfs y usar los servicios de la biblioteca', '2011-06-20 11:01:04', '2011-06-20 11:01:04');

--
-- Volcar la base de datos para la tabla 'dm_group_permission'
--

INSERT INTO dm_group_permission (dm_group_id, dm_permission_id) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(3, 5),
(3, 9),
(4, 9),
(5, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(6, 22),
(3, 23),
(3, 24),
(3, 25),
(2, 26),
(3, 26),
(4, 26),
(5, 26),
(3, 27),
(4, 27),
(5, 27),
(3, 28),
(2, 29),
(3, 29),
(4, 29),
(5, 29),
(2, 30),
(3, 30),
(4, 30),
(3, 31),
(4, 31),
(2, 32),
(3, 32),
(4, 32),
(2, 33),
(3, 33),
(4, 33),
(5, 33),
(3, 34),
(3, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(4, 46),
(2, 47),
(3, 47),
(4, 47),
(5, 47),
(2, 48),
(3, 48),
(4, 48),
(5, 48),
(2, 51),
(3, 51),
(4, 51),
(3, 52),
(4, 52),
(3, 53),
(3, 57),
(7, 58),
(7, 59);

--
-- Volcar la base de datos para la tabla 'dm_layout'
--

INSERT INTO dm_layout (id, name, template, css_class) VALUES
(1, 'Global', 'page', NULL);

--
-- Volcar la base de datos para la tabla 'dm_lock'
--

INSERT INTO dm_lock (id, user_id, user_name, module, action, record_id, time, app, url, culture) VALUES
(2, 1, 'admin', 'dmGroupAdmin', 'index', 0, 1308171437, 'admin', '/admin.php/system/security/groups/index', 'es'),
(3, 1, 'admin', 'dmGroupAdmin', 'edit', 5, 1308171416, 'admin', '/admin.php/system/security/groups/edit/pk/5', 'es'),
(4, 1, 'admin', 'dmGroupAdmin', 'new', 0, 1308171498, 'admin', '/admin.php/system/security/groups/new', 'es');

--
-- Volcar la base de datos para la tabla 'dm_mail_template'
--

INSERT INTO dm_mail_template (id, name, vars, created_at, updated_at) VALUES
(1, 'dm_user_forgot_password', 'username, email, step2_url', '2011-06-05 16:32:42', '2011-06-05 16:32:42');

--
-- Volcar la base de datos para la tabla 'dm_mail_template_translation'
--

INSERT INTO dm_mail_template_translation (id, description, subject, body, from_email, to_email, cc_email, bcc_email, reply_to_email, sender_email, list_unsuscribe, is_html, is_active, lang) VALUES
(1, 'Sent to a user that requests a new password', 'Bibliocnic: change your password', 'Hello %username%\nYou can choose a new password at %step2_url%', 'webmaster@domain.com', '%email%', NULL, NULL, NULL, NULL, NULL, 0, 1, 'es');

--
-- Volcar la base de datos para la tabla 'dm_media'
--

INSERT INTO dm_media (id, dm_media_folder_id, file, legend, author, license, mime, size, dimensions, created_at, updated_at) VALUES
(1, 1, 'defaultMedia.jpg', NULL, NULL, NULL, 'image/jpeg', 159453, '1000x700', '2011-06-05 16:32:40', '2011-06-05 21:05:50'),
(2, 3, 'IMG_0100.JPG', '', '', '', 'image/jpeg', 43081, NULL, '2011-06-20 11:18:15', '2011-06-20 11:18:15');

--
-- Volcar la base de datos para la tabla 'dm_media_folder'
--

INSERT INTO dm_media_folder (id, rel_path, lft, rgt, level) VALUES
(1, '', 1, 6, 0),
(2, 'assets', 4, 5, 1),
(3, 'dm_user', 2, 3, 1);

--
-- Volcar la base de datos para la tabla 'dm_page'
--

INSERT INTO dm_page (id, module, action, record_id, credentials, lft, rgt, level) VALUES
(1, 'main', 'root', 0, NULL, 1, 30, 0),
(2, 'main', 'error404', 0, NULL, 4, 5, 1),
(3, 'main', 'signin', 0, NULL, 2, 3, 1),
(4, 'main', 'busquedas', 0, NULL, 6, 7, 1),
(5, 'busqueda', 'list', 0, '', 8, 29, 1),
(6, 'busqueda', 'show', 2, NULL, 9, 10, 2),
(7, 'busqueda', 'show', 3, NULL, 11, 12, 2),
(8, 'busqueda', 'show', 4, NULL, 13, 14, 2),
(9, 'busqueda', 'show', 5, NULL, 15, 16, 2),
(10, 'busqueda', 'show', 6, NULL, 17, 18, 2),
(11, 'busqueda', 'show', 7, NULL, 19, 20, 2),
(12, 'busqueda', 'show', 8, NULL, 21, 22, 2),
(13, 'busqueda', 'show', 9, NULL, 23, 24, 2),
(14, 'busqueda', 'show', 10, NULL, 25, 26, 2),
(15, 'busqueda', 'show', 11, NULL, 27, 28, 2);

--
-- Volcar la base de datos para la tabla 'dm_page_translation'
--

INSERT INTO dm_page_translation (id, slug, name, title, h1, description, keywords, auto_mod, is_active, is_secure, is_indexable, lang) VALUES
(1, '', 'Home', 'Home', NULL, NULL, NULL, 'snthdk', 1, 0, 1, 'es'),
(2, 'error404', 'Page not found', 'Page not found', NULL, NULL, NULL, 'snthdk', 1, 0, 1, 'es'),
(3, 'security/signin', 'Signin', 'Signin', NULL, NULL, NULL, 'snthdk', 1, 0, 1, 'es'),
(4, 'busquedas', 'Busquedas', 'Busquedas', NULL, NULL, NULL, 'snthdk', 1, 0, 1, 'es'),
(5, 'busqueda-especializada', 'Busqueda', 'Busquedas', '', 'Busquedas', 'busqueda, especializada', 'snthdk', 1, 0, 1, 'es'),
(6, 'busqueda-especializada/2', '2', '2', NULL, '2', NULL, 'snthdk', 1, 0, 1, 'es'),
(7, 'busqueda-especializada/3', '3', '3', NULL, '3', NULL, 'snthdk', 1, 0, 1, 'es'),
(8, 'busqueda-especializada/4', '4', '4', NULL, '4', NULL, 'snthdk', 1, 0, 1, 'es'),
(9, 'busqueda-especializada/5', '5', '5', NULL, '5', NULL, 'snthdk', 0, 0, 1, 'es'),
(10, 'busqueda-especializada/6', '6', '6', NULL, '6', NULL, 'snthdk', 1, 0, 1, 'es'),
(11, 'busqueda-especializada/7', '7', '7', NULL, '7', NULL, 'snthdk', 1, 0, 1, 'es'),
(12, 'busqueda-especializada/8', '8', '8', NULL, '8', NULL, 'snthdk', 1, 0, 1, 'es'),
(13, 'busqueda-especializada/9', '9', '9', NULL, '9', NULL, 'snthdk', 1, 0, 1, 'es'),
(14, 'busqueda-especializada/10', '10', '10', NULL, '10', NULL, 'snthdk', 1, 0, 1, 'es'),
(15, 'busqueda-especializada/11', '11', '11', NULL, '11', NULL, 'snthdk', 1, 0, 1, 'es');

--
-- Volcar la base de datos para la tabla 'dm_page_view'
--

INSERT INTO dm_page_view (id, module, action, dm_layout_id) VALUES
(1, 'main', 'root', 1),
(2, 'main', 'error404', 1),
(3, 'main', 'signin', 1),
(4, 'main', 'busquedas', 1),
(5, 'busqueda', 'list', 1),
(6, 'busqueda', 'show', 1);

--
-- Volcar la base de datos para la tabla 'dm_permission'
--

INSERT INTO dm_permission (id, name, description, created_at, updated_at) VALUES
(1, 'system', 'System administrator', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(2, 'admin', 'Log into administration', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(3, 'clear_cache', 'Clear the cache', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(4, 'log', 'Manage logs', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(5, 'code_editor', 'Use admin and front code editors', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(6, 'security_user', 'Manage security users', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(7, 'security_permission', 'Manage security permissions', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(8, 'security_group', 'Manage security groups', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(9, 'content', 'CRUD dynamic content in admin', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(10, 'zone_add', 'Add zones', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(11, 'zone_edit', 'Edit zones', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(12, 'zone_delete', 'Delete zones', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(13, 'widget_add', 'Add widgets', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(14, 'widget_edit', 'Edit widgets', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(15, 'widget_delete', 'Delete widgets', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(16, 'widget_edit_fast', 'Can fast edit widgets', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(17, 'widget_edit_fast_record', 'Fast edit widget record', '2011-06-05 16:30:21', '2011-06-05 16:30:21'),
(18, 'widget_edit_fast_content_title', 'Fast edit widget content title', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(19, 'widget_edit_fast_content_link', 'Fast edit widget content link', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(20, 'widget_edit_fast_content_image', 'Fast edit widget content image', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(21, 'widget_edit_fast_content_text', 'Fast edit widget content text', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(22, 'widget_edit_fast_navigation_menu', 'Fast edit widget navigation menu', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(23, 'page_add', 'Add pages', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(24, 'page_edit', 'Edit pages', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(25, 'page_delete', 'Delete pages', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(26, 'page_bar_admin', 'See page bar in admin', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(27, 'media_bar_admin', 'See media bar in admin', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(28, 'media_library', 'Use media library in admin', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(29, 'tool_bar_admin', 'See toolbar in admin', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(30, 'page_bar_front', 'See page bar in front', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(31, 'media_bar_front', 'See media bar in front', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(32, 'tool_bar_front', 'See toolbar in front', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(33, 'site_view', 'See non-public website and inactive pages', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(34, 'loremize', 'Create automatic random content', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(35, 'export_table', 'Export table contents', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(36, 'sitemap', 'Regenerate sitemap', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(37, 'automatic_metas', 'Configure automatic pages metas', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(38, 'manual_metas', 'Configure manually pages metas', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(39, 'manage_pages', 'Move and sort pages', '2011-06-05 16:30:22', '2011-06-05 16:30:22'),
(40, 'url_redirection', 'Configure url redirections', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(41, 'use_google_analytics', 'Use google analytics', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(42, 'google_analytics', 'Configure google analytics', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(43, 'use_google_webmaster_tools', 'Use google webmaster tools', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(44, 'google_webmaster_tools', 'Configure google webmaster tools', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(45, 'xiti', 'Configure Xiti', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(46, 'search_engine', 'Manage internal search engine', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(47, 'see_log', 'See the logs', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(48, 'see_chart', 'See the charts', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(49, 'see_diagrams', 'See the developer diagrams', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(50, 'see_server', 'See the server infos', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(51, 'config_panel', 'Use the configuration panel', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(52, 'translation', 'Use the translation interface', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(53, 'layout', 'Use the layout interface', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(54, 'sent_mail', 'See mails sent by server', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(55, 'mail_template', 'Configure mail templates', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(56, 'error_log', 'See error log', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(57, 'interface_settings', 'Manage interface settings like default image resize method', '2011-06-05 16:30:23', '2011-06-05 16:30:23'),
(58, 'usar_servicios', 'Este permiso es para que los usuarios puedan usar los servicios de la biblioteca.', '2011-06-20 10:51:59', '2011-06-20 10:59:02'),
(59, 'subir_pdf', 'Este permiso es para que los usuarios puedan subir pdf pero no serán publicados hasta que el bibliotecario lo valide.', '2011-06-20 10:53:17', '2011-06-20 10:57:04');

--
-- Volcar la base de datos para la tabla 'dm_redirect'
--


--
-- Volcar la base de datos para la tabla 'dm_remember_key'
--

INSERT INTO dm_remember_key (dm_user_id, remember_key, ip_address, created_at) VALUES
(1, '29ef7e995b6f334f8bd807592f7f32bc', '127.0.0.2', '2011-06-20 14:21:22');

--
-- Volcar la base de datos para la tabla 'dm_sent_mail'
--


--
-- Volcar la base de datos para la tabla 'dm_setting'
--

INSERT INTO dm_setting (id, name, type, params, group_name, credentials) VALUES
(1, 'site_name', 'text', NULL, 'site', NULL),
(2, 'site_active', 'boolean', NULL, 'site', NULL),
(3, 'site_indexable', 'boolean', NULL, 'site', NULL),
(4, 'site_working_copy', 'boolean', NULL, 'site', NULL),
(5, 'ga_key', 'text', NULL, 'tracking', 'google_analytics'),
(6, 'ga_token', 'text', NULL, 'internal', 'google_analytics'),
(7, 'gwt_key', 'text', NULL, 'tracking', 'google_webmaster_tools'),
(8, 'xiti_code', 'textarea', NULL, 'tracking', 'xiti'),
(9, 'search_stop_words', 'textarea', NULL, 'search engine', 'search_engine'),
(10, 'base_urls', 'textarea', NULL, 'internal', 'system'),
(11, 'image_resize_method', 'select', 'fit=Fit scale=Scale inflate=Inflate top=Top right=Right left=Left bottom=Bottom center=Center', 'interface', 'interface_settings'),
(12, 'image_resize_quality', 'number', NULL, 'interface', 'interface_settings'),
(13, 'link_external_blank', 'boolean', NULL, 'interface', 'interface_settings'),
(14, 'link_current_span', 'boolean', NULL, 'interface', 'interface_settings'),
(15, 'link_use_page_title', 'boolean', NULL, 'interface', 'interface_settings'),
(16, 'title_prefix', 'text', NULL, 'seo', 'manual_metas'),
(17, 'title_suffix', 'text', NULL, 'seo', 'manual_metas'),
(18, 'smart_404', 'boolean', NULL, 'seo', 'url_redirection');

--
-- Volcar la base de datos para la tabla 'dm_setting_translation'
--

INSERT INTO dm_setting_translation (id, description, value, default_value, lang) VALUES
(1, 'The site name', 'Bibliocnic', 'Bibliocnic', 'es'),
(2, 'Is the site ready for visitors ?', '1', '1', 'es'),
(3, 'Is the site ready for search engine crawlers ?', '1', '1', 'es'),
(4, 'Is this site the current working copy ?', '1', '1', 'es'),
(5, 'The google analytics key without javascript stuff ( e.g. UA-9876614-1 )', NULL, '', 'es'),
(6, 'Auth token gor Google Analytics, computed from password', NULL, '', 'es'),
(7, 'The google webmaster tools filename without google and .html ( e.g. a913b555ba9b4f13 )', NULL, '', 'es'),
(8, 'The xiti html code', NULL, '', 'es'),
(9, 'Words to exclude from searches (e.g. the, a, to )', NULL, '', 'es'),
(10, 'Diem base urls for different applications/environments/cultures', '{"front-dev":"http:\\/\\/bibliocnic.localhost\\/dev.php","admin-dev":"http:\\/\\/bibliocnic.localhost\\/admin_dev.php","admin-prod":"http:\\/\\/bibliocnic.localhost\\/admin.php","front-prod":"http:\\/\\/bibliocnic.localhost\\/index.php"}', '', 'es'),
(11, 'Default method when an image needs to be resized', 'center', 'center', 'es'),
(12, 'Jpeg default quality when generating thumbnails', '95', '95', 'es'),
(13, 'Links to other domain get automatically a _blank target', NULL, '0', 'es'),
(14, 'Links to current page are changed from <a> to <span>', '1', '1', 'es'),
(15, 'Add an automatic title on link based on the target page title', '1', '1', 'es'),
(16, 'Append something at the beginning of all pages title', NULL, '', 'es'),
(17, 'Append something at the end of all pages title', ' | Bibliocnic', ' | Bibliocnic', 'es'),
(18, 'When a page is not found, user is redirect to a similar page. The internal search index is used to find the best page for requested url.', '1', '1', 'es');

--
-- Volcar la base de datos para la tabla 'dm_trans_unit'
--

INSERT INTO dm_trans_unit (id, dm_catalogue_id, source, target, meta, created_at, updated_at) VALUES
(1, 2, 'Open', 'Abrir', NULL, '2011-06-05 16:32:11', '2011-06-05 16:32:11'),
(2, 2, 'Delete', 'Borrar', NULL, '2011-06-05 16:32:11', '2011-06-05 16:32:11'),
(3, 2, 'Add', 'Añadir', NULL, '2011-06-05 16:32:11', '2011-06-05 16:32:11'),
(4, 2, 'Add a %1%', 'Añadir un %1%', NULL, '2011-06-05 16:32:11', '2011-06-05 16:32:11'),
(5, 2, 'Cancel', 'Cancelar', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(6, 2, 'Are you sure?', '¿Está seguro?', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(7, 2, 'Unassociated', 'No Asociado', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(8, 2, 'Associated', 'Asociado', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(9, 2, 'Forgot your password?', '¿Olvidó su contraseña?', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(10, 2, 'yes', 'sí', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(11, 2, 'no', 'no', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(12, 2, 'yes or no', 'sí o no', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(13, 2, 'Next', 'Siguiente', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(14, 2, 'Previous', 'Anterior', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(15, 2, 'First', 'Primero', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(16, 2, 'Last', 'Último', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(17, 2, 'Is active', 'Está activo', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(18, 2, 'Is active:', 'Está activo:', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(19, 2, 'Updated at', 'Actualizado el', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(20, 2, 'Updated at:', 'Actualizado el:', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(21, 2, 'Created at', 'Creado el', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(22, 2, 'Created at:', 'Creado el:', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(23, 2, 'Created by', 'Creado por', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(24, 2, 'Updated by', 'Actualizado por', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(25, 2, 'Query', 'Consulta', NULL, '2011-06-05 16:32:12', '2011-06-05 16:32:12'),
(26, 2, 'Image alt', 'Texto de Imagen', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(27, 2, 'Image alt:', 'Texto de Imagen:', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(28, 2, 'Your modifications have been saved', 'Las modificaciones han sido guardadas', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(29, 2, 'Required', 'Requerido', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(30, 2, 'Content', 'Contenido', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(31, 2, 'Home', 'Inicio', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(32, 2, 'Tools', 'Herramientas', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(33, 2, 'System', 'Sistema', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(34, 2, 'Update project', 'Actualizar proyecto', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(35, 2, 'Project successfully updated', 'Proyecto actualizado correctamente', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(36, 2, 'Search', 'Búsqueda', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(37, 2, 'Search in %1%', 'Buscar en %1%', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(38, 2, 'Cancel search', 'Cancelar la búsqueda', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(39, 2, 'Active search', 'Búsqueda activa', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(40, 2, 'is empty', 'está vacído', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(41, 2, 'from', 'desde', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(42, 2, 'to', 'hasta', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(43, 2, '[0] no result|[1] 1 result|(1,+Inf] %1% results', '[0] ningún resultado | [1] 1 resultado | (1,+Inf] %1% de resultados', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(44, 2, 'Choose an action', 'Elegir una acción', NULL, '2011-06-05 16:32:13', '2011-06-05 16:32:13'),
(45, 2, 'Edit', 'Editar', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(46, 2, 'New', 'Nuevo', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(47, 2, 'You must at least select one item.', 'Debe elegir por lo menos un elemento.', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(48, 2, 'Filter', 'Filtro', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(49, 2, 'Reset', 'Resetear', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(50, 2, 'Add a', 'Añadir uno', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(51, 2, 'The item was updated successfully.', 'El elemento se ha actualizado con éxito.', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(52, 2, 'The item has not been saved due to some errors.', 'El elemento no se ha guardado debido a algunos errores.', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(53, 2, 'Invalid.', 'Inválido.', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(54, 2, 'Required.', 'Obligatorio.', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(55, 2, 'The item was updated successfully. You can add another one below.', 'El elemento se ha actualizado con éxito. Puede agregar otro debajo.', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(56, 2, 'Translation', 'Traducción', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(57, 2, 'Sentences', 'Frases', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(58, 2, 'Loremize', 'Loremizar', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(59, 2, 'does not match the date format', 'no coincide con el formato de fecha', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(60, 2, 'The date must be before', 'La fecha debe ser anterior a', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(61, 2, 'The date must be after', 'La fecha debe ser posterior a', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(62, 2, '[0]no element|[1]1 element|(1,+Inf]%1% elements', '[0] no hay ningún elemento | [1] 1 elemento | (1,+Inf] %1% elementos', NULL, '2011-06-05 16:32:14', '2011-06-05 16:32:14'),
(63, 2, 'You must select an action to execute on the selected items.', 'Debe seleccionar una acción a ejecutar con los elementos seleccionados.', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(64, 2, 'No result', 'Ningún resultado', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(65, 2, 'The selected items have been deleted successfully.', 'Los elementos seleccionados se han eliminado con éxito.', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(66, 2, 'The selected items have been modified successfully', 'Los elementos seleccionados se han modificado con éxito', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(67, 2, 'A problem occurs when modifying the selected items', 'Han ocurrido problema(s) al  modificar los elementos seleccionados', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(68, 2, 'Root', 'Raíz', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(69, 2, 'Page not found', 'Página no encontrada', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(70, 2, 'Media library', 'Librería de Medias', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(71, 2, 'UML Model Diagram', 'Diagrama de modelos UML', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(72, 2, 'The item was deleted successfully.', 'El elemento fue eliminado con éxito.', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(73, 2, 'element', 'elemento', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(74, 2, 'elements', 'elementos', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(75, 2, 'Add a folder here', 'Añadir una carpeta aquí', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(76, 2, 'Import from a zip', 'Importar desde un archivo ZIP', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(77, 2, 'Add some files here', 'Añadir archivos aquí', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(78, 2, 'Add a file here', 'Añadir archivo aquí', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(79, 2, 'Clear cache', 'Borrar la caché', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(80, 2, 'Clear media cache', 'Borrar caché de media', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(81, 2, 'Name', 'Nombre', NULL, '2011-06-05 16:32:15', '2011-06-05 16:32:15'),
(82, 2, 'Rename this folder', 'Cambiar el nombre de esta carpeta', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(83, 2, 'Move this folder', 'Mover esta carpeta', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(84, 2, 'Delete this folder', 'Eliminar esta carpeta', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(85, 2, 'Already exists in this folder', 'Ya existe en esta carpeta', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(86, 2, 'This is a bad name', 'Nombre incorrecto', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(87, 2, 'File', 'Archivo', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(88, 2, 'Thumbnails can not be created in %1%', 'No se pueden crear thumbnails en %1%', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(89, 2, 'Folder %1% is not writable', 'La carpeta %1% no tiene permisos de escritura', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(90, 2, 'File %1% is not writable', 'El archivo %1% no tiene permisos de escritura', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(91, 2, 'This folder is not writable', 'Esta carpeta no tiene permisos de escritura', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(92, 2, 'This file is not writable', 'Este archivo no tiene permisos de escritura', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(93, 2, 'Size', 'Tamaño', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(94, 2, 'Legend', 'Leyenda', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(95, 2, 'Author', 'Autor', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(96, 2, 'License', 'Licencia', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(97, 2, 'Validate', 'Validar', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(98, 2, 'Save', 'Guardar', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(99, 2, 'Save and Add', 'Guardar y añadir', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(100, 2, 'Save and Next', 'Guardar y Siguiente', NULL, '2011-06-05 16:32:16', '2011-06-05 16:32:16'),
(101, 2, 'Save and Back to list', 'Guardar y volver a la lista', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(102, 2, 'Save modifications', 'Guardar modificaciones', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(103, 2, 'Delete this file', 'Eliminar este archivo', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(104, 2, 'Close', 'Cerrar', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(105, 2, 'Delete this %1%', 'Eliminar este %1%', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(106, 2, 'Delete this page', 'Borrar esta página', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(107, 2, 'Active', 'Activo', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(108, 2, 'Referers', 'Referentes', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(109, 2, 'Administration login', 'Login de administración', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(110, 2, 'Login', 'Iniciar sesión', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(111, 2, 'Username', 'Nombre de usuario', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(112, 2, 'Password', 'Contraseña', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(113, 2, 'Password (again)', 'Contraseña (otra vez)', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(114, 2, 'Remember', 'Recordar', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(115, 2, 'The username and/or password is invalid.', 'El nombre de usuario y/o la contraseña no es válida.', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(116, 2, 'Profiles', 'Perfiles', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(117, 2, 'Profile', 'Perfil', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(118, 2, 'User', 'Usuario', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(119, 2, 'Users', 'Usuarios', NULL, '2011-06-05 16:32:17', '2011-06-05 16:32:17'),
(120, 2, 'Metas', 'Metas', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(121, 2, 'Automatic Page', 'Página automática', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(122, 2, 'Automatic Pages', 'Páginas automática', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(123, 2, 'Site tree', 'Árbol de la web', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(124, 2, 'Some SEO improvements should be applied', 'Se deberían aplicar algunas mejoras SEO', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(125, 2, 'Some page have the same url', 'Algunas páginas tienen la misma URL', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(126, 2, 'Click here to see them', 'Haga clic aquí para verlos', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(127, 2, 'Seo improvements', 'Mejoras Seo', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(128, 2, 'Duplicated %1%', 'Duplicado %1%', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(129, 2, 'Automatic page', 'Página automática', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(130, 2, 'Manual page', 'Página manual', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(131, 2, 'Modify object', 'Modificar objeto', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(132, 2, 'Configure automatic seo for %1% pages', 'Configurar seo automático para %1% páginas', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(133, 2, 'View page on website', 'Ver página en el sitio web', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(134, 2, 'Edit image', 'Editar imagen', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(135, 2, 'Loading...', 'Cargando ...', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(136, 2, 'Preview', 'Previsualización', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(137, 2, 'Back to list', 'Volver a la lista', NULL, '2011-06-05 16:32:18', '2011-06-05 16:32:18'),
(138, 2, 'Back to %1% list', 'Volver a la lista %1%', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(139, 2, 'The form submission cannot be processed. It probably means that you have uploaded a file that is too big.', 'El envío del formulario no puede ser procesado. Probablemente significa que ha subido un archivo que es demasiado grande.', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(140, 2, 'A problem occurs when deleting the selected items.', 'Se produce un problema al eliminar los elementos seleccionados.', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(141, 2, 'elements per page', 'elementos por página', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(142, 2, 'Sort', 'Ordenar', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(143, 2, 'Sort %1%', 'Ordenar %1%', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(144, 2, 'Sort %1% for %2%', 'Ordenar %1% para %2%', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(145, 2, 'Drag & drop elements, then', 'Arrastre y suelte los elementos, ahí', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(146, 2, 'A problem occured when sorting the items', 'Ocurrió un problema al ordenar los elementos', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(147, 2, 'The items have been sorted successfully', 'Los ítemes han sido ordenados con éxito', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(148, 2, 'Add a zone', 'Agregar a la zona', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(149, 2, 'Add a widget', 'Añadir un widget', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(150, 2, 'Go to site', 'Ir al sitio', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(151, 2, 'You don''t have the required permission to access this page.', 'Usted no tiene el permiso necesario para acceder a esta página.', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(152, 2, 'Edit this zone', 'Editar esta zona', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(153, 2, 'Delete this zone', 'Eliminar esta zona', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(154, 2, 'CSS class', 'Clase CSS', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(155, 2, 'Width', 'Ancho', NULL, '2011-06-05 16:32:19', '2011-06-05 16:32:19'),
(156, 2, 'Height', 'Alto', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(157, 2, 'Edit this %1%', 'Editar %1%', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(158, 2, 'Delete this widget', 'Eliminar este widget', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(159, 2, 'Title', 'Título', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(160, 2, 'Link', 'Vínculo', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(161, 2, 'Text', 'Texto', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(162, 2, 'Advanced', 'Avanzado', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(163, 2, 'Bread crumb', 'Bread crumb', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(164, 2, 'Search form', 'Formulario de búsqueda', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(165, 2, 'Search results', 'Resultados de la búsqueda', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(166, 2, 'Go to content', 'Ir al contenido', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(167, 2, 'New widget', 'Nuevo widget', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(168, 2, 'Use media', 'Usar medio', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(169, 2, 'Or upload a file', 'O suba un archivo', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(170, 2, 'Drag & drop a media here', 'Arrastre y suelte un medio aquí', NULL, '2011-06-05 16:32:20', '2011-06-05 16:32:20'),
(171, 2, 'Media', 'Medio', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(172, 2, 'You must use a media or upload a file', 'Debe utilizar un medio o cargar un archivo', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(173, 2, 'Try', 'Intentar', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(174, 2, 'Change file', 'Cambiar el archivo', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(175, 2, 'Method', 'Método', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(176, 2, 'Center', 'Centro', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(177, 2, 'Scale', 'Escala', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(178, 2, 'Inflate', 'Inflar', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(179, 2, 'Fit', 'Ajustar', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(180, 2, 'Save and close', 'Guardar y cerrar', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(181, 2, 'This size is not valid.', 'Este tamaño no es válida.', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(182, 2, 'This color is not valid.', 'Este color no es válido.', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(183, 2, 'Per page', 'Por página', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(184, 2, 'First page', 'Primera página', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(185, 2, 'Previous page', 'Página Anterior', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(186, 2, 'Next page', 'Página siguiente', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(187, 2, 'Last page', 'Última página', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(188, 2, 'Top', 'Superior', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(189, 2, 'Bottom', 'Inferior', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(190, 2, 'View', 'Ver', NULL, '2011-06-05 16:32:21', '2011-06-05 16:32:21'),
(191, 2, 'Order by', 'Ordenar por', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(192, 2, 'Random', 'Aleatoriamente', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(193, 2, 'automatic', 'automático', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(194, 2, 'Add new page', 'Añadir página', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(195, 2, 'Seo', 'Seo', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(196, 2, 'Integration', 'Integración', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(197, 2, 'Edit page', 'Editar página', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(198, 2, 'Logout', 'Cerrar sesión', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(199, 2, 'Export in %1%', 'Exportar en %1%', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(200, 2, 'Available', 'Disponible', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(201, 2, 'Requires authentication', 'Requiere autentificación', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(202, 2, 'Search engine crawlers', 'Rastreadores de motores de búsqueda', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(203, 2, 'Show page structure', 'Mostrar página (sale de modo de edición)', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(204, 2, 'Generate sitemap', 'Generar el mapa del sitio', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(205, 2, 'Links', 'Enlaces', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(206, 2, 'Act on selection', 'Actuar al seleccionar', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(207, 2, 'Activate', 'Activar', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(208, 2, 'Deactivate', 'Desactivar', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(209, 2, 'Remove', 'Eliminar', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(210, 2, 'Sorry, but you can not access administration with your current browser', 'Lo sentimos, pero no se puede acceder a la administración con su navegador actual', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:22'),
(211, 2, 'Select all', 'Seleccionar todos', NULL, '2011-06-05 16:32:22', '2011-06-05 16:32:23'),
(212, 2, 'Unselect all', 'Deseleccionar todos', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(213, 2, 'Configuration panel', 'Panel de configuración', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(214, 2, 'This is not a valid hexadecimal color', 'Este no es un color hexadecimal válido', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(215, 2, '%1% - %2% of %3%', ' %1% - %2% en %3%', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(216, 2, 'Display', 'Mostrar', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(217, 2, 'User logged in', 'Usuario conectado', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(218, 2, 'User logged out', 'Usuario se desconectó', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(219, 2, 'Cache cleared', 'Cache vaciado', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(220, 2, 'This Week', 'Esta Semana', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(221, 2, 'This Year', 'Este Año', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(222, 2, 'Activity', 'Actividad', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(223, 2, 'Server', 'Servidor', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(224, 2, 'Browser', 'Navegador', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(225, 2, 'Browsers', 'Navegadores', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(226, 2, 'Location', 'Ubicación', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(227, 2, 'Events', 'Eventos', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(228, 2, 'Requests', 'Petición', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(229, 2, 'Subject', 'Sujeto', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(230, 2, 'Expanded view', 'Vista expandida', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(231, 2, 'Show', 'Mostrar', NULL, '2011-06-05 16:32:23', '2011-06-05 16:32:23'),
(232, 2, 'Gallery', 'Galería', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(233, 2, 'Edit medias', 'Editar medios', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(234, 2, 'Remove this media', 'Eliminar este medio', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(235, 2, 'Preferences', 'Preferencias', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(236, 2, 'Mail templates', 'Plantillas de correo', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(237, 2, 'Layouts', 'Diseños', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(238, 2, 'Zone', 'Zona', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(239, 2, 'Navigation', 'Navegación', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(240, 2, 'Configuration', 'Configuración', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(241, 2, 'Chart', 'Gráfico', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(242, 2, 'Log', 'Registro', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(243, 2, 'Monitoring', 'Monitoreo', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(244, 2, 'Manage index', 'Manejar índice', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(245, 2, 'Search engine', 'Motor de búsqueda', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(246, 2, 'Google analytics', 'Google analytics', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(247, 2, 'Google webmaster tools', 'Herramientas para webmasters de Google', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(248, 2, 'Services', 'Servicios', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(249, 2, 'Sitemap', 'Mapa del sitio', NULL, '2011-06-05 16:32:24', '2011-06-05 16:32:24'),
(250, 2, 'Url Redirections', 'Redirecciones Url', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(251, 2, 'Redirections', 'Redirecciones', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(252, 2, 'Settings', 'Configuraciones', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(253, 2, 'Sent mails', 'Correos electronicos enviados', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(254, 2, 'Errors', 'Errores', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(255, 2, 'Permissions', 'Permisos', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(256, 2, 'Groups', 'Grupos', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(257, 2, 'Security', 'Seguridad', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(258, 2, 'See diagrams', 'Ver diagramas', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(259, 2, 'Code Editor', 'Editor de código', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(260, 2, 'Diem Console', 'Consola Diem', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(261, 2, 'Dev', 'Desarrollo', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(262, 2, 'Exception', 'Excepción', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(263, 2, 'Cache', 'Caché', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(264, 2, 'This chart is not available.', 'Este gráfico no está disponible.', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(265, 2, 'Dm gallery', 'Galería Diem', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(266, 2, 'Email', 'Correo electrónico', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(267, 2, 'Last login', 'Última entrada', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(268, 2, 'Visible', 'Visible', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(269, 2, 'External services', 'Servicios externos', NULL, '2011-06-05 16:32:25', '2011-06-05 16:32:25'),
(270, 2, 'Interface', 'Interfaz', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(271, 2, 'Site', 'Sitio', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(272, 2, 'Tracking', 'Rastreo', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(273, 2, 'Right', 'Derecho', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(274, 2, 'Left', 'Izquierdo', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(275, 2, 'Image resize method', 'Método para redimensionar', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(276, 2, 'Default method when an image needs to be resized', 'Método por defecto cuando una imagen necesita ser redimensionada', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(277, 2, 'Image resize quality', 'Calidad de imagen al redimensionar', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(278, 2, 'Jpeg default quality when generating thumbnails', 'Calidad Jpeg  por defecto al generar thumbnails', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(279, 2, 'Link external blank', 'Enlace externo en blanco', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(280, 2, 'Links to other domain get automatically a _blank target', 'Enlaces a otro dominio automáticamente reciben un blanco _blank', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(281, 2, 'Link current span', 'Enlace a span actual', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(282, 2, 'Links to current page are changed from <a> to <span>', 'Enlaces a la página actual se cambian de <a> a <span>', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(283, 2, 'Link use page title', 'Enlace usa título de página', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(284, 2, 'Add an automatic title on link based on the target page title', 'Agregar título automático a enlace basado en el título de la página de destino', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(285, 2, 'Search stop words', 'Stop words de la búsqueda', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(286, 2, 'Words to exclude from searches (e.g. the, a, to )', 'Palabras para excluir de las búsquedas (por ejemplo, la, a, de)', NULL, '2011-06-05 16:32:26', '2011-06-05 16:32:26'),
(287, 2, 'Title prefix', 'Prefijo Título', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(288, 2, 'Append something at the beginning of all pages title', 'Añadir algo al principio de todos los títulos de páginas', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(289, 2, 'Title suffix', 'Sufijo de título', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(290, 2, 'Append something at the end of all pages title', 'Añadir algo al final de todos los títulos de páginas', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(291, 2, 'Smart 404', '404 inteligente', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(292, 2, 'When a page is not found, user is redirect to a similar page. The internal search index is used to find the best page for requested url.', 'Cuando no se encuentre una página, el usuario es redireccionado a una página similar. Se usa el índice de búsqueda interno para encontrar la página más adecuada para la url pedida.', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(293, 2, 'Site name', 'Nombre del sitio', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(294, 2, 'The site name', 'El nombre del sitio', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(295, 2, 'Site active', 'Site activo', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(296, 2, 'Is the site ready for visitors ?', '¿Está listo el site para los visitantes?', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(297, 2, 'Site indexable', 'Site indexable', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(298, 2, 'Is the site ready for search engine crawlers ?', '¿Está listo el site para los rastreadores de motores de búsqueda?', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(299, 2, 'Site working copy', 'Copia de trabajo del site', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(300, 2, 'Is this site the current working copy ?', '¿Es este site la copia de trabajo actual?', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(301, 2, 'Ga key', 'Clave Ga', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(302, 2, 'The google analytics key without javascript stuff ( e.g. UA-9876614-1 )', 'La clave de Google Analytics sin javascript (por ejemplo, UA-9876614-1)', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(303, 2, 'Gwt key', 'Clave Gwt', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(304, 2, 'The google webmaster tools filename without google and .html ( e.g. a913b555ba9b4f13 )', 'El nombre de archivo de las herramientas para webmasters de Google sin Google y. Html (por ejemplo, a913b555ba9b4f13)', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(305, 2, 'Xiti code', 'Código Xiti', NULL, '2011-06-05 16:32:27', '2011-06-05 16:32:27'),
(306, 2, 'The xiti html code', 'El código html xiti', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(307, 2, 'Ga email', 'Correo electrónico Ga', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(308, 2, 'Required to display google analytics data into Diem', 'Necesario para mostrar los datos en Google Analytics de Diem', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(309, 2, 'Ga password', 'Contraseña Ga', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(310, 2, 'Diem mail support is <strong>-NOT-</strong> completed. Please use the symfony 1.4 mail service instead', 'El soporte para correo electrónico de DIEM <strong>no está terminado</strong>. Por favor use el servicio de correo de Symfony 1.4', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(311, 2, 'Duplicate', 'Duplicado', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(312, 2, 'Source', 'Fuente', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(313, 2, 'Target', 'Meta', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(314, 2, 'Dm catalogue', 'Catálogo de Dm', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(315, 2, 'Meta', 'Meta', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(316, 2, 'Menu', 'Menú', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(317, 2, 'Internal search engine', 'Motor de búsqueda interno', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(318, 2, 'Reload index', 'Actualizar índice', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(319, 2, 'Configure Google Analytics', 'Configurar Google Analytics', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(320, 2, 'Configure Google Webmaster Tools', 'Configurar Google Webmaster Tools', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(321, 2, 'Position', 'Posición', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(322, 2, 'Urls', 'URL', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(323, 2, 'Old url', 'Url antigua', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(324, 2, 'New url', 'Nueva url', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(325, 2, 'Group', 'Grupo', NULL, '2011-06-05 16:32:28', '2011-06-05 16:32:28'),
(326, 2, 'Value', 'Valor', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(327, 2, 'Credentials', 'Credenciales', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(328, 2, 'Class', 'Clase', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(329, 2, 'Module', 'Módulo', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(330, 2, 'Action', 'Acción', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(331, 2, 'Uri', 'URI', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(332, 2, 'Env', 'Desarrollo', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(333, 2, 'Super admin', 'Super Administrador', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(334, 2, 'The admin code editor is <strong>-NOT-</strong> completed yet an may not work', 'El editor de código de administración <strong>no</strong> está completado todavía y puede no funcionar', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(335, 2, 'List', 'Lista', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(336, 2, 'Form', 'Formulario', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(337, 2, 'Administration', 'Administración', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(338, 2, 'text', 'texto', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(339, 2, 'Index state', 'Índice de estado', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(340, 2, 'Index maintenance', 'Mantenimiento del índice', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(341, 2, 'Search completed in %1% ms', 'Búsqueda efectuada en %1% ms', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(342, 2, 'No results', 'No hay resultados', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(343, 2, 'Edit template code', 'Modificar el código de plantilla', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(344, 2, 'Edit component code', 'Código de componente Edit', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(345, 2, 'Drag & Drop a media here', 'Arastre y suelte un medio aquí', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(346, 2, 'Add a link to the text title', 'Añadir un vínculo al título del texto', NULL, '2011-06-05 16:32:29', '2011-06-05 16:32:29'),
(347, 2, 'Add a link to the text media', 'Añadir un enlace al medio del texto', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(348, 2, 'Drag & Drop a page or enter an url', 'Arrastrar y suelte una página o introducir una dirección url', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(349, 2, 'Drag & drop a page here from the PAGES panel, or write an url', 'Arrastre y suelte una página aquí desde el panel de páginas, o escribir una dirección url', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(350, 2, 'Title position', 'Posición del título', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(351, 2, 'Outside', 'Exterior', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(352, 2, 'Inside', 'Interior', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(353, 2, 'JPG quality', 'Calidad JPG', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(354, 2, 'Dimensions', 'Dimensiones', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(355, 2, 'Leave empty to use default quality', 'Dejar vacío para usar calidad por defecto', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(356, 2, 'Separator', 'Separador', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(357, 2, 'Include current page', 'Incluir la página actual', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(358, 2, 'This CSS class is applied to the body tag', 'Esta clase CSS se aplica a la etiqueta body', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(359, 2, 'Revision history of %1%', 'Historia de revisiones de %1%', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(360, 2, 'Revision history', 'Historia de revisiones', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(361, 2, 'Field', 'Campo', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(362, 2, 'Difference', 'Diferencia', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(363, 2, 'No revision for %1% with culture "%2%"', 'No hay revisión para %1% con la cultura "%2%"', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(364, 2, 'Body', 'Cuerpo', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(365, 2, 'Others', 'Otros', NULL, '2011-06-05 16:32:30', '2011-06-05 16:32:30'),
(366, 2, 'Description', 'Descripción', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(367, 2, 'Vars', 'Vars', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(368, 2, 'From email', 'De correo electrónico', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(369, 2, 'To email', 'Para correo electrónico', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(370, 2, 'Updating project', 'Actualizando el proyecto', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(371, 2, 'Cache clearing', 'Vaciar la caché', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(372, 2, 'Page synchronization', 'Sincronización de páginas', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(373, 2, 'SEO synchronization', 'Sincronización de SEO', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(374, 2, 'Interface regeneration', 'Regeneración de la interfaz', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(375, 2, 'Something went wrong when updating project', 'Algo salió mal al actualizar el proyecto', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(376, 2, 'Send reports', 'Enviar informes', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(377, 2, 'Receive reports', 'Recibir los informes', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(378, 2, 'Open Google Analytics page', 'Abrir página de Google Analytics', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(379, 2, 'Open Google Webmaster Tools page', 'Abrir página de Herramientas para webmasters de Google', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(380, 2, 'Revert to revision %1%', 'Revertir a la revisión %1%', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(381, 2, '%1% has been reverted to version %2%', ' %1% se ha revuelto a la versión %2%', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(382, 2, 'To enable it, provide a google analytics access', 'Para habilitarlo debe tener acceso a Google Analytics', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(383, 2, 'This chart is currently not available', 'Este gráfico no está disponible', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(384, 2, 'Generate %1% random %2%', 'Generar %1% aleatorios %2%', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(385, 2, 'Options', 'Opciones', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:31'),
(386, 2, 'Drag & Drop an image here', 'Arrastre y suelte una imagen aquí', NULL, '2011-06-05 16:32:31', '2011-06-05 16:32:32'),
(387, 2, '"%value%" is not a valid link.', '"%value%" no es un enlace válido.', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(388, 2, '"%value%" is not a valid directory name.', '"%value%" no es un directorio válido.', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(389, 2, 'History', 'Historial', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(390, 2, 'Set up a cron to update the search index', 'Configurar cron para actualizar los índices de búsqueda', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(391, 2, 'Set up a cron to update the sitemap', 'Configurar cron para actualizar el mapa del sitio', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(392, 2, 'Most UNIX and GNU/Linux systems allows for task planning through a mechanism known as cron. The cron checks a configuration file (a crontab) for commands to run at a certain time.', 'La mayoría de sistemas UNIX y GNU/Linux permiten planificar tareas mediante un mecanismo llamado cron. Cron examina un fichero de configuración (una crontab) en busca de comandos a ejecutar cada cierto tiempo.', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(393, 2, 'For more information on the crontab configuration file format, type man 5 crontab in a terminal.', 'Para más información sobre la configuración de crontab, escriba "man 5 contab" en una terminal', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(394, 2, 'Open %1% and add the line:', 'Abrir %1% y adicionar la línea', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(395, 2, 'Cut', 'Cortar', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(396, 2, 'Copy', 'Copiar', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(397, 2, 'Paste', 'Pegar', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(398, 2, 'Drag & drop links here from the left PAGE panel', 'Arrastre y suelte los enlaces desde el panel izquierdo "Página"', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(399, 2, 'Click to edit, drag to sort', 'Clic para editar, arrastrar para ordenar', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(400, 2, 'Code generation', 'Generación de código', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(401, 2, '%user% is browsing this page, you should not modify it now.', '%user% está navegando en está página, no debería modificarla en este instante.', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(402, 2, 'or create an external link', 'o cree un enlance externo', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(403, 2, 'Back to the parent folder', 'Atrás (carpeta padre)', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(404, 2, 'Website', 'Sitio Web', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(405, 2, 'Message', 'Mensaje', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(406, 2, 'Signin', 'Iniciar sesión', NULL, '2011-06-05 16:32:32', '2011-06-05 16:32:32'),
(407, 2, 'Signout', 'Cerrar sesión', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(408, 2, 'Back to admin', 'Atrás (administración)', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(409, 2, 'Back to site', 'Atrás (sitio)', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(410, 2, 'Invalid mime type (%mime_type%).', '', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(411, 2, 'Download', 'Descargar', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(412, 2, 'Move to', 'Mover a', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(413, 2, '[1] And one more...|(1,+Inf] And %1% more...', '[1] Y uno más ...|[1,+Inf] y %1% más...', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(414, 2, 'Go to admin', 'Ir a la administración', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(415, 2, 'Search for a widget', 'Buscar componente (widget)', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(416, 2, 'Sort by %field%', 'Ordenar por %field%', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(417, 2, 'contextual', 'Contextual', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(418, 2, 'Accepts pages and urls', 'Aceptar páginas y URLs', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(419, 2, 'Accepts medias and urls', 'Aceptar medias y URLs', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(420, 2, 'Accepts pages, medias and urls', 'Aceptar paginas, medias y URLs', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(421, 2, 'Drag pages around to move and sort them.', 'Arrastre las páginas para ordenarlas', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(422, 2, 'Manage metas', 'Administrar metas', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(423, 2, 'Reorder pages', 'Reordenar páginas', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(424, 2, 'Manage pages', 'Administrar páginas', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(425, 2, 'Click to edit', 'Clic para editar', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(426, 2, 'Click any value in the table to modify it.', 'Clic en cualquier valor de la tabla para modificarlo', NULL, '2011-06-05 16:32:33', '2011-06-05 16:32:33'),
(427, 2, 'Choose columns to display in the table.', 'Selecciona una columna para mostrar en la tabla', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(428, 2, 'Groups & Permissions', 'Grupos y Permisos', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(429, 2, 'File %file% does not exist', 'El fichero %file% no existe', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(430, 2, 'File %file% can not be deleted because a record needs it', 'El fichero %file% no puede ser eliminado porque es usado por un registro', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(431, 2, 'Add widgets', 'Adicionar contenidos (Widgets)', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(432, 2, 'Back to %1%', 'Atrás hasta %1%', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(433, 2, 'Revision %number%', 'Revisión %number%', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(434, 2, 'My account', 'Mi cuenta', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(435, 2, 'The two passwords must be the same.', 'Las dos contraseñas deben coincidir', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(436, 2, 'Connected', 'Conectado', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(437, 2, 'If you set a href, a link will be inserted into the title', 'Si escribe un HREF se inserta un vínculo dentro del título', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(438, 2, 'Template', 'Plantillas', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(439, 2, 'Areas', 'Áreas', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(440, 2, 'Nb pages', 'Páginas Nb', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(441, 2, 'Manage XML sitemap', 'Administrar Mapa del Sitio (XML)', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(442, 2, 'Pages', 'Páginas', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(443, 2, 'Automatic SEO', 'SEO Automático', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(444, 2, 'Not connected', 'No conectado', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(445, 2, 'Keywords', 'Palabras clave', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(446, 2, 'Secure', 'Seguro', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(447, 2, 'Indexable', 'Indexable', NULL, '2011-06-05 16:32:34', '2011-06-05 16:32:34'),
(448, 2, 'Select columns', 'Seleccionar columnas', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(449, 2, 'Successfully loremized', 'Aleatorizado satisfactoriamente', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(450, 2, 'This file is writable', 'Este fichero se puede escribir', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(451, 2, 'Loading', 'Cargando', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(452, 2, 'Image', 'Imagen', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(453, 2, 'Results', 'Resultados', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(454, 2, 'Desc', 'Desc', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(455, 2, 'Publication', 'Publicación', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(456, 2, 'Layout', 'Decorador', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(457, 2, 'Parent', 'Padre', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(458, 2, 'Slug', 'Slug', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(459, 2, 'Controllers', 'Controlador', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(460, 2, 'Templates', 'Plantilla', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(461, 2, 'Stylesheets', 'Estilos', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(462, 2, 'Presentation', 'Presentación', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(463, 2, 'Send', 'Enviar', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(464, 2, 'No module to manage.', 'No hay módulos para administrar', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(465, 2, 'Variables you can use here:', 'Variables que pueden ser usadas aquí', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(466, 2, '1. Edit meta generation rules', '1. Editar reglas de generación de metas', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35');
INSERT INTO dm_trans_unit (id, dm_catalogue_id, source, target, meta, created_at, updated_at) VALUES
(467, 2, 'Preview modifications without applying changes to the site', 'Previsualizar modificaciones sin aplicar los cambios en el sitio', NULL, '2011-06-05 16:32:35', '2011-06-05 16:32:35'),
(468, 2, 'Save modifications and apply changes to the site', 'Salvar modificaciones y aplicar los cambios en el sitio', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(469, 2, '2. Preview generated metas', 'Previsualizar METAS generados', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(470, 2, 'The page url, without domain name. Must be unique. If the slug does not start with a ''/'', the parent slug is added.', 'La dirección de la página (URL) sin el nombre de dominio. Debe ser única. Si el slug no comienza con ''/'', se añade el slug del padre.', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(471, 2, 'The page title, without prefix nor suffix. Should be unique.', 'El título de la página, sin prefijos o sufijos. Debe ser único.', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(472, 2, 'The page name, used by links to this page. Should be unique.', 'El nombre de la pagina, usado en los enlaces a la misma. Debe ser único.', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(473, 2, 'Assign first header here or let it blank to let the designer choose it. Should be unique.', 'Asigne la cabecera principal aquí o déjelo en blanco para dejar al diseñador escoger. Debe ser único.', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(474, 2, 'The page description meta, frequently displayed in search engines result page.', 'Las etiquetas meta de descripción de la página, mostradas frecuentemente en los resultados de búsqueda.', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(475, 2, 'Provides additional meta informations to the page. Also used by Diem internal search engine.', 'Proporciona información META adicional para la página. Usado también por Diem para el buscador interno.', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(476, 2, 'Requests per minute', 'Peticiones por minuto', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(477, 2, 'Errors per minute', 'Errores por minuto', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(478, 2, 'Latency in ms', 'Latencia en milisegundos(ms)', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(479, 2, 'Memory used in %', 'Memoria usada en porcetaje(%)', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(480, 2, 'Pages per month', 'Páginas por mes', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(481, 2, 'Visitors per month', 'Visitantes por mes', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(482, 2, 'Visitors', 'Visitantes', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(483, 2, 'Bounce rate', 'Calificación', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(484, 2, 'No results for "%1%"', 'No hay resultados para "%1%"', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:36'),
(485, 2, 'Results %1% to %2% of %3%', 'Resultados %1% a %2% de %3%', NULL, '2011-06-05 16:32:36', '2011-06-05 16:32:37'),
(486, 2, 'Items', 'Elementos', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(487, 2, 'Save this %1% to access to the gallery', 'Guarde este %1% para acceder a la galería', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(488, 2, 'UL CSS class', 'Clase CSS UL', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(489, 2, 'LI CSS class', 'Clase CSS LI', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(490, 2, 'Ascendant', 'Ascendente', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(491, 2, 'Descendant', 'Descendente', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(492, 2, 'Version', 'Versión', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(493, 2, 'The widget can not be rendered because its type does not exist anymore.', 'Este componente (widget) no puede ser representado porque no existe', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(494, 2, 'Link to this page:', 'Enlace a esta página', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(495, 2, 'Sentence', 'Frase', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(496, 2, 'The item was created successfully.', 'El elemento fue creado correctamente.', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(497, 2, 'The item was created successfully. You can add another one below.', 'El elemento fue creado correctamente. Puede agregar otro abajo.', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(498, 2, 'Heading 2', 'Encabezado 2', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(499, 2, 'Heading 3', 'Encabezado 3', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(500, 2, 'Heading 4', 'Encabezado 4', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(501, 2, 'Heading 5', 'Encabezado 5', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(502, 2, 'Bold', 'Negrita', NULL, '2011-06-05 16:32:37', '2011-06-05 16:32:37'),
(503, 2, 'Italic', 'Cursiva', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(504, 2, 'Bulleted List', 'Lista de puntos', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(505, 2, 'Numeric List', 'Lista numerada', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(506, 2, 'Enlarge the editor', 'Ampliar el editor', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(507, 2, 'Permission', 'Permiso', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(508, 2, 'Nb sent mails', 'Núm. de correos enviados', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(509, 2, 'Advanced search', 'Búsqueda avanzada', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(510, 2, 'Today', 'Hoy', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(511, 2, 'Past %number% days', 'Últimos %number% días ', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(512, 2, 'This month', 'Este mes', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(513, 2, 'This year', 'Este año', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(514, 2, 'Pages per week', 'Páginas por semana', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(515, 2, 'Visitors per week', 'Visitantes a la semana', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(516, 2, 'Show extended options', 'Mostrar opciones extendidas', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38'),
(517, 2, 'Hide extended options', 'Ocultar opciones extendidas', NULL, '2011-06-05 16:32:38', '2011-06-05 16:32:38');

--
-- Volcar la base de datos para la tabla 'dm_user'
--

INSERT INTO dm_user (username, email, algorithm, salt, password, is_active, is_super_admin, last_login, forgot_password_code, id, titulo, nombre, apellidos, foto_id, penalizado, solapin, departamento, created_at, updated_at) VALUES
('admin', 'admin@bibliocnic.com', 'sha1', '20145d874137f0b47716601f40edba0e', '86e615de7ddd0b9f01f522cfcc70e7d9b336478e', 1, 1, '2011-06-20 16:07:32', NULL, 1, NULL, '', '', NULL, 0, NULL, NULL, '2011-06-05 16:30:32', '2011-06-05 16:30:32'),
('corey', 'pablo.reyes@cnic.edu.cu', 'sha1', 'd9e8c6471b33f15fe80e25514136897f', '7283bc02eef5be6b92e1ca7191280bacedd524fa', 1, 0, '2011-06-20 13:37:43', NULL, 2, '12', 'Pablo', 'Reyes Naranjo', 2, 0, '0512', 'ICT', '2011-06-20 11:18:15', '2011-06-20 11:18:15');

--
-- Volcar la base de datos para la tabla 'dm_user_group'
--

INSERT INTO dm_user_group (dm_user_id, dm_group_id) VALUES
(2, 7);

--
-- Volcar la base de datos para la tabla 'dm_user_permission'
--

INSERT INTO dm_user_permission (dm_user_id, dm_permission_id) VALUES
(2, 58),
(2, 59);

--
-- Volcar la base de datos para la tabla 'dm_widget'
--

INSERT INTO dm_widget (id, dm_zone_id, module, action, css_class, position, updated_at) VALUES
(1, 1, 'dmWidgetContent', 'title', NULL, -1, '2011-06-05 16:30:40'),
(2, 2, 'dmUser', 'signin', NULL, -2, '2011-06-05 16:30:42'),
(3, 8, 'dmWidgetNavigation', 'menu', '', 1, '2011-06-05 18:35:32'),
(4, 10, 'dmWidgetContent', 'title', '', 1, '2011-06-05 22:31:46'),
(5, 10, 'dmWidgetContent', 'text', '', 2, '2011-06-05 22:36:27'),
(6, 10, 'busqueda', 'form', '', 3, '2011-06-05 22:38:30'),
(7, 3, 'main', 'header', '', 1, '2011-06-06 10:56:46'),
(8, 12, 'dmUser', 'signin', '', 1, '2011-06-20 15:20:10'),
(9, 6, 'dmUser', 'signin', '', 1, '2011-06-20 15:22:20');

--
-- Volcar la base de datos para la tabla 'dm_widget_translation'
--

INSERT INTO dm_widget_translation (id, value, lang) VALUES
(1, '{"text":"Page not found","tag":"h1"}', 'es'),
(2, '[]', 'es'),
(3, '{"ulClass":"","liClass":"","menuClass":"","items":[{"link":"page:1","text":"INICIO","secure":0,"nofollow":0,"depth":"0"},{"link":"page:5","text":"B\\u00fasqueda Especializada","secure":0,"nofollow":0,"depth":"0"}]}', 'es'),
(4, '{"text":"B\\u00fasqueda especializada","tag":"h1","href":""}', 'es'),
(5, '{"title":"","text":"Llene el formulario con los datos necesarios para la b\\u00fasqueda.\\nRecuerde que cuanto m\\u00e1s datos ofrezca, m\\u00e1s pertinente ser\\u00e1 la b\\u00fasqueda.","mediaId":null,"titleLink":"","mediaLink":"","titlePosition":"outside","width":"","height":"","legend":"","method":"center","background":"FFFFFF","quality":null}', 'es'),
(6, '[]', 'es'),
(7, '[]', 'es'),
(8, '[]', 'es'),
(9, '[]', 'es');

--
-- Volcar la base de datos para la tabla 'dm_zone'
--

INSERT INTO dm_zone (id, dm_area_id, css_class, width, position) VALUES
(1, 1, NULL, NULL, -1),
(2, 2, NULL, NULL, -2),
(3, 3, NULL, NULL, 2),
(4, 4, NULL, NULL, -4),
(5, 5, NULL, NULL, -5),
(6, 6, NULL, NULL, -6),
(7, 7, NULL, NULL, -7),
(8, 3, NULL, NULL, 1),
(9, 8, NULL, NULL, -8),
(10, 9, NULL, NULL, -9),
(11, 10, NULL, NULL, -10),
(12, 11, NULL, NULL, -11);

--
-- Volcar la base de datos para la tabla 'documento_legal_version'
--


--
-- Volcar la base de datos para la tabla 'migration_version'
--


--
-- Volcar la base de datos para la tabla 'monografia_version'
--


--
-- Volcar la base de datos para la tabla 'patente_version'
--


--
-- Volcar la base de datos para la tabla 'pregunta'
--


--
-- Volcar la base de datos para la tabla 'presentacion_version'
--


--
-- Volcar la base de datos para la tabla 'prestamo'
--


--
-- Volcar la base de datos para la tabla 'recurso'
--


--
-- Volcar la base de datos para la tabla 'recurso_autor'
--


--
-- Volcar la base de datos para la tabla 'recurso_tematica'
--


--
-- Volcar la base de datos para la tabla 'recurso_version'
--


--
-- Volcar la base de datos para la tabla 'respuesta'
--


--
-- Volcar la base de datos para la tabla 'respuestab'
--


--
-- Volcar la base de datos para la tabla 'solicitud_prestamo'
--


--
-- Volcar la base de datos para la tabla 'solicitud_prorroga'
--


--
-- Volcar la base de datos para la tabla 'tematica'
--


--
-- Volcar la base de datos para la tabla 'tesis_version'
--

SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
