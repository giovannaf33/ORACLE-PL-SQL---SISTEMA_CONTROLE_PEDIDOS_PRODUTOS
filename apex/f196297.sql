prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.1'
,p_default_workspace_id=>8455554701779824329
,p_default_application_id=>196297
,p_default_id_offset=>0
,p_default_owner=>'WKSP_GIODEV'
);
end;
/
 
prompt APPLICATION 196297 - SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS
--
-- Application Export:
--   Application:     196297
--   Name:            SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS
--   Date and Time:   01:35 Thursday November 19, 2026
--   Exported By:     GIOVANNASOUSAK@ICLOUD.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     28
--       Items:                   45
--       Validations:              1
--       Processes:               22
--       Regions:                 66
--       Buttons:                 30
--       Dynamic Actions:          8
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  8
--         Breadcrumbs:            1
--           Entries:              7
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.2.1
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_GIODEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SISTEMA-DE-CONTROLE-DE-PRODUTOS-E-PEDIDOS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E9F77DA8F3A35B15C36EC42F38E4A791C6DBB0EDD889608317E56F9BA990FEC8'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(8555838456881830730)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(8555849435883830749)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261031002728Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461341233756
,p_version_scn=>'15851461550730'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>8556285068709831255
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_navigation_list_id=>wwv_flow_imp.id(8555839677311830732)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(8555841382526830738)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_196297_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>8556285068709831255
,p_name=>'App 196297 Push Notifications Credentials'
,p_static_id=>'app-196297-push-notifications-credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201555Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555833484678830723)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555834032771830724)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555834392278830724)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555834682418830725)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555834979615830725)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555835213076830726)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555835568906830726)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555835885833830727)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555836161416830727)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555836795670830727)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555837036677830728)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555837336628830728)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555837676770830729)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8555837913481830729)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8556266273533831225)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(8555844604920830744)
,p_version_scn=>'SH256:sUh16YlciRG9klSoZtcZTfvvJD2zYdjKQV9D3IfGUbU'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556267205789831226)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556266762907831225)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8556262992557831221)
,p_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_version_scn=>'SH256:YHgkfo-ih9pxHHGLxqP0cHF8ck23_hWgwdn-JBp8Nts'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556264402105831222)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556265946574831224)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_static_id=>'automations-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556263437744831221)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556264941989831223)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_static_id=>'page-performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556265441345831223)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_static_id=>'page-views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556263991544831222)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_static_id=>'top-users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8556261275145831219)
,p_name=>'Application Configuration'
,p_static_id=>'application-configuration'
,p_required_patch=>wwv_flow_imp.id(8555845098465830744)
,p_version_scn=>'SH256:01z6ukJ0-1Z6Us8cQjg4pfcVIVbOCpaLhLFvRKRxDnA'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556261721784831219)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(8555845098465830744)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8556267550303831226)
,p_name=>'Feedback'
,p_static_id=>'feedback'
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_version_scn=>'SH256:s15aWBuZhABHOwKzpyU4guxD38vSpSxZDCaivjs8UQE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556268028447831227)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_static_id=>'user-feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8555841382526830738)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:ENfiZ0d6Nh4i08WFwpUfYcw1twtXcOUNWso2u-lTLsE'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556256291017831210)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_static_id=>'about'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(8555845353973830744)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556257866659831212)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_static_id=>'about-page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(8556256291017831210)
,p_required_patch=>wwv_flow_imp.id(8555845353973830744)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556255465026831208)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556258175308831212)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556255951769831210)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_static_id=>'feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556257399380831211)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(8556256291017831210)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556258772395831213)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_static_id=>'list_item-2'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8556258175308831212)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556256877924831211)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_static_id=>'page-help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(8556256291017831210)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(8555845353973830744)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556284704531831254)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_static_id=>'settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(8556258175308831212)
,p_required_patch=>wwv_flow_imp.id(8556278123451831245)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556259215520831214)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8556258175308831212)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8555839677311830732)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:xCsqW-WGKR7C-W7jA3TSUyRnQIfuXs9li1BIwVtbHxw'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002051Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556260025146831215)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(8555849305769830749)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8560881293979567651)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'CADASTRAR PRODUTOS'
,p_static_id=>'cadastrar-produtos'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20261027203551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8558158735173866789)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'CONSULTAR PRODUTOS'
,p_static_id=>'consultar-produtos'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20261027202150Z')
,p_updated_on=>wwv_flow_imp.dz('20261027202150Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8555866239684830769)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8597104659739726110)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'REALIZAR PEDIDO'
,p_static_id=>'realizar-pedido'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20261027224503Z')
,p_updated_on=>wwv_flow_imp.dz('20261027224503Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9590017951502729589)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'REGISTRAR ENTRADA'
,p_static_id=>'registrar-entrada'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
,p_created_on=>wwv_flow_imp.dz('20261031000251Z')
,p_updated_on=>wwv_flow_imp.dz('20261031000251Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9597406401003220881)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('REGISTRAR SA\00CDDA')
,p_static_id=>unistr('registrar-sa\00EDda')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
,p_created_on=>wwv_flow_imp.dz('20261031002051Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002051Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8556262021681831220)
,p_name=>'User Interface'
,p_static_id=>'user-interface'
,p_required_patch=>wwv_flow_imp.id(8555845428752830744)
,p_version_scn=>'SH256:R-pmMXiW-l0wY_x2obP86PPDqqaX6VkO83PAveuG_Yg'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556262515542831220)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_static_id=>'theme-style-selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(8555845428752830744)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8556281798495831250)
,p_name=>'User Settings'
,p_static_id=>'user-settings'
,p_required_patch=>wwv_flow_imp.id(8556278123451831245)
,p_version_scn=>'SH256:OQGnb1n7GAjW62UabHIgG9OuJxcFn8bMLZXt-Fu7xMI'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8556282293535831250)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(8556277888720831245)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D7B7054E775FF7D777725EDAEDE021910205E028190CD430F0CB4D8496AEC2476534F78B5D3605BD8296DA675A7C9A48F3F823B6D673A53';
wwv_flow_imp.g_varchar2_table(2) := 'B771334D630FE02453C70832E36762A7756C6CD7D812A280C160CB1248A0077AA1F76B1FF7F69CBBBCCD4ADABD77EFEE5E7D8BCEEEDD7BBFC739BFF3DBF39DEFFBEE2E0AE44322600001492003E0C9AA8024906481210424810CC1272B4B02490E184240';
wwv_flow_imp.g_varchar2_table(3) := '12C8107CB2B22490E4802104A22690A15E6565DB202009641B57C6C71049A0F8E06E9B5E25816CE3CAF8182209141FDC6DD3AB24906D5C191F432481E283BB6D7AB59E405380EEFFB6EC9F59B7E3F9E2A35BF76E38BA7DDF43B5DBF63F5ABB75DF5FD56C';
wwv_flow_imp.g_varchar2_table(4) := 'DFB7673A08DBCA36B3ED8C0163C1984C013ACB8BC495401A34C1E0D4ECD8BBB376DBDE1FD76CDB5B57BB7DAF2FE0D03A554D3DAB29E27F35E015086D3F6DFBFE8B007E301D846D05D9CCB633068C0563C2D8E8186DDBFB1F8C1963C7185ACE9A1B3AB494';
wwv_flow_imp.g_varchar2_table(5) := '40FC29E24F1545917FACDDB6EF7F8E6EDBD7CBE0084DFC1442EC1642AC05840BF2110601E1D23112E24F1933C68E31642C8958FF50BB75EF8347B6ECCD0D533926A72D23107F52820AD6D3A7EAFB02F85B087C054264C5C4AAE9D42863485812B1FE0E02';
wwv_flow_imp.g_varchar2_table(6) := 'DF77280A61AC11C4D680107302D53DF1ACAB76FBBEC7E993F2A926B497C9ACF524F22F160808B14108EDB5A3DBF69FA5285FC5D8C7A29B1BDB8C29814E6CF95941B0DFF12175F81C84584AAFF2CF0A0404965108DA1B1C701EE1B421965DC68C401F6DD9';
wwv_flow_imp.g_varchar2_table(7) := 'BF625C09D45068A5BC269626C8B6C32140242A0B28EA87B53B9E2B0957C6E8F99810A86ECBBE8D8AA21E1102054615BC5E5F1E458580108BA12A1FD4EED8BF29AAFA9354329D401C795445FB0D0D5932419E047CCB2E73A2ADAABF8E4524329540750F3E';
wwv_flow_imp.g_varchar2_table(8) := 'EB118A7688C8E3B10C1CD9D1D41010C2034DA9661F4DADC2D44A994A20D5EBF8310D5B2BA6D6B52C653D02A2847D6466BFA61188A6EA8F006227E423C111103B43BE32474D53087464CB41372D14FEAB392AC956628D80A6694F9B3594994220876370A7';
wwv_flow_imp.g_varchar2_table(9) := '80C889B5E1B27D73101042E406BDCE6F99D19A610251E4A1C54F3C89C47D48CD6E8780A6FD39FBEE769722396798404777ECDB0C5AF98CA4535936FE0850145AAEFBCEA02A8609A4A942461F834E885775337C678840E71F793E8DC6AFDF8B1700B25F63';
wwv_flow_imp.g_varchar2_table(10) := '08B0EF780264A4154304EA1E0BAC0384A136201F714440282E477FA511050C395FD314229091EE65DD782360D487C608044D1228DE0C30D83FCDC40CF9306A02697BF62842888D06F54FE8EAD3423981F810E8D867857C8358DEB400D9C6460A883B8E6F';
wwv_flow_imp.g_varchar2_table(11) := '7F7E41B426461D815404A3EE345A6565BDD820E017C1E2685B8E9A40424536E4C3160818F165D4045285B09C40B40908BF1AC068601CA3FE380BE9C0BAD88141467C1935818406CB08C4C409A841748DF6A1A9BF1DCD03ED681A8CAF340F5CD275E91EE9';
wwv_flow_imp.g_varchar2_table(12) := '03EBC63A22491F8A86B468558F9E40164520764C400BA29BC87379AC1FAA03C89A3713794B66C7459CA9A1EF3D3A529D08D2A7A89B7462DD381AB1AED13A229EF534C48140AAA6665B65F458C08741DF0868D914AB76DC83CADD5FC3BA38497A7EC8EC82';
wwv_flow_imp.g_varchar2_table(13) := '92855854B11C8A5341DFF8107A460710D4D4102449F64CCB3121A3A2D0DB40048A9EB591EAE90BFAC93941CC2A5D88A2CD6B90BB6816320B66C4459C29A108E4CDCDC4C2CAE528FED21A38D35CE8F70DA263F8328234D4466A5FBCCB1B09065113089A18';
wwv_flow_imp.g_varchar2_table(14) := 'B7CA701E1A28CC1261F2E8134F6398551D4FD28FE27460CE8A05584891C84143DB807F189D23BD3A8958E749AADBE272F4048A8BF9222EBD4ED4299368DE5D4BB0F8EE9570A43829120DE9244AF6C47A229B6FBC966404BA51F5C439E6C47A6EE9222C5E';
wwv_flow_imp.g_varchar2_table(15) := '5702973B1503BE61F450729D8CC359A4A84A02458A5898F24CA2C2B54B51F43B77428586BEF1413D12D97D2893040A4388684E2B0ECA894A1660F997D7EA91A89F72A2F6E11E048201D895489240D13065823A8A83484489F5FCD5453A89067C43FA02E8';
wwv_flow_imp.g_varchar2_table(16) := 'D472A2091A4ED04B924031704C68385B86A20DA5100E45CF8978153D59D789268248126822740C5C63121550625D7CEF1A38F475A250240AAAC9B9D8180E0A49A070C8843B7F6D258157A6C2150A9D5728FA14D0E2E7E2BB6976969AA227D6EDC3DDFA3A';
wwv_flow_imp.g_varchar2_table(17) := '51A844F23F4B0245E84377B657AF31D2370C3510D48F277A521C9413D1B6C7828A6270541A098C62D83F365195A4BA260914A1BB0ACA8AF4BCA6A3A1059D0DAD18E91FC2E8C0C88412F0053063C16C78B2D311D4348C04C66C332B93048A904073D62CC1';
wwv_flow_imp.g_varchar2_table(18) := '5C22D1D8C030CEBC5587BA4387716C0AF2F1EB4730DC33A0F716A44DD7C90740BD68C23F490245E8A2940C374ABFB911F32A96C1E54945D01F80DF373E05F1D1F262849D4DBD78DC4A4A024508BD1002997367A0FC89FBB1E97BDFC486EF3C84BBFFECC1';
wwv_flow_imp.g_varchar2_table(19) := '29C91DCBE747D85BE21797048AC2474208A478D290B3681666AD5E041ED6A6229E1999B0DB43B19B41D21E6B119004B2166FDBF52609643B975A6B902490B578DBAE37DB1168B0FD32CEBD7B0A8DEF9CB44CCEBF771AFD2DDDD0D449567726B9CCECE2BD';
wwv_flow_imp.g_varchar2_table(20) := 'B241DF086D7B0C61707C04FE18DF0AC27D1A11DB11E8E42F0EA3E63F7F85DA67DFB04C3EA2FEEADFAC43C0E79FC417E119C4F70BF1B74F9A07DBD132D409DE336B19EEC4C5C10EFD8B947C7D92C6E372D976049A7DD7427DA5B860ED12582573CB8B90B7';
wwv_flow_imp.g_varchar2_table(21) := 'A4000A6D9E46E34526C708ED8FB50F75633CE8475A8607B9F3F2F5D771D58F8E91CB180BD242246D8344D37E2CEBD88E400B3695A2E24FBEAA7F778CBF3F66893CF1000AD7F377C41C13FB8AD68F6E2D70953C9DA3BD18537DF0E665A2F8DED5287DA012';
wwv_flow_imp.g_varchar2_table(22) := '259B2BC05F1F1A27F230C16EAD9B08EF6D472087CB89D474B7A59242FDF1373284B876AFC7947DCBC3D6A52B1186C9C3C4C9A7689696E9455EE11D987BE7227D0BC4AF06E8559B72BB561554ACEA48F6730B02341C3179DA86BBE0A361CA93E545E9FD95';
wwv_flow_imp.g_varchar2_table(23) := 'C89A9507A184DCC249F968DFB05E5140E8AF89F614D234D1B4B2B93E3C6CF13D41AD434C9E806E6D2AE53D0EA7137C8D4FF02D20ADA71AD17AE63C14A120D5E1220A09BE945022091407778C53A2DC3DD6A7471E77BA072CBD2D5DA87FEF24862F0FD26C';
wwv_flow_imp.g_varchar2_table(24) := '2E80B64FCEA3E183D308FA024877B9E1258983AAE1BBBC724512E80A1056BEF090C5B32A574A0A9695AFC4C2D2A548A5CDD9AEA6769C78F97D341E398D0612DFE838BCCE34E4BB73E0541C104246202BFD94507D713EA305AFDF509F9E958192F5AB9091';
wwv_flow_imp.g_varchar2_table(25) := '93859CFC3C2C58B104AE5417867B07D154F729FC449E749707B3BD33E0723813923C0CB08C408C428C85EF9DEEAE6F45CFB976BDA7F4EC0C14962C417A4EA6FE9ED78FF2E6E423377F86FE5E402083C833CB93AB93473F99A04F4A82EA15B55ADD9FB6A0';
wwv_flow_imp.g_varchar2_table(26) := 'F6B937C0ABC3B1925387DEC77057FF9474E4C8D375F6228EFFD7DB1868EB419AD7AD0F59D9F9B91042E86D040341B49FBB88DECE1EFD7DBACB8D99EE6C7DD8D24F24F093ED0874F6F51A34BE7D12E7693F2C56F2E9EBB5E869084593C97C3B40C9F1C7D5';
wwv_flow_imp.g_varchar2_table(27) := 'EFA3A7B14D27CFB2B295C89A9103E5DA545D454F5B075A1B9AE11B1B8787731E4F0E521C34EBBA42B0C9FA88E775DB11A8F0EE15C8989D0BEFCCAC98497EF13C64CEC99DD06F9AAAA2FF6217DEF9A783E86E6885DBEB4171F99DC8CCCBBE1679542AD3D5';
wwv_flow_imp.g_varchar2_table(28) := 'D281FA6367883C3E4A98DD989B3E3369C8C300D88E40F3372CC7D7FFED093CF4A3DD31934D7FB315D985F98CDF6D85739E8ED31768287D13A37D437AAEB3F8AE627833D3AF950F0602E8686AC3F953F5A025E650CEE3CD8583665BD70A25C141E4044A02';
wwv_flow_imp.g_varchar2_table(29) := 'A3E2A9A2A66AE8A1E1EDE383EFE991C793E1A519D66264CFCC8150AEE73C9D17DAD174A601BE719FBECE3393A6EA2EC5194FD5A3EA5B12282AD8C257EA6BEA40CDB36FE032CDB8DC94301797971279F2883C21A879D8EA686E43F399465A30F4EB91E70E';
wwv_flow_imp.g_varchar2_table(30) := '9A6DA524F0543DBCB540C8AA894AC86B534240A37CA6AFB91335CFBD81C1F61EB83D6E2C5D5B0A2F4DD9AF461E264F4F5B279ACF36C2EFF353C29C8AAB537521C494FA49B4429240267844A505C22E9AAA1FF9F757D04B11289D48B378F57264E486D679';
wwv_flow_imp.g_varchar2_table(31) := 'B88B204DD53B9A5AD170FC2C6D4FF89149EB3C73BC33E1A4C8C3D7935524810C7A8EA34AE7990B38F9E2BBB4CE73194C9E05254537CDB6829C3037B752E43987803F8034472AF292649D673278248126436892EB0317BB71E28577D0DDD80E578A0B4B28';
wwv_flow_imp.g_varchar2_table(32) := 'F264D322E1D5751E9D60172FE9E4F153C2CCCD71B29CE2488E751ED67722B11D81F876088D6642A688A685C54EA39CE732CDB63E78E6E5D0B095958E928D6BF4BD2D2142F90C93A79BC943097390863087EBCA2C2B74396CDBC974C1420259034BF7672D';
wwv_flow_imp.g_varchar2_table(33) := '68F8ED717CFE963169A0FAEDC7CFDD56695EE7E9A49C8713E681361EB63251489BA1B7AEF37411793E3F7196967934CC2B5F8A7CF9DDF8DBE2995027EB7F5D87BA7DFF8D63FB8D491DD53FFEF3DF7EC1368E3C4C9E132F1C461FAD34F30AF3C2D222F0B0';
wwv_flow_imp.g_varchar2_table(34) := '2584D0CB73B469A3BDADF3A73F0707B182B545B86BC7267872BCFA753B3DD92E0215DDB706C55FABC0D207CA0C09B7B1EA0FEFF982AF7B699675E217EFE0F2F976F02221DFCF73E3DE160F5B5D2D97686FEB0238E799575E843BB7FF2EBC776403C27670';
wwv_flow_imp.g_varchar2_table(35) := 'DB6F1D287F652156FFF197B076E7570C09B75150B114571F1AE5554C9EF79F7E09BDE73BE049F762D9DA129AAA67DDB4B7D5DDDA199AAAD36C6BCE5D8BF56F88A4E76787CA8402D4D5266DF16ABF8F440CDCC2E4E96968A3BDAD3730D233A027CAFADE56';
wwv_flow_imp.g_varchar2_table(36) := '76C6B5DE823455BF74AE05E73EFE0C8ACB81F9EB57A06CD77D70B953AF95B1E38124D014BCCA3F6757FFE6317DB6C5C35661C96264CEB81255A83E93A7A3B95D9FAA0788487329E759F9F07AD8F1F780C8DC9BFE24816E82E3F66F065A7BD05DDFA20F43';
wwv_flow_imp.g_varchar2_table(37) := '7CFF72F6CC5CDCB8CED3411BA317687B22E0F763EE9A2558FDAD2F237D166D9E8A5BC62CCEA86FDF45D29E4D0602C5155C3518A49CE792FE0399593372F59BC1840811434F9869AADECCEB3C54AE60F51294EDDA0C774EBA4EB62F287EA5DE17CE27F109';
wwv_flow_imp.g_varchar2_table(38) := '49A0499CE71B1CC5C59AD03D3B79B36782EF5FE69C88EF1EE49CA791721E5EBC9CBFAE18658F6F465A96FDA6EA1341240934113A74ADEF42177A9B3BE0A46D0A9EAE8F8F8CA1E3421BCE9DAAA79CA7111AAD48CFAB5C86928737E89187AA4CAB3F49A049';
wwv_flow_imp.g_varchar2_table(39) := 'DC7DE97413ED9E07F44DD0FA639FE0E4BBB5E09916AFF568B4C6BC60630956FDD1BDC898937BFB616B92F693FDB224D0241EEC387D21548212E0C1BE7E04684F2B25C38D79654BB1FE2FBEA10F5B61739E50CDEBCFE1B7D6AE9749B22349A0491C363E30';
wwv_flow_imp.g_varchar2_table(40) := '426B3929C89E9F8F79E5CBB0F20FD6E39EBFDE86F54F7E43FF1D2287F3CA06E924ED842EDB8F41924021CF867D2EA75955E83786BE8AB2AAFBB08208945D184AA6C3560A7741CEC2C2219398E7CDD06AF6AA45FA7F6B90BB70963EC312576E8C37A36D3B';
wwv_flow_imp.g_varchar2_table(41) := 'B42123901DBC18471BA2269010A2378E7ACBAE4D4440114A5FB4CD29D156A4C5B3A83B8DB64F592F360818F165F404129004823D1E9A015F464D2045D32C27107D5292D663BAEEB49694880618F165D404D21458472011DABCE47D29DD1148BE077F77CC';
wwv_flow_imp.g_varchar2_table(42) := '3732AE2B2EC0FFF4C3847832E2CBA809A4AAD64520A750A010893A3E69C2A58F9BC0CE8829F0F317460000042849444154F22637AEA91A7AEA5BF53D35416DA7389C10828FE84D02FC19F165D404722A4ECB2290DB998A542505C3DD03F8F047AFE2ED3D';
wwv_flow_imp.g_varchar2_table(43) := '2FE0FD7FFE6592C821BCFDD40BF8E0995730D4D90FFE4E5886CB9300B4B9AE82115F464DA0BC543469C0D8753562732484D07F2F27DF938334470A7C4363E8FABC152DC71B92441AD1F9590BC6FB4790221C98E5C9D3ED890D5A91B7CA3E645F465E3354';
wwv_flow_imp.g_varchar2_table(44) := '4309BD44FEBCF0A78F8E5110AE89BC66E4358410E02834373D1F33DDD9C849CD483A61BDE767CC8237C59D50C317FB907D19B9574235A226105727F61EE6572B440801FEB5D2DCB44C70344A2EC905EBCDFA5B8155247D18F5A1210229502D23D0555084';
wwv_flow_imp.g_varchar2_table(45) := '1094502B492622A1A20E6E7818F5A12102CD48737E440C8E791E7483BDF2D04404D877EC43234D1A22108F9D02DA2B4614B057DDE4B2867DC73E34A2B5210271C7AAA6FD905FA5241F0266F8CE3081D6553FCEC39825B3B1E47351E26AAC0135EC3BA31A';
wwv_flow_imp.g_varchar2_table(46) := '1A26102B407B29320A3110492466F9CC14020D752CFEA506AD2589F09BD6AAD29E6E2BFBCC0C104C21D0BD87EF0D289AF21D3314926DC41E01A169BBD96766F4640A815891F2EAC75E81A63DC3C752121801F251C5C15DAF99A5A16904628594ACE0F7A0';
wwv_flow_imp.g_varchar2_table(47) := 'E1281F4B8908018B0A6B87751F99D89BA9042A7BEEDB7E9750B612892CDBA937110B5B3745396A872AB4EDEC23330D359540ACD8EA038F3609A17D89A6894DFC5E4AFC1120F23443139BD7BDF87887D9DA984E2056B0FCC0AEE318779641C35BFC5E4AFC';
wwv_flow_imp.g_varchar2_table(48) := '10A00FF2DB1877ADADACAE3A190B2D62422056B4F2A59D3DE56AC6FD64C04FF8BD943820A0E1E98A60C67DEC8B58F51E3302B1C2E2D0D660E581AADD44A2DD148D7C7C4E4AEC11A0759E5140DD5E515DF55DF6412C7B8C2981AE2A4E24FA498AEA5C44D3';
wwv_flow_imp.g_varchar2_table(49) := 'FC1FD0B98B24F22F060850AED322803DA9AAB3A8E2C0E3D531E8E20B4D5A4220EE75D5A19DAD15D5BBFEBE3C98B19022D2C3F429F90D45253AE4AB52A24580700CD207F33522CFD72B82990BCA0F543DC55847DB5EA4F52C23D055C538A452447A8992BA';
wwv_flow_imp.g_varchar2_table(50) := 'FB1535900355DB44003C09683F23429DD2342D70B5AC7CBD19011D1B0D84117E2E34FC2584B8276B1439F4C17CA8F2C0AE5F31B637D788FD3BCB0974A3496587BEDD4FABA2EF1100CF541CD8F5088DD9775656EF723983225F11CA72A16A1B2924FF3E34';
wwv_flow_imp.g_varchar2_table(51) := 'F118547C57039E9A0EC2B6B2CD6C3B63C05830268C4D08A3AA9DE5D5553FAC78F1B1778B5FAD1ABC1153AB8FE34AA070C6AE39F45857D98B8F7E5A7E70D707E507AA5EADA87EECF98A83554F53E4DA331D846D659BD9F672C280B1604CC2E115CFF30949';
wwv_flow_imp.g_varchar2_table(52) := 'A0780222FB8E0C0149A0C8F092A56F414012E81640E4DBC81090048A0C2FFB9436C912492093809CAECD48024D57CF9B64B7249049404ED7662481A6ABE74DB25B12C82420A76B339240D3D5F326D92D09641290D3A7999B2D9504BA190FF92E42042481';
wwv_flow_imp.g_varchar2_table(53) := '22044C16BF1981FF070000FFFF427E939500000006494441540300E9C3E3C689A88A6F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8555843343412830742)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027233754Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D69701CC775FE7A17BBC02E16F7B58B1BE00580142F51244549A4CB926D25BE24D34EE2A32A716C27F10FC74E39A9D895AA54F94FAAF2CB';
wwv_flow_imp.g_varchar2_table(2) := '55CEA1FCF091B862971DA712DBF22547B2255112AD83A2085E204002200912C48D3DB0BB3876917EB3BBB30B108B73014CCF3C147AA767A6A7E7BDEFBDAFA78FE91EDB1B7FF4AD790E8C81557DC006FE63042C8C0013C0C2C667D50126007B81A5116002';
wwv_flow_imp.g_varchar2_table(3) := '58DAFCACBC8509C0C66704B80AC43E607104F809607107B0BAFA4C00AB7B80C5F5670258DC01ACAE3E13C08A1EC03AEB083001742838624504980056B43AEBAC23C004D0A1E0881511600258D1EAACB38E001340878223564060B18E4C80C588F0BEA510';
wwv_flow_imp.g_varchar2_table(4) := '600258CADCACEC620498008B11E17D4B21C004B094B959D9C50830011623C2FB9642C04204B0945D59D95522C0045825509CCC9C083001CC6957D66A95083001560914273327024C0073DA95B55A25024C805502A57432163E2B024C80ACD0F0092B20C0';
wwv_flow_imp.g_varchar2_table(5) := '04B0829559C7AC083001B242C327AC800013C00A56661DB322C004C80A0D9F3003022BE9C0045809213E6F6A049800A6362F2BB712024C809510E2F3A6468009606AF3B2722B21C0045809213E6F6A044C4C0053DB8D95CB11024C801C01C9D9A8890013';
wwv_flow_imp.g_varchar2_table(6) := '404DBBB1D439428009902320391B35116002A86937963A4708284F80F9F979CCCCCD623CEAC7E0D428EE04473060C270273482E1A9710467A6109B8F2F6F7E3EBB6A049426C05C3C86B1881FFDC1410C852730391D4260760A4113868074FCB1E9000624';
wwv_flow_imp.g_varchar2_table(7) := '116E05EE213C1B05917FD596E6844B22A02401C8F0B3F1390C87C731129DB45C89188DCDE0766818448AB87C022E69593EB82A049424405C5601C6A301F865A998D232AFC0097779113C356528F29A23082152EA41D86DC8CB774088C431C260706A0C01';
wwv_flow_imp.g_varchar2_table(8) := 'F9D4A338F86F5D08284980882C0127A2415DE1C2AA12EC79DF8338F667BF8F535F3E8D537FFD5153048724754A494F45315A8FB6A3B2D98B3CA7433B3C8F79DC934FC1C96808B138B70B3450D6F8A3240142B2E427E393AEF91E17763D7E08ED4F1D87F7';
wwv_flow_imp.g_varchar2_table(9) := '600B8A1B2B51545F618A60B3A5CD437A361EDE8D3DEF3A04EFEE06D81D79A4BEA4C03C862313F26918621200D04059C34F1AE1355CB4DD49C373D3BA08C57595F01D6A85C395AF1F334D2459DDD1F591FB85F249D072AC1DBEF6A60524188D4CCA4E80A0';
wwv_flow_imp.g_varchar2_table(10) := '24414C4FCE91951150920073B2F727A59AABD48DC2CA92D4AE25B6EEB222B41EEB40FD03AD10B6449B80BA46A95D4455C358063E960064034A2A4900EA054AE92CF2ECB224B4A7762DB3759514A2F9481BEAF7EDD0759E9B8F61623A289F0421F924E036';
wwv_flow_imp.g_varchar2_table(11) := '810ECC3211DB32E7D4392512A5A03A02E746D2826237763EFA009A1FDCA3674824A027815FF60EC5B861ACE3922D620E0264D3CE02C79DEE7CEC7A6CBF24419BAE2D9180C64726E5D380BB487558968C9888004BEA67898336590DDC71622F1A0FECD4F5';
wwv_flow_imp.g_varchar2_table(12) := '25C71F910DE3C07498478C7554EE8F3001EEC744C9233448D6FAF05E34C9AE52220429415DC5F7C263F04F4F810841C7382C448009B0100FA5F768AC801AC6751DCDB263203D4E302449404F0226C1FDE66502DC8F89D247A861DC2C478C7D6D4DA0A702';
wwv_flow_imp.g_varchar2_table(13) := '291397C365A92701378C0991746002A4B1304DCC5DEA41CBD136D475B420F3B5091A319E940D632641DAD44C803416EAC696909C06CB1A0FEF82B7AD11367B629C84AA406351BF1C27A011631E2720D89800848249039180468CEB649B402C1A314E3C09';
wwv_flow_imp.g_varchar2_table(14) := 'F8B5092680499D3FA5964B8E18EF78641F9A0EEE4A1D028D13D06059E2B5096B3F099800BA5B983742BD432DC73B168C131009E8B509BFC5478C9900E6F5FB059A39DD05D875723F9A0EEDD68F130968C43831B3CC9A4F022680EE0EE68FE4E53B41D5A1';
wwv_flow_imp.g_varchar2_table(15) := 'FA7DADBAB2D430A6A9A5A199889223C6BA22EB8C3001D609DC565C969AF442F79A8FCD233E3B47D10D059A659622812D2FD93B24C709880433B159CB918009B02177DADC8B3DD5A5FA0D66C2514C8D0572E2A005456EB41CEB406D7B135224989D8F6993';
wwv_flow_imp.g_varchar2_table(16) := 'ECE7F53B5A23C20430B09DBD0F34E9D285FD21DCEBBE8D68208CF9F8C6DDD45DE641DDDE16145514EBF708CD46647CE379CB4C94F9670218D8548D8F76E8B3DD62337318BC7A133DAF7462A0F30686AEDDC670F7C086427822249F00897786088669AE02';
wwv_flow_imp.g_varchar2_table(17) := '110C0A0693165A1E6F19F63EF530A81B93AC321399D64870EDA577D0F59BB7D1F5DB8D859E572F22303C41596B615EB605E2165B6748E127806633D3FF343CDCA691C05D5EA4EB1A938DE1E8540491607843211A0A83F2D233961193962552B3A5FFD527';
wwv_flow_imp.g_varchar2_table(18) := '80C92DE670E7A3F5F10378E833EF43D3F176E4CB06ECD2A6E4A3EB41407D02AC476B85AE11428056BDF31E6CC591CFBE17EFF9DAA7F0C4DF7D1CA7FEEA2338F9A5A7371C1A1FDA83D47B420AC1923351D52780C8191686CD4808019BDD06A7C7058FAF0C';
wwv_flow_imp.g_varchar2_table(19) := '957B1BE03DB213BE87766D38786ACB2184FA6E8075FE994373B14EED15BC4C080161B38108918B2084501085DC896C0E02E40E0F357262297386001320675072462A22C00450D16A2C73CE106002E40C4ACE48450498002A5A8D65CE19024C809C41C919';
wwv_flow_imp.g_varchar2_table(20) := '6D0502B9BE071320D788727E4A21C00450CA5C2C6CAE11509F00F42E1085752073FBD5AB78F60BFF86FFFED3AF2B1B48FE5B672EAF43FBE425DADB9FEB03702E16C3F0D404FAFC77D13D711B3D32D0275CE9D3B573F11832BFE390BC9BE136EA13600390';
wwv_flow_imp.g_varchar2_table(21) := '5EF8C14B088D4C62363CAD6C20F9CF7DF7850DA0B0F64BC9B1833353B8E11FC0D8B41FF4D9D6D87C4C5B6E656A2EAA7DB3EC66F01E2273D3862781A509E02AF34024178C5ABB1B18E30A92DF5DEAD9326162F138683D21FA6037AD399AEDC634BF782034';
wwv_flow_imp.g_varchar2_table(22) := 'AC91205B1A231C578800B9876BDFE947517B6827AA3B1A950D7552FE039F7857EEC1592247727E5A4768249A9E44932260A9AF022532D0E41D2112EF17C5E6E3A045798DFCCD32F50940585358C2602B1DAA39D08C937F731A8FFFFD27940D8F49F9BD87';
wwv_flow_imp.g_varchar2_table(23) := 'D2CB9CACA4F37DE735675D194072625A4E71343A89D4AC312104AA5A6AD1F1C4113C78FA140E3F7D12BB1F3B80A29A320891C893A6590667C2F7DDD62807D42780519034B11C73B2413B391D022DA748A57A4A55EF9E46EC3E750015CD5E6DCE82D39D0F';
wwv_flow_imp.g_varchar2_table(24) := '5F4793F6B92647C6676B1393ED5357196BCB0430963D0C270D95FC54EDA16514E764433725202DB8BBF3C43E1496A75795A07342085434D5C0E172D2AE1666E21B5FCF48CB68137E98009B00AA59B28CC9066FAAE49FCD70E2FAFD3BB0F3B1FD7067CC53';
wwv_flow_imp.g_varchar2_table(25) := '5EA03375AD66F6ACD2FE8204C6D9610218C716D925D98633E4FC54F2D3F704324BFEE607F760C7F1BDA0C5B5B28935767308B3D119FDB4D3EED0E3468B30018C661103C843FDFCE4FCD4DB13933D3999221514BA16546F32CF513C383C89818B37301389';
wwv_flow_imp.g_varchar2_table(26) := 'D2AE16DC8E026D6BC41F268011ADB2CD3291F30F45C6F5DE9E4C71BA5E7E078397FA320FE9F1D0A85F5BAB68FCF63090AC02E5D9EC28CB2FD2D3182DC204309A45B6599E80ECED190C8FA5A5908D5A9A7B2C44A25B934E5C7EE11CEE76F6221E4B2CA94E';
wwv_flow_imp.g_varchar2_table(27) := '4F8CD058003D673AA1393F25924140C0E7AE841042EE19F39F09604CBB6C9B54F4BD80D4CD69F27D556D35DA8FEE477583174484D4B98BBF7E03B7CEF76875FDE0D004AEBFD289E11B7752A7611736780BCBE171BAF463468CD88C2814CBB4FD0890B357';
wwv_flow_imp.g_varchar2_table(28) := 'FAAAD0D8B103E572DBD0D68AAABA1AD0F19474DD672EE0C6D9CBB8FEDA250CF50CA40EC361CB43B5BB0CC5CE42FDD87A239B7D1D1360B31156317F5965A9F04AE7974EEF2E4A38B1CBE346FD9E16544832D09381D49A9755A09BE7AE61A4F72EED6A819C';
wwv_flow_imp.g_varchar2_table(29) := 'BFA2A044737E9B30BE7B195F420DD6157E920DAE1552F1E94508CC84A288FAA730BFA8A7A7AABE064DB2E477972C7CC98EC8D0D4B153AB0E2DCA4ADB75DA1CA874952AE3FC24B43908409A70581302D3C108FACF5CC6BDCE3E647E6FC0DB548B66E9E4AE';
wwv_flow_imp.g_varchar2_table(30) := '64C9BF38537A1254CA760116B56BB592DF558222A71B769B3A6EA58EA48B2D91B9BFC81899A7387E3F0234FFE1D62B5770ED176F685F9D49A5F036D5A1415673A8AF3F756CF1363419C4DDDEDB7A37279DD79C5F567B8A1CD2F915A8F690CCA9A03E01A8';
wwv_flow_imp.g_varchar2_table(31) := 'FA4321A5D11AB683E7AEE385AF7D1FBFFCDB6F1B36FCEA2BDFC1AB5FFF31C67BD2F5EC35A8785F52FAD00639FFA5FF7D15A111BF7EDEDB5C87C6F656E4CB812EFDE0A20839FF8D0B5D981C1ED7CFD8851D55AE5294E417C26E53CF9D0C2CB18EF1A6453A';
wwv_flow_imp.g_varchar2_table(32) := '7FF40A86BB6E63F2E6B061C344FF10EEBC7D1DBD2F5FDC300EF1B918EEFCAE1B177EF8B2F6A9A5548654F2D7EF6E86D3950F21967E9C860321F45FEE4160DC8FF9E4BB3D0242F6F6946AD51E151ABC297D33B79626C05C580ED7278D99098AD1E2F1580C';
wwv_flow_imp.g_varchar2_table(33) := 'B1E8EC86C51A38DB85D79E7916D353F42DB04476350D3EADE4A7BABD10227170D12F7D9FACF762372686E40059065EBEC20A94CA515E559D9FD4B434010E7EF2719435D5A0B0AAC4B0C1535D0ADF03ADD8F1F841B2D7BA426C6616FDBFBD88D7FEF567E9';
wwv_flow_imp.g_varchar2_table(34) := 'D25B5657AAEABD9AF3E7BB0B96CC974AFA2959E7EFBD9474FE642A72F8BAC22A59ED59D84B943CADD4467D0250A145611DB0D71DDB8527FFF1D3F8D03F7DDEB0E183DFF80B9CFAEAC750D956BF0E0D81B9E80C6E9EB98237FFFDD70B9CBFB236D1CF5F20';
wwv_flow_imp.g_varchar2_table(35) := 'FBF797CA987A8622C129DCEAEA4D94FCC94479C28E1A1AE49275FEE421A537EA134069F83757F899A928FA64C97FFE7BBFC5DC74A20A256C0234C2DBD4BE03EEE2C22505D04AFE4010B7AEF662F4EEB09E867A7B6ADCE5B29F5FFD923FA5141320858491';
wwv_flow_imp.g_varchar2_table(36) := 'B63990653A1046FF8B9770F9276731436D1D99A7100295B58941AE6CFDFC3219A8CE7FF3CA0D8CDC19A25D2DD0205795ECEDF1385DB0C97CB48326F8610298C0888B5598490E725D7BEE2D442643FA696D845776752EEBFCB2B7879C7FFCDEA87E1D397F';
wwv_flow_imp.g_varchar2_table(37) := '4541313CB29F9FEAFFFA0913449800263062A60A54EDE97FF932BA7EF12642C393FA296F532DE83586E59C3F3419406F6737C6EE8DE8D7396D79A8D446780B61B799CF5DCCA7916E3AEB456884F7B6ECEAECFAE59B088F0574007CAB18E19DF207D177A9';
wwv_flow_imp.g_varchar2_table(38) := '071323B2AB33792535782BE4082F95FC769B395DC59C5A250D68A50D8DF0F69FB98CCE1F9DC1D4687A84D7D75C8F0659ED597684774296FCB29F7F7264427FC5819CBFDA558662D9DB63B799D74DCCAB9995BC5FEA7AF3E54B38FFBDDF686F77CA5DEDDF';
wwv_flow_imp.g_varchar2_table(39) := '4B257F5B0B961BE10DC97EFE1B9DD712AF372407B9841CE1F5526F8F74FEADAEF36B826FE10F13600BC1DEAC5B0DBCD685D7BFF92BD05320758F9AC65A3448E7A7412E2144EAF0826D3830857E59ED098CA5DB0A94A0B6B01245D2F98558FA3A4A6396C0';
wwv_flow_imp.g_varchar2_table(40) := '0450D89234C2DBFBFC3B38F38D1FEB5A08595DA96EF06923BCD9DEEAA47EFE90ACF6D0BB3D13C363FAB514A975576AD51E8A5B21300114B532F5F6F4FEA6136FFDC7F3BA0636BB5DF6F357AFE8FCF47AC3CDAB37303698EEED4965E27214A4A296D83201';
wwv_flow_imp.g_varchar2_table(41) := '143433CDE4EA7FE9122EFDCFAB88CD26961DA4929FA62B36B6B5825E6C5B4A2D2AF9E9F586DBD7FA309ED1CFBF545AAB1C63022866E9E940047D2F76E2CA4FCF2E78A59926AC6BD318B3BCDE406A525767FFE5EB0B5E6FA0E3560E06228095CDB03ADD69';
wwv_flow_imp.g_varchar2_table(42) := 'FE6EDF4B9DDA205764724ABF881ABCE4FCD94A7E4A1892835C7D177B16547B4AEBAB50DEEC3A1C26CA0000093849444154053D3D288D15833908B0CE196163D7EEE0DCB77F8DDF3DF3F32D0F17BEFF22267AD3EFDAACE47C33A108FA655767F7736F233C';
wwv_flow_imp.g_varchar2_table(43) := '1ED4937B9333B9B235782961901ABCB2B76772243D93ABA4AE126D1F388AAADD7510E6EFEC41B63FF509B04EE727403A7FF8327A5E78077D2F5DDCF2D0FDDC396D4E2EC9B152988DCCA0EFC54BB8FAB337160E72B5D483EAFCCB3BBF1FBD17BA3091318D';
wwv_flow_imp.g_varchar2_table(44) := 'D1535D8A073EFA281A8EEF415EC632E62BC961C6F3EA13600356A111D3F9586279BF0D64B3AE4BA9CF3EB324CF9609BDC67CEBD52B893ABF3F5DEDF149E7AFDBD5041AE4CA766D480E72F55FBA8E807C02A4D2E47B5C38F00727E13BBC037905CED461CB';
wwv_flow_imp.g_varchar2_table(45) := '6E2D4D80BD1F3A81FCC2EDE9F62BAA2AC5AE270EAFE878F44AF3B9EF3EBFA0C1EB95D59ED4EA0D422C5D7FA17EFE3EEDF50659ED498EF03AA4C31FFDDCEFA1FEE136E4E51B77C9F21541C961025B0EF3DA9EACC8FE14D671F79627F6E323DFFA123EFE83';
wwv_flow_imp.g_varchar2_table(46) := 'AF6C7978FF37FE1C0D27DA12522FF14B13D87B9FBF8037BFF31CE86941498410A86EF42D3BC24B5D9DE4FCBDB2C19B59E727E77FF48B4FA1FED86ED8EC1966977902EB0410EAFF6520A1B0321B680718516BAAF6F4BE7001AF7FF397BA783639C2ABCDE1';
wwv_flow_imp.g_varchar2_table(47) := '95FDFC056E977E3C3342CE4FAF37D03446FFA82CF99327E96316C73FFF017837F231BD645E66DBA84F00B3397F7416BDCFBF8373FFF982EE6BE4FC957535A0757BB2757592F3539DFFD6A2115E8F6CF01EFDDC93A83DB253CF6F4144AB1E990CC4050A2E';
wwv_flow_imp.g_varchar2_table(48) := 'BFA33E01E8E94D61793D95384BA3BA77DEECC695675F477C36A6C9BC1AE7A784F47AC3AD2B37160C725157E7C18FBF4B96FC3B16567BE88254E02A500A09DE6E3702937DC3E8F9BFF38864F4F668257F5B4BD6D71B48E6A940485BBD617C283D8D9106B9';
wwv_flow_imp.g_varchar2_table(49) := 'DA3F780C3E59EDB13BEC948CC31208A8FF04584229150FC5A66771EBEC554CDC9483635AB504A8F056421BE1CDB2502DE9A935783BAFDD37C2BBF7E987517F74B7E1BB3A4987ED0CE6208009AAB0FE81518C5EBFAB2F5F925F908FA6BD3BB1DC2057885E';
wwv_flow_imp.g_varchar2_table(50) := '6FA011DE8C41AEA29A326D84D77768071CEEFC957D4B239B09005C59D325539883004BAAA6CE416AC08EF5DC85FF4EBA0AE36B6D80BB38FBFA3BC1F149F4A5FAF993AA5283F781D38F6A23BCAB727EBA4E6B3F693FB467B9600E02286EBF994044567D86';
wwv_flow_imp.g_varchar2_table(51) := '4193DAC903ED79765437F920C4D28A05C7FDDAEA0D93A313945C0BD4D579F853EF96835C7BD658ED59FA1E5AA616F83107011437142D5F32796B58D7A2A4B20C790E87BE9F19A1DE1E7AA59956694E7D8A540881873EFB247C0FEE84DD9197999CE32B20';
wwv_flow_imp.g_varchar2_table(52) := 'C0045801A0CD3E3D1F8F2338388EC9DBE9D95915BE6AD86C899299AA471462B1983689A5E7FC552C1EE13DF9E5D3B86F8477B3053749FEDB48009320B84135A293618C5D1FD45F7770381D282A2F86ACFF606E760ED3E12868D27AFFC51E74BF7509C189';
wwv_flow_imp.g_varchar2_table(53) := 'F49227EEF2229CF8C287B20F7281FF56428009B012429B789E4A765AC06AB4E78E7E973C4900727ABFACDFDFEB1D40CFDB5770F9B5F3DA67896667D20BDCD220D7A14FBE1BDE83ADFAB51C593B024C80B56396B32BE855ECC0DD31F807D2D59F48288C1B';
wwv_flow_imp.g_varchar2_table(54) := '17AEE1CA6BEFA0EF728F56DD89CD254685E9C6CEC202D41EDC81239F7E0FEA8EEEC28217DB2801873521600E0228DA8D4DBD3EA35D0388255F7B48592E1A8E80EAFCA97DAA0EB9CA3C68786837F67DE4111C92BD3D551D0DB969F0F238800EB39A11459D';
wwv_flow_imp.g_varchar2_table(55) := '9FC0A6A54D46BAD3D51F3A96191C2E27BC7B9BD0F1FE63A0EACEFE3F3C855DEF3D84A2DA7258791E6F26461B8DDB369AC1B65F9FE82CD97631D6244032713C16C77430FDBD2E3A9C97EF444D7B23F67FF4319CF8CB0FE3F09FBC071D4F3F8CC647DA515C';
wwv_flow_imp.g_varchar2_table(56) := '5F015BAEBB3935FCB41FBABDE582FA0450F8095050528896C7F6C255E24179530DF63D75028F7CF1C338F299F761D7930FC277B015250D957014E6CB5A90D81CE7D4F0D37E36277F83E7AA3E0136C92FB6C26E4E4F01F69E7E04EFFD873FC6C9AF7E0CED';
wwv_flow_imp.g_varchar2_table(57) := '4F1D974EDF82A2BA72D03921B64039ED1E5B709FAD00741DF7509F00A4B4A2F6134280DED9715714C155EAD15E61A0BABD108A2A44B6502C9883008A81CEE21A07012680716C6109498CA62413C068166179B6140126C096C2CD37331A024C00A35984E5';
wwv_flow_imp.g_varchar2_table(58) := 'D9520498005B0A37DFCC680830018C661196674B11D842026CA95E7C3346605508300156051327322B028A12203D523A3F17D7575133AB91364BAFF9F83CE84B93F1787A89F834B29B755763E5AB24011C36BB8E62D41FD63E1A41B3ABF4831C591502D3';
wwv_flow_imp.g_varchar2_table(59) := 'FE2944C64380362700B0092183922E81F5FE29A96D415EBEAE2FCDA6BAFBF60D6D491126810ECBB211C2692E3283C10B7D18BB7E574FEBB6E7437240DFB742444902143BDDB08B84E8D3A108AE3D770E5D3F7D1D83E77B4133AC46AF0DC050C148F2740D';
wwv_flow_imp.g_varchar2_table(60) := '60E8623FBA7FF516AEFCE42C42A38949F60202C5F91EF92BACE0F7BA8E092FD277D588B81C0528CD2FD28D159908E2F24FCFE277FFF22C5E7FE6E778E3995F70C88201E173F69F9F45E77F9D4160701CF4472E5FEC2C44A1C345BB960A4A12C0265DBF4C';
wwv_flow_imp.g_varchar2_table(61) := '12A0441ACD967C12D02251D35351048626E0BF37CE210B06844F341096D5FEC4241821B12C7214A2BCA0587BAA0A21980046474008813CD910AE7495A24A06775E8134A3B50CB7511B09895881DD894A5709AADCA5C8B73B2084D868B6CA5D6F534EE2A4';
wwv_flow_imp.g_varchar2_table(62) := 'C042244850E2F4A0C65D8EDAC20AB92DD30851552089C1014BE2200B8C6A57197C122FAF0CF42475D8F22CE9FCE44ACA1280841742C06EB3A120CF8922591DA276013DCACB5DC5E090050359D5292B2802D5F95DB237CD2E9FA4426C5EC90F83FF294D80';
wwv_flow_imp.g_varchar2_table(63) := '4C6C85105A1F36B50938D856C44208EB3A3D32FE4C43800C9D38CA08AC1A0126C0AAA1E284664480096046ABB24EAB468009B06AA838A11911D8440298112ED6C96C083001CC6651D6674D083001D6041727361B024C00B35994F55913024C8035C1C589';
wwv_flow_imp.g_varchar2_table(64) := 'CD86001360332CCA792A830013401953B1A09B810013603350E53C95418009A08CA958D0CD408009B019A8729ECA20C00450C6546A08AA9A944C00D52CC6F2E6140126404EE1E4CC54438009A09AC558DE9C22C004C8299C9C996A08300154B318CB9B53';
wwv_flow_imp.g_varchar2_table(65) := '047248809CCAC59931025B820013604B60E69B1815012680512DC3726D09024C802D81996F625404980046B50CCBB525083001720133E7A12C024C00654DC782E7020126402E50E43C94458009A0ACE958F05C20C004C8058A9C87B208300194359D3104';
wwv_flow_imp.g_varchar2_table(66) := '575D8AFF070000FFFF5B3961FE00000006494441540300568948F144FA1C980000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8555843652920830742)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027233755Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D07745CD779E7FFF74D41676F00088028ECBD019444856AA16CAFDC94B0D8A1294AA4A24D74CEAE77E51C27DEB52D59F2AE4E12E7D89BC8';
wwv_flow_imp.g_varchar2_table(2) := '9B44A424C76B89146D59B6ACD8B2EC2555681B04C522F65E4074B0019801A6BEDC6F8069681C0C665E99F70DE7F29579EFDEEFFBDD7BFFB7BC0205FC61024CC0B20458002C9BF5EC3813005800B81430010B136001B070E6B3EBD62640DEB30010050E4C';
wwv_flow_imp.g_varchar2_table(3) := 'C0A20458002C9AF1EC361320022C0044810313B0280116008B663CBB6D6D0261EF5900C22478C9042C488005C08299CE2E33813001168030095E32010B126001B060A6B3CBD62610EB3D0B402C0D5E67021623C00260B10C677799402C011680581ABCCE';
wwv_flow_imp.g_varchar2_table(4) := '042C468005C06219CEEE5A9B407FEF5900FA13E16D266021022C0016CA6C769509F427C002D09F086F33010B116001B05066B3ABD6263098F72C008351E17D4CC0220458002C92D1EC2613188C000BC06054781F13B0080116008B6434BB696D024379CF';
wwv_flow_imp.g_varchar2_table(5) := '02301419DECF042C408005C00299CC2E3281A1085852000E6C78A572FF86171FDEBF61FB33B51BB6BF299787F66FDCD12083CA6187151834509EF7E5FD33FB6559A8FBE24B154355924CDE6F0901D8BFEEE525B2627F5D66FA7B72D91514817310CA4F20';
wwv_flow_imp.g_varchar2_table(6) := 'C43784109F95CB2532938B64E0AF350814519EF7E5FD3720CB821A54CF53D99061EFFEF5DBFF67ED861D8B3305C5707E64A4001C5BF7BAB36EFD8B9F9215FEFB3243AFC0163C24217C4B66FA1FC9659E0CFC65028311A0B2B1068A7856081CAEDDB0FD82';
wwv_flow_imp.g_varchar2_table(7) := '2C43DFDDBF71FBFD54A6063BC1ECFB324A003E5AB7BD4A66D6FF72299D175445795B56F8BF90195422037F99C088090821CA6519FAAF80F80D95A9DA8D3BBE4D650C19F431BD001C5BF7427EDDC6ED8FC9CCF92060136701F13742A018FC610229244065';
wwv_flow_imp.g_varchar2_table(8) := '4A005FA33256BB71FBFBFB37EED842652F8549E81295A905A076E38ECFBB6D597F502176C8CC59AD0B414ED4720404C4DDD2E9975D4AD6DEDAF52F3D28D70DFBBD9D61A61480BA8D2FDE23C767BF17C01B80980FFE30011D080821960B45FD1595452A93';
wwv_flow_imp.g_varchar2_table(9) := '3A9830EA244D2500C764777FFF861DAFA950F648F8AB46ED3D47C004524080CA2295C9FD1BB7FF90CA680AA2D42C0AD308C0FE8D2FDDE9B6651F81C046CDE870424C604404C426B79275F8A3752F2E1FD1693A1E6C0A01A8DDB0633354758FE464C99B35';
wwv_flow_imp.g_varchar2_table(10) := 'A4DFFC350B01212A038AF2BB5099D5D9E6449237B400A850859CE8FBB610F801049C8938C4C73001DD09C8B24A65560E099ED5DD96DB18A0DCE677DD7EA61B2FEA36ECF8B19CE8FB9A6E4670C24C60540404DD51F8032ACBA38A268D271B5200F6DCB3C7';
wwv_flow_imp.g_varchar2_table(11) := 'EE563AE956DD87D3E83B47CD04D24E40F60436BB6D9DBBA94CA73DB1241230A400E44EBBF06FB2CBFF5012FEF0294CC088043E9337EDFCCB5A1A96685A861380BA8D2F3D2FBBFD5F48D4013E8E09988380D84465DB68B61A4A00E498FFCB72E2EFAB4683';
wwv_flow_imp.g_varchar2_table(12) := 'C4F630815410A0B24D653C1571A52A0EC30840DDFAED77A942FD4EAA1CE378988011090481BF3FB06E87616E5B378400D02CA94A97FA200C618F110B0EDB94190484802DA0A82F5399479A3E2389D61015AEDBD645CFEA578EC4703E960998958010A22A';
wwv_flow_imp.g_varchar2_table(13) := '54E60DE080EE0250B761FB82A0AA7EC5002CD80426A019012AF307D6BDBC50B30487484877019063A2E784800DFC6102162240653EA00474BF53505701A0077C04BD93CF4219CFAE328130012AFBA99E100CC79DE852570100D4BF4BD4503E8E09642281';
wwv_flow_imp.g_varchar2_table(14) := 'A00DCFE9E9976E0250BB7EFBE7A4E377CAC05F266065026BF67F61FB27F402A09B0008457C592FA7395D26602802AAF86BBDECD145000E7E717B1954FC915E4E73BA4CC05004645DA85DF762F9686D4AE67C5D04C017148F42C87FC958CCE730814C2340';
wwv_flow_imp.g_varchar2_table(15) := '75C1A63CA2875B9A0B800A55C8C9BF2D7A38CB693201C31250D5CDBD75435B0B351780DA0DDB6B044499B66E726A4CC0D8048410E55437B4B6527301B0091BCDFE6BED27A7C7040C4F400825E9AB01C93AA7B90004555573279385C3E731018D09685E37';
wwv_flow_imp.g_varchar2_table(16) := '341580831B7714096091C650393926600A024245F58175FF32564B633515003FB01642FED3D2434E8B09988580AC1BAA62FBA496E66A2A00AAAAF25FF3D13277392DD3110802F760849FD11CAEA900408825A33196CF6502194F40E33AA29900A84F3FAD';
wwv_flow_imp.g_varchar2_table(17) := '40E5F17FC617607670540484AA2E0CD59551C592F8C99A0940DDF1B24542202771D3F8482660410242E47E74BA6C96569E6B2600AA2DC8E37FAD7295D331350135184878A83C5A47351300A8AA664E8D160A9FCF0474252014CDEA8AA29DA36286766971';
wwv_flow_imp.g_varchar2_table(18) := '4A4CC0BC04826A708E56D66B280098A695539C0E13303701ED1A4BED0440A82C00E62E956CBD560412AC2BA930473B015031311506731C4C20D309086082563E6A26004208BB564E713A4CC0DC0484432BFB351300AD1CD2221D555521276AE00FFAE1F2';
wwv_flow_imp.g_varchar2_table(19) := '76A3C3EB428727F34397D70D8FDF1BF29D1868C19AD3482F01168011F2A582DF232B4163573B2E7634A1C1D58626573B9ADC991F1AA49F573A5B50DFD112123D6231427C7C788A08A42A1A168011900CCA96FFA6A713573A9BD1E973CB1E40000135285B';
wwv_flow_imp.g_varchar2_table(20) := '44EA11582104E1570370073C689462D0ECBA0E7FC03F02827CA8D108B0002498234159D1AF7777A0D97D1D41A8099E95D987DDF476A2A1AB0D9E8017DC1B30675EB30024906F54B83B3C6E5CF7DC8A3B3A7742018A975661D6FD4B3167EDF28C0B134AA7';
wwv_flow_imp.g_varchar2_table(21) := '20F63366CA386417E4C4EE0AF5065A5C37A408F85804E2C89863830520817CF20783A1316F40F602C2874F9B5786355F5D87554F3E84C55FBA170BFFEC9E8C0B93679720F63373F562AC58772F4A1657C5EE86CBDF8D16D9338AE51377006FA494402A23';
wwv_flow_imp.g_varchar2_table(22) := '63014880A62FE80385F0A1638B2761D117D6606CE96438F3B361CF76C29EE5C8B820ECB6B0CBA1A543FA9837610C66AF5982F29573A1C4FCEEF6F7E06A676B684E807A4CA113F83FC313600148208BA865F3C7B4FE63A64FC298E2891042247076E61D62';
wwv_flow_imp.g_varchar2_table(23) := '73DA515E3D07A54B66C639D72D2707E94A01CF09C46131F4060B4002D9432D1A85F0A18E1C27A81284B7ADB874E464A1EACE05A8A89E07BB337ADF0AF5045ADD37E10DF09C8019CA050B4002B9A48666FDFB66FE65A32F14010A099C9AD187900896D7CC';
wwv_flow_imp.g_varchar2_table(24) := '45D9D259506CD1A244730274B5C41F0C64B4FF7A3897EA34A3B996EA98393E4B10A0B90F128192459503E604E81221DD2710DB7BB204141339C90260A2CC32AAA9D413A8BC73E1809E00CD09D00D433C2760D49C0358008C9B37A6B2CC21E7452A56CD93';
wwv_flow_imp.g_varchar2_table(25) := '938373E570207AF5C025AF0EB4BA6FF09C8041739305C0A0196346B368383063E51C54D4CC83CD618FB8402210BA4F80E704224C925949C7392C00E9A06AE138E98A40D9F259289E3F43F604A2C58B44E06A572B7C013FDF3168A0F211CD210319C5A698';
wwv_flow_imp.g_varchar2_table(26) := '9B00F50466DEBD18258BAAE27A02DD016FE82122BE44689CFC6501304E5E649425240255772D40F98A398010087FE83E81163927E0E1FB04C248745DB200E88A3FB313A75BA4CB56CE46D51D0BE470207662B01BADF4EC00CF09245C00D275200B40BAC8';
wwv_flow_imp.g_varchar2_table(27) := '72BC2102A13981653351B664A614816871A33901BA6D98E704429874FB2F9A23BA99C009673A01EA0954DC391F45F3CB07BD59888703FA95001600FDD85B2A659A13A0A7082BE465C2D84B8474B3502BCF09E85616580074436FBD844904CAE4A460D9D2';
wwv_flow_imp.g_varchar2_table(28) := '9971CED3B3032DAE6B08F09C401C97F0463A972C00E9A4CB710F20402250B16ABEBC3A303B7E3810F0E06A571BFC8100DF2730805AFA76B000A48F2DC73C04017A7660C6CAB9285D541977040D07E8EDCADC1388C392D60D1680B4E23577E4CEDCAC3807';
wwv_flow_imp.g_varchar2_table(29) := '5C6D1D71DBA3D970E665A3F2AE85A8A89E1B77B390CBD78D1B9E4ED04B5847133F9F9B18011680C43859F2A83153C7C7F9DD74F212828160DCBED16CD8B31C28AF99277B025510A2F766217AEB82CBD7031FCF0784D0A6FB3F168074133671FC852BAB60';
wwv_flow_imp.g_varchar2_table(30) := '8B79DB4F7B432B9A4F5D46C09FBAFBF949044A97CFC2F8922911525E7A0763C017D9E695F4116001481F5BD3C76CCF71865E791EEBC899F78EE0DCBE63683BD7889B57DB70ABA17DD4A1FB661714255A14E91D8C14F84522B1E4D3B31EA59E9EF8395693';
wwv_flow_imp.g_varchar2_table(31) := '13A85CBB14850B6644BCF0B87B70A9EE148EFDAA36148EFEB216A30DC77F5D879B8DED91346825104CDD5083E2E33038011680C1B9DC7E2F0D566F7F94E98FC89F3A0E0BD6ADC6F8B268179D9CF279BC70C996DB75B3532E471FFCDEF82EBF1A7A0F23A5';
wwv_flow_imp.g_varchar2_table(32) := '64DDA085E72C00C952EE9DB34AF66CD39C27148149B3A7E38E273F8D69B22740B3F74258C47964FE870520D93CB6480F208C674CC924DCFDD4C3B8EBC9CFA0EAFE2598BE7C268A9654CA5091925040571C5857C2B8355BB2006886DADC09092140938253';
wwv_flow_imp.g_varchar2_table(33) := '979663D99607B0EA2FFE534A43C98A59889D0834372DF358CF02906C5E59B4B5124240B1DBE0C8CF46D6D85C19F252126CD94E40C60DFE840868F51F0B8056A4391D266040022C0006CC1436890968458005402BD29C0E13302001160003660A9B646D02';
wwv_flow_imp.g_varchar2_table(34) := '5A7ACF02A0256D4E8B09188C000B80C13284CD61025A126001D09236A7C5040C468005C06019C2E6589B80D6DEB300684C9C1E710DFA03F076F5C0D3E1CE8840BE904FE49BC638E392A3F4E94D42F44A317F30107AC9685055F91D837194E2375800E279';
wwv_flow_imp.g_varchar2_table(35) := '24BE95E4B300417F10F5BF3B853FBCF00BBCFF9D373222FCFE9FDE0AF944BE250EB0FF91490295D150C5A7BF3778D3D38516F7753474B58542A3AB1DEDDD37416F182251A0E3E4E1FC8D21C0021003438B556F57378EFDF843341C3A87F6D3573322341E';
wwv_flow_imp.g_varchar2_table(36) := '3E8F636FEC93BD9AEE512014499D4B959AFEDE60B3EB5AA8F29308D05F1DA27D5DBE6E5CEBB985A69010DC42901F311EC09805600092F4EE50832A7C3DF1CFBEA737456D62F7757B47D9D54EAE07E0F17B6505BF06AAF4EA1015DCAF0670C3D381A6AE76';
wwv_flow_imp.g_varchar2_table(37) := '43BF6C549B9C8A4F8505209E47DAB7B20A7230F7A16A144C1B8F9C09051911E851DE39D2A7ACFC9C51F01B590F805A7EEADA5FEA6C822FE88FA42B848023270BCEDC6CD0DF250CFF40F2D2E973E37A4FC728852A1C63662C590034CE47C56143D5A79663';
wwv_flow_imp.g_varchar2_table(38) := 'ED739BF189E71FCD88B0F6DB9B31F393CB41BE6981B3B7F277CB16BD2DAECD77CA8A3F7D6105967D7635AA37DC87056BAB31AE681210A32D24009E8017FCE925C002D0CB61E4FFC714AA919C2C8480CD6E8353B696D963729109817C219F8448120A12FF';
wwv_flow_imp.g_varchar2_table(39) := '50E5EFF2BA43E37D9FECDA87CF7464393073F522CCBA6709C6164F42DEC431983AA704F3D7AEC4C492A9E1C3E4104045B7DF13D9B6FA0A0B80D54B80C9FCEF9195B759CEF47B63BAFD8E6C2766DFB314450B6684BAFD424485286F821482D9A510B6DEA2';
wwv_flow_imp.g_varchar2_table(40) := '4EF304B1E71AC57DBDECE8A5A257EA9C2E13489000B5FC6E6F37EAE5253E9AD40B9F467F57A0EACE85289C37038ACD16DE1D5D4A2DB03BED1042AEF4ED0DF21B87FB48002C001114BC62540254F9E992DE55571B0231DD7E9AE8ABAC9987E98B2B65E51F';
wwv_flow_imp.g_varchar2_table(41) := 'A228CBD93F9FC707BAFA12F64F08115EB5FC72086A96E7C2000C42205CF9DBDC3764E58FFEAD002104AA56CD47D98A3943577EE983D7DD83B6730D52007ACF151070DA1CF217FE120185FEE3C0048C4AA0DBD78326573B3CC1F87B274818AED5B7829643';
wwv_flow_imp.g_varchar2_table(42) := 'D94E7FC790FE92D1B5CBCD914314291C39F6F83F7A1AF951A7153D936501D0933EA73D2C01AF70EAFA00001000494441549AF0BB2A2B7F40ED6DBDFB1FDC72B61E87DFFC00D4CAC70A01AD7BDD1E1CFF652D1A4F5E8A1389310E79E5C5E6EC1F9565B759';
wwv_flow_imp.g_varchar2_table(43) := '002C9BF5C676DCE5EB4643BF31BF62B761ECA4F17186B75F6E01B5F23D1DAE5045A7CADFD3E9C6D90F3E46B31488D883F31D3998943B1E4288D8DD965E6701B074F61BD779BAB5D7170C440C746667A162C14CCC5C360F130B2747F6AB7246BFE9F41559';
wwv_flow_imp.g_varchar2_table(44) := 'E18FC2EBEA91BD010FCE7D7834D4F2D310207C609E231B537327C0AED8C2BB782909B0004808FC35360187D381B2B915985A568CECBC1C542C9A1D2702F42872B31481D37B0EE1CCDE43683A7519B42FEC55AE3D5B56FE897028F6F02EC32CF536840540';
wwv_flow_imp.g_varchar2_table(45) := 'EF1CE0F487256077D8515C551AAAFC8A4D0975DF4904662E9D8B3113C646CEA5AE3FF5041A4F5E861A94D7FEFA7EC9B63B519437095972E65F08EEFAF761892C94C81AAF8C8C40B48C8DEC3C3E7A00016AAD7DDD1E50258EFD31D4F2CFAB44F1CC19104A';
wwv_flow_imp.g_varchar2_table(46) := '7CE575C821C19CEA4598306DD280DFC271E4CAD9FEA2BCC970D8B8E50F33E9BF6401E84F84B7352540AD75CBB12B683878166A203ADB4F2DFF0C39E69F563E1DD4F20F6654566E7668389095933DE0E702472E0AFB5AFE013FF28E08011680088A11AEC4';
wwv_flow_imp.g_varchar2_table(47) := '3748233C990F0F13E8BC7A0D077FF02E3A9B6F8477C199E544C5C259985252084519BA8806FC7ED49FBA008FBB27722EAD50CB3F59CEF61B7DCC4FB6EA1D86A6ABB765464F3FC92100B5789D4DD771E9C3E338F79B43A60817F67C8CF6330D71136BA3CD';
wwv_flow_imp.g_varchar2_table(48) := '1EE270ED5403DEFDE60FD1217984E3B3C931FFF4593330B954567EDBE0C593860A5E8F07178E9C46CB95A6B8A143AE2D0BD4EDE7317F98E8F0CBC1090F7F0EFF3A0A023ED95A1D7AE5B7A0F7E8D56D7F076608B5FFF2EFD8F7BD37432F301D85EB9153A9';
wwv_flow_imp.g_varchar2_table(49) := 'ABDF7AFC0AF6FDE3CFE09563FFF00FD4F297CE2E476165C9902D3F557E8F3CE7D2B1B3A1CA1F3E9796D4F217E54FE64B7D0423C1C0029020A8541DE6F7F8D07EB62155D169164FCF4D3762AFAB279B30C5D174E8023E7AE55DB8AE7544A271381D9831BF';
wwv_flow_imp.g_varchar2_table(50) := '0A4572C65F19A6DBEFF7FA42DDFEB6AB2D712DFF1867EF989F26FC84E0F15904EC6D5658006E0328D53FD3EBAA0A1755A43ADAB4C797333E1F8ADD36EA743AAEB4A36EC73BB8D5D01E89CB2EBBFD34E117EAF62B4317497A8CF7ECC113B2E56F8C13A33C';
wwv_flow_imp.g_varchar2_table(51) := '799D7F4ACE049869CC1F715EE795A169EB6C58A6266FCF7162C9E6FB70F77FFB3C6A9EF824AA4D10EE78F2D3B8E7AFD7237B6C5ED2D9422DFF8DF3CD78EF6F77C37DA333124FA8F2CFABC2141AF30F51F9A9DBEFEBF1E2EC81E3B8D6D4069A3F0847902D';
wwv_flow_imp.g_varchar2_table(52) := 'AFEF4FCB9B086EF9C34446B664011819AFE8D149F6328510C899908FE935B35171EF62549A20CCB87B3EC64C9F08D1EF5A7C14C6F06B54F95B8E5C1C58F99D0E94C831FFD4F2620CD5EDA7CAEFE9EEC1A513E7D0D6D8129750812307250553F9F1DE382A';
wwv_flow_imp.g_varchar2_table(53) := '23DB504676381FCD044646400D06D12627FC0EBFB617DDB75C9193B3B2B3502EC7FCC5556543567E3A98C6FC574F5F442BCDF6C7DCE147957F4AE8DE7EBEC98738251B58009225C7E72544E0DA9946FCFE855FE0667D5BE4789B9C4B28995321BBFD45C3';
wwv_flow_imp.g_varchar2_table(54) := 'F62AA8E770E1E33368BE2CC7FC5248C21150E5A7077BCC3AE60FFB6184250B80117221036DA04B7D372FB4E0837F7843B6FC5D110FEDB2DB3F438EF9A7CD28C65077F851B7DF27AF969C39700CADF5F23A7F4CCB9F6D73626A2E8DF91DA1E7022211F34A';
wwv_flow_imp.g_varchar2_table(55) := '5204580092C2C6270D4780EEED6F9497FADE9795BFA7C31D39945AFEB2B995A0DB7BC510F30954F94363FEE367D1DED41A399756F21DB9982EAFF3D3841F6D73183D011680D133E4186208D098BFF5D8651CFED1FF87ABFD56E417A71CF3D3EDBDD368C2';
wwv_flow_imp.g_varchar2_table(56) := 'CF3674B1A396FFF289F3B2E56F8E9BEDA77BFBA7C931BF43CEFA4722E5955113183A27461D3547604502D7CF36A1EEA55FC7DDDEEBC87262C6BC4A4C292B8232C4A53E6245F7F65F3A76066DF5CDF23A7FF46520F972B67F4AEEF88CB8C38FFC34526001';
wwv_flow_imp.g_varchar2_table(57) := '30526E98D8166AF9AF9D69C06F9F7D155DAD37239ED81DBDCFF34F291DBAF253B7DFE7F1E2DCC19318706FBF3D0B85B9934297FA8448F2DA6BC41A5EE94F8005A03F11DE1E31011AF337CBEBFCBFFBA7B710F0475B6E6AF9CBE4845FF1CC328861C6FCF4';
wwv_flow_imp.g_varchar2_table(58) := '3CC0C5A3B2E56F88BFCE4F6FF2A1077BECB6D1DF813862A72C72020B8045323A5D6ED26C7FE8DEFE1FFCA65FCBEF4079E8797E39DB3F4CB7DFEFF3E3F2C9F3686F8C7FC577819CF02BCCA3D97E7BBA4CE778250116000981BFC913B879A915077FF8DB81';
wwv_flow_imp.g_varchar2_table(59) := 'CFF32F9A85C925D370BB31FFF943274137F9C4F61CC89A1CD9F5CFB4EBFCE497D1020B80D172C424F6D098BFEDC415BCFBCCFFEBD7F2DB5132A7FCB695DFDBE3C1F9C3A7D026BBFD34076012B733CE4C16808CCBD2F43B4463FE96A397F1E177DF44C0EB';
wwv_flow_imp.g_varchar2_table(60) := '8F24E894B3FD25B366A0905EE33544B79F2A7B8FBB1B978E9D45AB9CED8F9CCC2BBA106001D005BB7913A5DB731B0F9EC74772CC1F7B930F557E7AA4B777C26FE86245EF43B872F202DA629EE7576C0AE80F7D4208F38231A9E543E794491D62B3D34BE0';
wwv_flow_imp.g_varchar2_table(61) := 'E6F966D4BEF8EFE868BC1649C866B7A36C7E55A8DB2F8668F9E96035A8829EE76FAD6F023DDB4FFB28142FA9C48C3BE60D3B5F40C7993918D5761680647326C97702520B78F4D5F7F0E32DFF80D7363EAF5BF8F95FBE8096C31713F69E5AFEEB671AF1FE';
wwv_flow_imp.g_varchar2_table(62) := '777E026F67F4259C7647EF6CFFED9EE7F7CAEBFCA7F67F8C6BCD6DD13BFC648B3FA9AA18CBB6FC31B2C6E502DC0180D61F45EB04AD9E9EB7AB07E7F61C81AFC7AB2B0AD7F54E9C7ABB2E211B68CCDF24BBFD7BFF6E37621FE9A5CA5F2A27FCA60E73871F';
wwv_flow_imp.g_varchar2_table(63) := '8DF9E9ADBD978F9F97953FFA162021044A57CEC2DD4F3D8CDCC96312B2830F4A3D011680D4331D3646C5AE207742C1B0C768F563C1B4F1B74D8AAEF3B77C7C09F43CBFA7B33B723CBD8B9FAEF387DEE127C7F0911FFAADF83C3E5C3945CFF337CA96BFEF';
wwv_flow_imp.g_varchar2_table(64) := 'BDFFB2F297C8CABF74F3FDBD2D7FBF7378533B022C00DAB10EA594959F83A59BEE93ADDF6C4C9C59848955DA87C9B3A763DEA76A30EFE13B42360DF75FDBC97AFCFE9FDF46EC98BFB7E5A7E7F90B21C4D0FDF680DF0F7A9EBFB5BE3132E61742A06CD51C';
wwv_flow_imp.g_varchar2_table(65) := 'D9ED7F0039130B863D7F38BBCCF49B916D6501483677862EF7C3C628646B39656119EE7AEAF358FBEC66AC7D4EFBF0C0339BB078F3BDC81E9F3FA4ADB1637E4FCC23BDF43C7FD9DC0A84BAFDD297C122A06EBF8FC6FCB547E56C7F936CF9FB264C24B389';
wwv_flow_imp.g_varchar2_table(66) := '954558B659567ED90B1242EE884410BB1ED9C92B6926A0A439FECC8DBEAF4C67A283019F1F8D7567F1C1F77E0A5F7774AEC2EEB0835EE335AD623AC430F7F6D398FFE2D1B3B8D11ABD5240C257BA6236EEFAF267A5F0E465223653FAC40260CA6C4B9FD1';
wwv_flow_imp.g_varchar2_table(67) := '74A9AEED443D0EBDBA07EE6BD1B7F73AB3B350BE70566FCB3FCCA53E9F1CF3D3F3FCB177F80921BBFD35B2DBFFE81F2377D298F419CF318F98000BC08891F59D90A13D56F7B50E1C796D6FDCEDBDCE6C67A8E59F522AC7FCC3547E3F8DF98F9C96DDFEE6';
wwv_flow_imp.g_varchar2_table(68) := 'B8E7F98B165760D1C635966CF9FB4A8B61172C0086CD1AED0DA3DB7A0FED7817D72F451FCBA56E3FDDDE3BB9A410CA10959FC6FC5E7959F3DC4727D1D6D00CDA0E5B5FB8B01CAB9E7C087953C6F2845F188A81962C0006CA0CBD4D693D7A09F587CF45CC';
wwv_flow_imp.g_varchar2_table(69) := '506C3694CEAE40614529C47063FEEE1E5C387A1AED31EFEDA73B028B9754A2E63F7F0ACE829C489CBC622C022C00C9E647864D02D2CD3EA7DF391847A3B8B24456FEE943567E3A98DEDB7FE5C4055C6F6C8BB4FC34E157BE7A3E566C7B3074A98F8EE360';
wwv_flow_imp.g_varchar2_table(70) := '4C022C00C6CC17CDAD6A3B5E8FEB179A22E9DA1D0E845EE365B745F6F55FA1EBFC670E1C476B7D130281E89B800A17CCC08275AB2D5FF9FBF332E2360B40B2B992419380D4FA371C390FAFDB13A1515C598AECBCC1BBEE34C6F7767B70F6A313B8DED21E';
wwv_flow_imp.g_varchar2_table(71) := '69F9E9641AF357FFF927913799C7FCC4C3E88105C0E839A4817DF47C4257F34DA87D7F7DC7E174207F420114DBC0E24195DFE3EAC6C56367E598BF35629D100234E6BFF3BF7C865BFE0815E3AF0CCC61E3DBCC16A6900055E85B57DB71F372B43253CB9F';
wwv_flow_imp.g_varchar2_table(72) := '9D3B78EBDFDDE5C6A5E3E7E46C7F0BE85C3285C6FC6577CCC5F2C7D6F2841F0131516001305166A5C3547AD8E7FAB926B8AE47FF8847767E9EECFEE74692A38A4EB706B7D5B7E0D8BE83A1963FDC5B801C0A952C9B89259BEE033FD5174106B3ACB10098';
wwv_flow_imp.g_varchar2_table(73) := '25A7D26427BD9FA0FD5C23D07755C366B361FCA4F1A1D46886DFDDD18586D39771E4BD3A9C3A7014749B2F09021D20E4A5C1C955C558FAC8FDC899900F21A41AD00F1C4C438005C03459951E437DDD5E5C3F1F9DFDA737F5D04B3BEA4F5FC0998F8EE3C8';
wwv_flow_imp.g_varchar2_table(74) := 'DE3A5C3C71165D373BA448F4A98434C5919385CAFB96E0EEA7FE047C7BAF0462D22F0B8049332E5566B71CBC00F78DE83DFFD4BA5F6B6A0B3DC34F4BBABD372E2DD9CA8F9B3E198BFE7435966EBA1759F4269FB80378C34C041433196B285BA38DA1A1CC';
wwv_flow_imp.g_varchar2_table(75) := '1A893174F9EFC4DBB5099DA2C82B02638B2761F99FDD877BFE663D2AD72E832DCB91D0B9891D940140FB1C35D38205C04CB995625BBB6FB8400FFF0C162DCDEC3BF3B2E5D8BE00A5D573F089E7B6E0C1E7B760D6432B412FF2B0396C3CE61F0C9CC9F629';
wwv_flow_imp.g_varchar2_table(76) := '26B397CD4D3101618B4EDCD1A45E56412E26CF9A8E390FAEC01D4F7E1A0F3EBB19777EF9B3185B3E0536473AFF4C57D40EF04733022C009AA1365E42D96373B168FD1AE44F1A8BA9734AB1EC4B0F841EDEA10778167D710D8A9655865A7B1286F45BCF43';
wwv_flow_imp.g_varchar2_table(77) := '80F4331E98020BC0402689EDC980064B91DDF8990F2EC303CF7E29F48AB2AAB54B43953EBF703C94619E01480CD0488FCA00A00046EAB5DEC7B300E89D033AA62F840855F49CF1F9C82AC8812227FA84103CB687753E2C00D6C96BF694090C20C0023000';
wwv_flow_imp.g_varchar2_table(78) := '09EF6002D621C002609DBC664FD34CC08CD1B3009831D7D866269022022C002902C9D13001331260013063AEB1CD4C2045045800520492A3B13601B37ACF0260D69C63BB99400A08B000A4002247C104CC4A800520D99CE35BD7932537F879AA042ABF83';
wwv_flow_imp.g_varchar2_table(79) := 'FFC87BD345403B0150D5E83BA7D3E54D9AE2151032660A72210B29FDF55C7A479EDCE26F0A08D0FB05BB3BBA406F230A47A708ED8A6638CD6497293F4FC3BAA2196555A039E5A0348A50110214D0F7A1D768FBDC9EC85B71FB76F3224902FE6E2FBC9DDD';
wwv_flow_imp.g_varchar2_table(80) := '91578E0929B83629004288246334F7695AD615CD040010A6150087620705F47DDA4F5FC5C5BD47E17399B653D3E789FE0B7F8F0F577E770A6DA7AE468C21D614223B2CB622202E69E5B27602A0AAA616801C7B56244FE82FE89C7C7B3FEAFEF59738FD56';
wwv_flow_imp.g_varchar2_table(81) := '1D5A0E9C47DB914B1C46C080DE4578EE970751B7FD5738F6D37DE8BEE58AF0CDB239E0B4D923DBD65BD1AEAE682600724C77CAAC192984C0C4EC31C8B639232E783ADDB8B2FF348EBCFE1E3EFCFE5BF8E0FFBCC961040C3E7CE1E738F4DA1E5CFAF038DC';
wwv_flow_imp.g_varchar2_table(82) := 'D7A32F2575CADED6E49C7172C8A559D18CE469322BE9384740C9C41E40F0304CFA1142C0215BA5A2BC49C852E25F844913825E770F3C2E0E2361E095BCE8EF0EC41609EAF64FCD9D802CBB134288D89FACB5AE6A575714ADC80AC5665A010833A282393D';
wwv_flow_imp.g_varchar2_table(83) := '7F0A0A1CB9A0C21ADECFCBD11170081BF21D3920B6F9CEDCD1459601676B5957341380E5B32F9F91D3BC41B3E7C08C02CF00000665494441548F438E4D0BF326A248F606A6C9D66A42D6188C73E6734882C1F8AC024CC9198FC2FC4928943C69EC6FF6F2';
wwv_flow_imp.g_varchar2_table(84) := '316AFB55D5DD5B57461D534211682600E2E9A78350C5D984AC32F0414208D8141B721DD918270BF0E4DC71989A378143120CA6E48EC70439B792E7C8815D3215C25CDD7EA4E1A30A71345457D210F760516A2600A1C4856AFA6140C88FBEFF841090939B';
wwv_flow_imp.g_varchar2_table(85) := '1CE435FB643908C1951EB11F55DB3AA2A900A8107B637DE57526C004FA111042D346525B01F0067F0155FEEBE7336F3201262009C8BAE1007E2ED734FB6A2A00ABDE78FCAA0A7CAC99779C101348138174444B7563D9CEAD8DE9887BA838351500324211';
wwv_flow_imp.g_varchar2_table(86) := 'E257B4E4C00498403C013DEA86E60200045800E2F39DB798408840400DBC195AD1F03FCD05408C09EE93439DCB1AFAC8493101E31350D52BDD2D5507B43654730158F1AF4FF800F10AF8C3044C4A201D66AB42BC7CEFDE7BFDE9887BB83835170032C6A1';
wwv_flow_imp.g_varchar2_table(87) := 'A82FCB6B0172CE83B63830016B135055D56F0BD85FD283822E02B0ECD56D9765EDFFB51E0E739A4CC08004DE5EB1FB912B7AD8A58B0090A38A083E4F4B0E4CC0EA0414A17E572F06BA09C0CA9D8FEF5555BCA397E39C2E13488640AACFA13A407521D5F1';
wwv_flow_imp.g_varchar2_table(88) := '261A9F6E02D067E057FB96BC60029624600B2A7FA5A7E3BA0A40CDAEAD47E404C8CFF404C0693301BD0850D95FB1FBD1A37AA54FE9EA2A0064803D88AF48105DB4CE8109588880CB06FB537AFBABBB002CDFBDED9C02F175BD4170FA4CE0760452F9BB0A';
wwv_flow_imp.g_varchar2_table(89) := '7C65C5AE2DE7531967327129C99C94EA7356040BFE5102F930D5F1727C4CC0900454755FCDCEADFF6C04DB0C210062F7FA803DA03ECA4301231409B621CD045C0AEC8FC0201F430800B1080D0554B12513DE1B48FE7060020309A841D9D3FD9211BAFE61';
wwv_flow_imp.g_varchar2_table(90) := 'DB0C230064D0CAD7B7FE04AAF81FB4CE81091889402A6C11AA784A76FD7F9A8AB8521587A104809CAADEB5F579A87899D63930818C21A0AADF5BB96BAB6E77FC0DC5D1700240862A63FD4FC8A1C0BBB4CE81096400819FAE9C7BF5BF1BD10F430A003D32';
wwv_flow_imp.g_varchar2_table(91) := 'ACB8029F83AABE6144686C13134894809CD8FE99E2F26FD2F255DF89DA46C7195200C8B0156F3DE1965DA63F953D81E7689B0313D08B40F2E9AAFF5B0E693F4F6539F938D27BA6610580DC16106AF5CE6D5F57553C224380F67160028627A0C20B159B64';
wwv_flow_imp.g_varchar2_table(92) := 'D9FD1A956123DB6B68010883ABD9B5F5DF6C42DC25A19E0EEFE3251330240115475581BB64CBFF2343DAD7CF28530800D9BC62E763B593739425F23AEA337258E0A37D1C98807108A854269F9513D8CBE5A53ECDDFED972C07D308003958FECAA33D12EE';
wwv_flow_imp.g_varchar2_table(93) := 'D3AA1A5C00557D8BF6716002E92470DBB8555912811FDB029857BD73EB376802FBB6E718E800530940985BCDAE3F3F53BD6BDB6744505D2DF1EF0BEFE72513D09680BA5708955AFC75CB776F3BA76DDAA949CD940210767DE5EBDBF64921581D54837748';
wwv_flow_imp.g_varchar2_table(94) := '21FEA114034FF8375E3281B41050558F9C8BFA11353E7292EFDE953BB71D4A4B3A1A456A6A0108335AB5EBF13FD4ECDCB6595102D3E5FCC05F4921D0FD31CBB06DBCCC180217D4A0FA552A6372826F13353E99E059460840382356BCF644BB54E5BF97BD';
wwv_flow_imp.g_varchar2_table(95) := '822A35283E2185E0FBF2B77A19F8CB04464C409E502FCBD0FF1522B8B67AE7D6CA9AD7B7FD2D9531B93F63BE192500B1B952F3FA63EF48217852665CA9AA620982EAD76566BE0FC025037F99C060045C7D65E41B08284BA9ECC832F4972B5F7B3C636F4B';
wwv_flow_imp.g_varchar2_table(96) := '5760814FCDAEAD47AA5FDFF69CCCCC353253F385222AA106FF04AAFA2D55557F26978725064DFF2AAB4C8FBFFA1168A43CEFCBFB6F41960545B55551D9E82B23CF56EF7E94CA847E166A94B22504A03FCB95AF3E76A17AD7E36F54EFDAF6CD9A5DDB3E27';
wwv_flow_imp.g_varchar2_table(97) := '97A4F6C5B200080E5BADC0A098F2BC2FEFBF592DCBC20A03BC9EAB7F39D562DB9202A005584EC3DC04AC623D0B8055729AFD64028310600118040AEF62025621C00260959C663F99C0200458000681C2BBAC4DC04ADEB3005829B7D95726D08F000B403F';
wwv_flow_imp.g_varchar2_table(98) := '20BCC904AC448005C04AB9CDBE32817E045800FA01E14D6B13B09AF72C0056CB71F69709C41060018881C1AB4CC06A045800AC96E3EC2F138821C00210038357AD4DC08ADEB3005831D7D96726D0478005A00F042F98801509B0005831D7D96726D04780';
wwv_flow_imp.g_varchar2_table(99) := '05A00F042FAC4DC0AADEB3005835E7D96F262009B0004808FC65025625C00260D59C67BF998024C0022021F0D7DA04ACEC3D0B8095739F7DB73C011600CB1701066065022C0056CE7DF6DDF20458002C5F04AC0DC0EADEFF07000000FFFF4BBC39760000';
wwv_flow_imp.g_varchar2_table(100) := '0006494441540300B1D08E3C144ABEE30000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8555844047010830743)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027233755Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000291494441547801EC94CD6B134118C69FDDA44DD2244DDA98446D138BB521D82ADA82D40F3CE460B1E0A988227A93FE0D5E4441EF05EF62A117CF7AB188782858';
wwv_flow_imp.g_varchar2_table(2) := 'AC0711141A0FB5AD42A8F9DECD6693CD26EBCE0A25D1CC664222F5908567999D77F6797FF3CE07BF71F3A97690E271C04F0FA05781FFBB02B25A46D25D423A5035D56676176955444DABB57DA64C2B50A8C8883DBA8DD8835BA602078CCD9F41A298EE2E';
wwv_flow_imp.g_varchar2_table(3) := '0071E32D3C388E6B21C03B7208916BE77488545B95E049924EC5F13CB49A06DF5810D185F3C8D42466CBAE009CBD13C3FACA2ADE2DBFC297D50FC8CA79689AC604D11580892BD3985F5AC4D5A5BB8642B351A6E464103340599491DDDEA34A4CA461E9B3';
wwv_flow_imp.g_varchar2_table(4) := '1A224B42CCC9A928A90AAA26A783198018B62392F4BBF413CE0BA3D89332D45F99016C6E0786F44D4693371C684892ACE4E11C1D46455660B7F635C4EA3F980188512199473315D3C2BE67555151CE49383E3B0987CD8ED4FB6F18B67BF6E37F3698016A';
wwv_flow_imp.g_varchar2_table(5) := '6A1515A9D45CC5B2E1ABE8F1D7F75710F40520A4735076F3F03BBC468CF66206305B024FC88FB258C4C7E537188F8C43C8E4908F27E0ED771917182D39E9670668B604522A4F3C40CABEFEE425BC36170A39113B9B5BF0E965E738CE889BBD9801D49202';
wwv_flow_imp.g_varchar2_table(6) := '49DF03F52AA6047DE632DE3E7E8E2381A09E5C8073EA3046664E98E56C88310338865C089E0C37C81F0D617BED33C2E110447DE67D210F227333E0AD968624661FCC0034931F1B5FB113DFC2E0A9A3387DE3326D18B5BF6380A9EB9770F1DE0226E6A6A9';
wwv_flow_imp.g_varchar2_table(7) := '49CC021D0304278F61C037D872B7D3204C017870101319DABFD4FE8AF4FB5EA00EA80BF075EDBF9A5E9B1B9F1EBEC0DAE2B3B6648D0BE0B8D64790243405B0F03CDCFD03705B1D6DC96EB5116F26990230397438A807F0CF2BD06A857E010000FFFF9B21';
wwv_flow_imp.g_varchar2_table(8) := '176600000006494441540300D1878F106D5C2C770000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8555842925823830741)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027233754Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD597424D97927F6FF8DDC902B12FBBED5BE76575737BBD91B9B4D3645F6481435A29611E5B1C673C6E3F139F3E0173F8C9F7C66ECE3E379';
wwv_flow_imp.g_varchar2_table(2) := 'F1A3ED33631FFB1C1FCD3C682C511217911449A9C9DEF7AE7D2F00051476203724729DFB05BAAAABAB51C848209758FEE88E02907923E27EBF9BC8FBC58D1B91C6DBFFE8FFAA72A1015F037C0DF035C0D7005F03DE7A0D18E017052840010A5080021E13';
wwv_flow_imp.g_varchar2_table(3) := '00980078AEC91930052840010A508009005F0314A00005284001CF0948C01C0110052E14A000052840018F093001F05883335C0A50800214F0BAC076FC4C00B61DF82F052840010A50C053024C003CD5DC0C960214A00005BC2E702F7E2600F724F89D02';
wwv_flow_imp.g_varchar2_table(4) := '14A0000528E0210126001E6A6C864A010A5080025E17F82C7E26009F59F0270A50800214A0806704980078A6A91928052840010A785DE0C1F899003CA8C19F2940010A5080021E116002E09186669814A0000528E07581CFC7CF04E0F31EFC8D0214A000';
wwv_flow_imp.g_varchar2_table(5) := '0528E0090126009E68660649010A5080025E1778387E26000F8BF0770A50800214A0800704980078A0911922052840010A785DE08BF13301F8A2091FA100052840010AB85E800980EB9B980152800214A080D705768A9F09C04E2A7C8C0214A0000528E0';
wwv_flow_imp.g_varchar2_table(6) := '720126002E6F608647010A5080025E17D8397E26003BBBF0510A50800214A080AB059800B8BA79191C052840010A785DE051F1330178940C1FA700052840010AB8588009808B1B97A151800214A080D7051E1D3F138047DBF0190A50800214A0806B0598';
wwv_flow_imp.g_varchar2_table(7) := '00B8B6691918052840010A785D60B7F89900ECA6C3E72840010A5080022E156002E0D286655814A0000528E07581DDE36702B0BB0F9FA500052840010AB8528009802B9B954151800214A080D7056AC5CF04A096109FA700052840010AB8508009800B1B';
wwv_flow_imp.g_varchar2_table(8) := '952151800214A080D7056AC7CF04A0B6114B50800214A000055C27C004C0754DCA802840010A50C0EB0256E26702604589652840010A5080022E136002E0B206653814A0000528E075016BF13301B0E6C45214A000052840015709300170557332180A50';
wwv_flow_imp.g_varchar2_table(9) := '800214F0BA80D5F89900589562390A50800214A0808B049800B8A831190A052840010A785DC07AFC4C00AC5BB124052840010A50C035024C005CD3940C840214A00005BC2E504FFC4C00EAD162590A50800214A0804B049800B8A4211906052840010A78';
wwv_flow_imp.g_varchar2_table(10) := '5DA0BEF89900D4E7C5D214A000052840015708300170453332080A50800214F0BA40BDF13301A8578CE52940010A5080022E106002E08246640814A0000528E07581FAE3670250BF19D7A000052840010A385E800980E39B900150800214A080D705F612';
wwv_flow_imp.g_varchar2_table(11) := '3F1380BDA8711D0A50800214A080C305980038BC01597D0A50800214F0BAC0DEE26702B03737AE45010A5080021470B400130047371F2B4F010A5080025E17D86BFC4C00F62AC7F52840010A5080020E166002E0E0C663D52940010A50C0EB027B8F9F09';
wwv_flow_imp.g_varchar2_table(12) := 'C0DEEDB826052840010A50C0B1024C001CDB74AC38052840010A785D603FF13301D88F1ED7A500052840010A3854800980431B8ED5A60005284001AF0BEC2F7E2600FBF3E3DA14A00005284001470A30017064B3B1D214A0000528E07581FDC6CF0460BF';
wwv_flow_imp.g_varchar2_table(13) := '825C9F0214A0000528E0400126000E6C3456990214A00005BC2EB0FFF89900ECDF905BA000052840010A384E800980E39A8C15A60005284001AF0B34227E26008D50E4362840010A5080020E136002E0B00663752940010A50C0EB028D899F0940631CB9';
wwv_flow_imp.g_varchar2_table(14) := '150A50800214A080A304980038AAB958590A50800214F0BA40A3E26702D028496E870214A0000528E0200126000E6A2C56950214A00005BC2ED0B8F8990034CE925BA200052840010A3846800980639A8A15A50005284001AF0B34327E26008DD4E4B628';
wwv_flow_imp.g_varchar2_table(15) := '40010A5080020E116002E0908662352940010A50C0EB028D8D9F0940633DB9350A50800214A0802304980038A29958490A50800214F0BA40A3E36702D068516E8F0214A0000528E0000126000E682456910214A00005BC2ED0F8F8990034DE945BA40005';
wwv_flow_imp.g_varchar2_table(16) := '2840010AD85E800980ED9B8815A40005284001AF0B34237E2600CD50E5362940010A5080023617600260F30662F52840010A50C0EB02CD899F0940735CB9550A50800214A080AD059800D8BA7958390A50800214F0BA40B3E26702D02C596E970214A000';
wwv_flow_imp.g_varchar2_table(17) := '05286063012600366E1C568D0214A00005BC2ED0BCF8990034CF965BA600052840010AD8568009806D9B8615A30005284001AF0B34337E2600CDD4E5B62940010A5080023615600260D38661B52840010A50C0EB02CD8D9F0940737DB9750A50800214A0';
wwv_flow_imp.g_varchar2_table(18) := '802D059800D8B25958290A50800214F0BA40B3E36702D06C616E9F0214A00005286043012600366C1456890214A00005BC2ED0FCF8990034DF987BA000052840010AD84E800980ED9A8415A20005284001AF0BB4227E2600AD50E63E2840010A50800236';
wwv_flow_imp.g_varchar2_table(19) := '13600260B30661752840010A50C0EB02AD899F09406B9CB9170A50800214A080AD049800D8AA3958190A50800214F0BA40ABE26702D02A69EE870214A00005286023012600366A0C56850214A00005BC2ED0BAF89900B4CE9A7BA200052840010AD84680';
wwv_flow_imp.g_varchar2_table(20) := '09806D9A8215A10005284001AF0BB4327E2600ADD4E6BE2840010A5080023611600260938660352840010A50C0EB02AD8D9F09406BBDB9370A50800214A0802D049800D8A21958090A50800214F0BA40ABE36702D06A7187ECAF52ADA0582E225FDA42AE';
wwv_flow_imp.g_varchar2_table(21) := '9847A69843BAC08506FB7B0D648B9BE6EB295F2AE8D75709D56AD5217F11AC2605DC27C004C07D6DBAA788E48DB85CA9E80EBF6076F4EB5B69ACCA924F634D7F5FBBF75D7EE6B26D4287BA1CE435F5D9EB28A5D74D617D2BA393CB4D1474B22949E79E5E';
wwv_flow_imp.g_varchar2_table(22) := 'BC5C8902AE10687D104C005A6F6EBB3D96F5D1BEBC0167F591FE867E435ED9DCC0925E56F3296C14324815B2E69BB41CBD71D9040DF66690D147FF693D9224AF27E9F857F4EB6B69731DF23A93C772C5ADFBA3029290DAEE0F8515A280CB049800B8AC41';
wwv_flow_imp.g_varchar2_table(23) := 'EB0947DE64CB95B23924BB9CDFC07C7619AB5B296C96B7C0A3B17A245976AF02E56AD94CA8241158C8AD9AA3025B9F8E06C8EB73AFDBE57A14709A403BEACB04A01DEA36D9675177FED2F12FE456F4B07F1615FD9F4DAAC66A7850A0502962559F6A9A4D';
wwv_flow_imp.g_varchar2_table(24) := '2FE891A72C4A3A39F0200343A640CB049800B48CDA3E3B92A3FB4D3DDCBFB4B96A0EEF4B22C0A958F6691F2FD7A48A2A8ABAE35FD5A70764D92C6D799983B17B46A03D813201688F7BDBF65AD247FD72AE5F8EFCE5BBFCDEB6CA70C714788440B152D2A3';
wwv_flow_imp.g_varchar2_table(25) := '5239739260B6B0F988527C980214D88F001380FDE8396C5D39F297CBAF64A29F4CC82A572B0E8B80D5F59280240199424E9F0EC898F354644E802C5E3260ACDE106857944C00DA25DFE2FDCA1BA74CAE92D9D63213BBC5BBE7EE28B02781923E1D902E6E';
wwv_flow_imp.g_varchar2_table(26) := '6225BF81AD72419F20D0270978EF803D5972250A3C2CC004E0611197FE2E43FDA9ADAC79CEBFAE109582320C187E1F7C013F171AECF81A90D7475DAFAB3A0ACBC8959CAE5ACCAD99F70BE07C953AF058D40102EDABA2D1BE5D73CFAD149023FF6C69D33C';
wwv_flow_imp.g_varchar2_table(27) := '82B2BA5F9FDF8F68328EC1C3A338F4E59338F1CA5338F5ADA7B9D0E00BAF81C9A78E21180ED57C69F983010442C19AE51E2EA08FFB912B6D617973037277CA879FE7EF14A040FD024C00EA3773D41A32F42F37F991D9D48572C952DDE5487FEC89C378E2';
wwv_flow_imp.g_varchar2_table(28) := '7B2FE3E97FF12A4E7FEF251CFAF69730F9CA6398F8DA692E34F8C26B60E0CC14021D214029ECF6D57F7004C75E7E02C75E3A83D1E3530845C27A95DDD7B9B7BDED24200FB93365861303EFB1F0BBC305DA597D2600EDD46FC1BE65B854EE5CB7552ED63C';
wwv_flow_imp.g_varchar2_table(29) := 'FA97A1FE445F178E7DF3291C79F5298C3F7F1C838F4FA1E7E8083A27FA101BE94674A88B0B0DBEF01A0877C7E0F3F950AB2B8F24A3E89D1CC4D089498C9F3D8C83CF9EC4D0917174C42296FE1ACAD58A79E3A08DAD3432859CA57558880214D8598009C0';
wwv_flow_imp.g_varchar2_table(30) := 'CE2EAE78548EFE6591F3A7A56A79D79894A1104E4430F9FC491C7CE50C7A4F8C22D469ED4D79D70DF3490F0948BA593B5CE533108C762036D885E15353187DFC20646420A24F37D55E1B284B1250CA9B9708E68A7954AA557EA890153896B1A1407BABC4';
wwv_flow_imp.g_varchar2_table(31) := '04A0BDFE4DDFBBDC6A75AB5CD06F92BB5FF2178C74A0EFC8280EBE7A1691FE4E73D25FD32BC71DB84740E9506A0CFFEB129FFB5F29055FC087AEF17E8CE92460F0904E3AF5EB1016BEB69380EDAB030AFAF5AD5300260116DC5884020F0A180FFEC29FDD';
wwv_flow_imp.g_varchar2_table(32) := '2520474632614ADE2C6B45D639DA8B53DF790EA158076434A056793E4F81460AC4FA931879EC00C64F1FB4BC59797DCBE8D6BDAB032CAFC88214B08940BBAB61B4BB02DC7FF304E4A8286F9EFBDF7D1F1DF10892A37D888E7601FA54C0EEA5F92C059A23';
wwv_flow_imp.g_varchar2_table(33) := 'D0A14F410D9C98C0E1674E22647124405EE332C155AE0E90D30172CAAB39B5E35629E03E01C37D2131A27B02F26628775393EFF71EDBE97BB42B8EE4500F7CA10094523B15E1631468BA80DC4B209C8C615846021E3B8470226A699F1554912D6D5F1D20';
wwv_flow_imp.g_varchar2_table(34) := '135E6BBDDE2D6D948528D07481F6EF800940FBDBA0693590A3A37265F7C97FB27379D38D0D24E5472E1468AB80E133D0D119C5C0B1710C1D198324A7B0F055A95690D349C046216B5E252049802C165665110A78568009808B9B5EE6646F9FFF979F1E1D';
wwv_flow_imp.g_varchar2_table(35) := 'A8CCF68FF4261E5D80CF50A0C50251FD7A1C3A3E81818323964702E4B52E2300F2591732F765F7577D8B03E2EE28F090801D7E6502608756685A1DAA28572A7A8074F71D04A2210479C9DFEE487CB6E502B1812E0C9F9CC2F0D10904F4E9292B15902420';
wwv_flow_imp.g_varchar2_table(36) := 'A3470256F2291465FE0B2F11B4C2C6321E156002E0D1867F306C651890A1D7071FE3CF14B08340B4AF13A3670EE2E053272C57474E07A48B392CE456CD0F10B2BC220B52A06502F6D81113007BB4036B41010A3C4220180BA3FFF8585D5707C8A6E4EA80';
wwv_flow_imp.g_varchar2_table(37) := '95CD0DF0EA00D1E042812F0A185F7C888F50800214B08F808C4E85E2110C9E9CC4C88929443A63962A2727BFE4EA808D42E6FEC4404B2BB210059A2C6097CD3301B04B4BB01E14A0C0230524098874C73174620203874611ADE7B6C1C53CE4D330EF8D04';
wwv_flow_imp.g_varchar2_table(38) := 'F0EA804732F3098F093001F05883335C0A385940EE18387C62D24C02AC7E8050A95A46A6B889F5ADB4392740AE0E6012E0E45781D3EB6E9FFA3301B04F5BB02614A0800581D8401223A7A7CCDB06D77575804E02B66F1B5C80DC23834980056C1671B500';
wwv_flow_imp.g_varchar2_table(39) := '130057372F83A3803B05C25D71734EC0E499A3307C3E4B415674B72F73029636D7B1552A585A878528D068013B6D8F09809D5A8375A100052C0928432114EFC0C089711C78F228AC9E0E908DE74A5B58CDA77975806070F1B480E1E9E8193C0528E05801';
wwv_flow_imp.g_varchar2_table(40) := 'C3E7433819C3E089490C1F9BB03C3150EE13202301DB5707E4F931C2E057EB04ECB5272600F66A0FD6860214A843C0F01990DB060F9F9CC4D0D171CB4940F9818981BC3AA00E7016759500130057352783A1803705E48E8183C7C6EBBA3AA0FCE907087D';
wwv_flow_imp.g_varchar2_table(41) := '76754095A301DE7CF9B42C6ABBED880980DD5A84F5A10005F6242049C0F0A9298CEA530286CF67691B9204C825824BB97514E4B303F45ABC3A4023F07F4F083001F0443333480A784320DC15C3A03E1D70F0A9E3963F40E8DED501CB9B1BC897B6C02F0A';
wwv_flow_imp.g_varchar2_table(42) := '3447C07E5B650260BF36618D2840813D0A183E03E1641443A7A73075F698E5AB03F4E03F647FD35A5A000010004944415462E06A3E65DE3488A3007B6C00AEE6280126008E6A2E56960214A82560F87CE8484430706CACEEAB0372A53C525B19648BDB57';
wwv_flow_imp.g_varchar2_table(43) := '073011A8A5CDE7AD0AD8B11C13003BB60AEB44010AEC4B40EE1310E94960E8F804FA0F8E58FE002199132023017289A07C9A206F1BBCAF66E0CA3617306C5E3F568F0214A0C09E05E4B6C17289E0E0E13184221D96B6632601C54DC8E9804299B70DB684';
wwv_flow_imp.g_varchar2_table(44) := 'C6423504ECF93413007BB60B6B45010A3448403E4068E4B103E6670758DDA424010F5E1D60753D96A3809304980038A9B558570A50604F021D9D51C8C4C063CF3F6EF9EA80EA039F1D609E0EA8CA09813DED9E2B795CC0AEE13301B06BCBB05E14A040C3';
wwv_flow_imp.g_varchar2_table(45) := '040C9F81503C627E76C0F86387114E442D6D5B9200E9FCD7B6D2F727065A5A918528E0000126000E682456910214D8BF802401E648C089090C1D1943B42B6E69A3723A406E179C2A64EE7F8010AF0EB044C742A6807DFF610260DFB661CD2840812608C8';
wwv_flow_imp.g_varchar2_table(46) := '1D03878E4F60E0E088E5918092F9D90179AC6F65CC9B0555F5E90126014D681C6EB2A5024C005ACACD9D5180027610880D7461F8D4018C9E98AAE3EA803232A54D6CDF31905707D8A11D9D50073BD79109809D5B8775A300059A26607E8AE0E9A9BAAE0E';
wwv_flow_imp.g_varchar2_table(47) := 'A8542B9F2601EBE6670734AD72DC30055A20C004A005C8DC050528604F81602C8C81131338FCCC49CB230112894C0C5CD9DCB83F27401EE342812F0AD8FB11C3DED563ED2840010A344F402606863BA3E607088DE8D30191CE98A59D5550353F3B40EE18';
wwv_flow_imp.g_varchar2_table(48) := '982D6E82F3012CB1B190CD049800D8AC41581D0A50A0B50286DF8748771C437A2460E0D028A2C9B8A50A94F5E900F9CC8054217B7F24808980253ACF14B27BA04C00ECDE42AC1F0528D01201B963A0DC3678E8E8789D57076C42EE13902F6DE971812A47';
wwv_flow_imp.g_varchar2_table(49) := '035AD25ADC4923049800344291DBA000055C212049808C040C1D19873F14B014D3F648C02696F31BE6C4409D023009B024E7F642F68F8F0980FDDB8835A400055A2810EE8A63F8F414261F3F02C3E78395AF8A3EF697D3014B9BEBD82A15ACACC2321468';
wwv_flow_imp.g_varchar2_table(50) := 'BB001380B637012B40010AD84940190A72C7C0C19313983A7B141DB1B0A5EAC9917F4E9F0658CDA7EFCF09B0B4220BB952C00941310170422BB18E14A0404B057C7E1FC2C9983912307AF2002C5F1D2013034B9B58DF4A2353D8E4A98096B61A7756AF00';
wwv_flow_imp.g_varchar2_table(51) := '13807AC5589E0214F08480E133CCAB03068F8D9BB70DB69A049873024A79C82582F219027265802C9E4063909F0A38E31B130067B4136B49010AB44960FBB3032631706004A1A8B5D3019204E474122023015BE502AAF25FB5DAA608B85B0AEC2CC00460';
wwv_flow_imp.g_varchar2_table(52) := '67173E4A010A50E0BE407CA80BC3A7A6307C641C323270FF895D7E90242053DCC4528EB70DDE85C9954F39252826004E6929D693021468AB40A4278EE1C70E985707F8830158F932AF0ED023012BF914F27A24C0CA3A2C438156093001689534F743010A';
wwv_flow_imp.g_varchar2_table(53) := '385AC0F0FB10E98A61E4CC414C3C76C8F2E90019FE979180D45616795E22E8E8D780B5CA3BA7141300E7B4156B4A010AB45940928070328AC11393183A3C56D7D50199620EB214CBA53647C1DD53605B8009C0B603FFA50005F621A00C03BE80BFE616CA';
wwv_flow_imp.g_varchar2_table(54) := 'C532CA8572CD72762E20B1C6FA3BCDCF0EE89B1AB67CDBE042A504B934F0DE8707F1CA003BB7F2DEEBE6A435990038A9B558570AD8544026C685A21D8052D8EDAB90DD422193DFAD88639E4B0CF760588F04C8D501C170C852BDF3E52DA4F54840A9E2EC';
wwv_flow_imp.g_varchar2_table(55) := '24C852B02C647B012600B66F22569002F617F0F9FDE639F11AFD3F8AB93C0AD94DFB0764B18689E16E8C9E3984F153072D5D1D20170216F42980742107F9D9E26E58CC3102CEAA28130067B5176B4B015B0A187E03410B23005B3A01C8BB280190C60877';
wwv_flow_imp.g_varchar2_table(56) := 'C530249F1DF0D81158B93AA024A702F42840952900F8D55E012600EDF5E7DE29E00A81403888D840529F0150D8ED2B97CA22B5B80EB79C069058E5F447472282A15393E81EEE43201494871FB9C8A581321FA0502EA252AD3CB21C9F709E80D36ACC04C0';
wwv_flow_imp.g_varchar2_table(57) := '692DC6FA52C08602017DF4DF39D50F438F04EC56BDE256011B7757B0747D0E9552D935F7CA37E412C1DE38864F4E22DA158732764F84A4E3DF2C6D310100BFDA29C004A09DFADC37055C22E0971180916E843BA5F3DBFD6D25BB96C2DDCBB791BABB8A4A';
wwv_flow_imp.g_varchar2_table(58) := 'D93D49805C1DD0736008C9A11E84C21DBBB66CA55A85240065FD7DD7827CD24102CEABEAEE7FA9CE8B8735A60005DA20A07C0682B10E0C9F9840502703BB55A1AC8FFC3716D670EBED4B589F5BC1567613321AB0DB3A4E784E29057F2880AE913EC4BA13';
wwv_flow_imp.g_varchar2_table(59) := '35AA5C859C02A8F214400D273EDD4C012600CDD4E5B629E021017F471093CF9D40D0C207E614F5A980851B77F0D1F77F853BEF5D457E23EB1AA9483286506CF70F0D922B004A9532A701BAA6D5012786C204C089ADC63A53C08602863E0F1E3FD88F8163';
wwv_flow_imp.g_varchar2_table(60) := 'E3FA5440D4520D8B8522A6CFDFC0477FFD063EF8FF5FC3E59FBD8FDB6F5EC6FC473770F7939B8E5CD6A617B195A97DA963A95A869C0AB004C54214688200138026A0729314F0A2804C7CF3EBE1FFC9AF9C44F7D490A53B03CA217021B785F4F23A566716';
wwv_flow_imp.g_varchar2_table(61) := '71F7DA2C662FDCC0ED0FAFE2D607CE5C662FDC446A79C3D24BA0A24F0154390FC09295BD0B39B3764C009CD96EAC35056C2BD07D781893CF9F40DF91D19A9705DE0B423AC152B1887C2687CCEA063696D6B0B1B8EAC825A59399C2A6B5BB1D4ADC55C982';
wwv_flow_imp.g_varchar2_table(62) := 'EE41F03B055A28C004A085D876DD951C80C83949BBD68FF57296802FE4C7E06393187FFA283A877B9C55F976D4967F7CED506FE83E9DBA3126004E6DB946D79B6F428D16F5F4F6829D110C9D3980432F3D8E503C6C7924C0D3680C9E022D166002D06270';
wwv_flow_imp.g_varchar2_table(63) := 'BBEE4E29BBD68CF572AA40B82F8EB1174FE0EC1F7C151D4C029CDA8CAC774D01E7166002E0DCB66B58CDD9F9378C921B7A40406E8C134C843178F6209EFA27BF81DE4323F005FD0F94E08F14A0403B059800B4539FFBA680CB050C9F8150571483FA74C0';
wwv_flow_imp.g_varchar2_table(64) := 'C9DF7D0EC7BFF925F41F1A85CFEF7379E40CCF2B024E8E930980935BAF4175372701720E408334B9998705CCCB0323410C9C9EC0D44BA771E8953338A0BF0F9E9840BCAF0BBE0047051E36E3EF1468850013805628731F14A000E44641B1D16E735EC0A9';
wwv_flow_imp.g_varchar2_table(65) := 'DF7D01C7BFF5254C3D770283A726D1333588AEB13E740EF72231D88D787F975E928E5DE44E8092F8B0D9DD2EE0ECF8980038BBFD587B0A384E404E0B74F4C430F8F4219CFCA317F1DCBFFC369EFB6F7E0B5FFAE35770F6F7BF82D3DF7E1627BFF5344E7E';
wwv_flow_imp.g_varchar2_table(66) := 'D3B9CBD0B109F88341F08B027616600260E7D66961DD3811B085D8DCD5E7047C9120A263DDE83A358AFE2F1DC4E8574E60FC1BA731FE1B8F3976E9393E8A408809C0E71ADA85BF383D2426004E6FC106D49F9D7F0310B9893D0B28A5209F2668F87DE669';
wwv_flow_imp.g_varchar2_table(67) := '0223E033E705C8DC00A72E128F527B26E18A14688980D192BD702714A000052840015709383F182600CE6F434640010A50800214A85B800940DD645C810214A00005BC2EE086F89900B8A1151903052840010A50A04E0126007582B138052840010A785D';
wwv_flow_imp.g_varchar2_table(68) := 'C01DF1330170473B320A0A50800214A0405D024C00EAE262610A50800214F0BA805BE26702E09696641C14A000052840813A049800D481C5A214A0000528E07501F7C4CF04C03D6DC9482840010A5080029605980058A662410A50800214F0BA809BE267';
wwv_flow_imp.g_varchar2_table(69) := '02E0A6D6642C14A000052840018B024C002C42B118052840010A785DC05DF1330170577B321A0A50800214A08025012600969858880214A00005BC2EE0B6F89900B8AD45190F052840010A50C0820013000B482C42010A5080025E17705FFC4C00DCD7A6';
wwv_flow_imp.g_varchar2_table(70) := '8C880214A000052850538009404D2216A00005284001AF0BB8317E26006E6C55C644010A50800214A821C004A006109FA60005284001AF0BB8337E2600EE6C574645010A50800214D8558009C0AE3C7C920214A00005BC2EE0D6F89900B8B56519170528';
wwv_flow_imp.g_varchar2_table(71) := '40010A506017012600BBE0F0290A50800214F0BA807BE36702E0DEB6B51C59B56AB9685B0A96B78AD85C4E63EDC602962ECD62F1C23416B878CA40DA5CDA5E5E03F25A90D7445B5E8C56776AF73FAA4FE3A8EA7A962B15142B256C950BC897B6B0A9975C';
wwv_flow_imp.g_varchar2_table(72) := '318FAC5EE4BBFC2E8F6F950A28944B2855CA90F564F97433FCE6500126000E6DB846575BBF0F347A930DD95EB55C41666E0DB77F790EEFFDBBBFC16BFFF6CFF0F37FF31FF0F37FFDA75C3C64F0B7BACDA5EDE53530FD77E7919D5F87BC361AF2226BD646';
wwv_flow_imp.g_varchar2_table(73) := '6C9C584BE75DD17FF4A56AD9ECF437B63258DE5CC77C761577324B98CD2C623A7D1733E945F3F7F9EC0A16736B58DB4A9B8981240CB28D7B4BB308EDB05D37D78109809B5BB78ED894AAA3700B8B6675E77FE5C7EFE1FC8FDEC2CACC020A9B5BE6D1470B';
wwv_flow_imp.g_varchar2_table(74) := 'ABC05DD941407756D2F6F21A38F7C33771F9C7EF2233BB6A879A3DBA0E36FD9B920ACB51BC74FAD2D9CF6597B1924F215DD8D4A3005BE66840B95A9162A8E8FFA4B3DFD2A303D9521EEB3A0158C8AD9889C1527ECD1C2D300BF21F470A30017064B335BE';
wwv_flow_imp.g_varchar2_table(75) := 'D2FAFDB5F11B6DC01665E877E5FA1C0AD93C2AA5323BFF06983A751372B429AF01792DAC5C9BC7DD8F6F3A3594B6D4DBF4D31DBB74FC4B9B6B58D59D7E5E0FEB97F42840453F5E85FCB773D56430439E9572655DB650292255C899A3062B9B1BFAD440D1';
wwv_flow_imp.g_varchar2_table(76) := 'A57F9B3B7BB8E55126006E694997C6B13EBB8CDC6ADAA5D131ACBD0AE4D6D2589B5EDAEBEA9E5B4F3A7FE9B8D7F3197D149F41A6B809E9C4ABBAD3DF2B868C22E44A5BD82864CD5303793D4A2009C25EB7C7F55A2FC004A0F5E6B6DBA30CFFCB62BB8AE9';
wwv_flow_imp.g_varchar2_table(77) := '0A157279940A45FD13FFA7C06702F29A90D7C6678FD8EC271BFD4149A75C28172147FE32D49FD343F9920C34424C1208492424B190F901399D104862D0886DDB611B6EAF031300B7B7B085F8EC3AFC2F55F705FC307C3EF9910B05EE0B188601C3EFBBFF';
wwv_flow_imp.g_varchar2_table(78) := 'BBED7EB0C91F951CF917CB257D7E3FA787EB3750AA969A425541C54C30648E40BEBC05493A9AB2236EB4A1024C001ACAE9DC8DD9E4FDEA0B8091640CC148C7171EE703DE1690D744B42B6E6F043971DEE61A962A253D449FC14A7E4377D1DB13FB9A59A5';
wwv_flow_imp.g_varchar2_table(79) := '742187D456165B7AC4A199FB69CDB6DDBF172600EE6F634B11DA68C4F273F51D3C3D89E458EFE71EE32F14488EF761F8EC217B43B4F92A0019F697897E297D8EBEB28F73FDF522CBFC828DAD348A4C02EAA56B797926002D27B7E70EED3A029098ECC7A1';
wwv_flow_imp.g_varchar2_table(80) := '579EC0E1AF3C8EE4600F02A120946AF33BAB3D9BD0DDB5D24D1EEC0899AF81C32F3D8E435F3F83E4C10177C7BCC7E864D85F3A7F999D9F2EE650AC94F7B8A5BDAD56AE56CC7B05C8E4C0BD6DC11E6B79A1164C00BCD0CA0E8E31100DA1F7F8280E7CFD71';
wwv_flow_imp.g_varchar2_table(81) := '1CFBF63338F9BBCFE1D4EF3DAF9717B8FC9E770C4E7FF705B3EDE53520AF05794DC86BC3C12FEDA6545DCEBD4BE72FE7E2E548BC9ECE3F18EE40D7502F868F4D60E2CC611C78E604269F3C8AD19353E89F1A46AC2B01AB5F457DEA41EE222897194A4262';
wwv_flow_imp.g_varchar2_table(82) := '753D966BAD001380D67ADB726F72402D8B2D2BA72B158C87D17D7418535F7F0CC7BFF3659CD29DC169DDF97179015E3138A5DBFBD86F3F63BE06BA8F0C435E13B0F3571BFEA0B63BFF1264C87F7D2B8352D5DA91BF520A91641CFD078631FAD8414C3E75';
wwv_flow_imp.g_varchar2_table(83) := '0CD2F91F7CF6A4F97DF24BC730AE1382A1E313E81CEC86CFC2E44B99FE20570764F40884D4CBCE4DB573DDBCF128AB70A100001000494441542813006FB433A3A400055C2C2047D9DBB3FDB3E60D7ECA7A18DE4AB8723545472C82B1930730F5E513183A';
wwv_flow_imp.g_varchar2_table(84) := '3589F860979960C95516814808D1DE4EF41C1CC2D8D9C338FCDC6924FA741210F0D7DC7CA95231EF3750D1E717A57E35576081960B182DDF237748010A5080020D15B837DB7F4D1FF9D733E12FDA9DC089AF3D8591270E22DC19DDB54EFE50005DE3FD38';
wwv_flow_imp.g_varchar2_table(85) := 'FD9B5F46A2BFABE665985554CDAB01E47480FC0C077D79A5AA4C00BCD2D28C93021470A5809CF397D9FE1B5B5994EB18F6EF1EEDC791174EA36BA20FD2B92B43ED3AC15629FDBCCF4047228CA9278FA1532701B540E5C83F57CAA3D4E28988B5EAC5E7B7';
wwv_flow_imp.g_varchar2_table(86) := '0598006C3BF05F0A5080028E1290CE552EB55BCBA7CCA1F6521D9D7FEFC420C6F4F9FECE913EF882FE5D3BFE075194D24980612039DA8B9EF1414493F1079FDEE1E7ED5100390DB0C393367DC83BD56202E09DB666A414A0804B042AFA1CBF1CF9CBED77';
wwv_flow_imp.g_varchar2_table(87) := 'E552BF42C5DA1DFE9452E8191BC0F08949F44C0E22100EEE4944E606748FF621DE9BDC757D990C2847FF52DF5D0BF2C9B6083001680B3B774A010A50606F0272E45F306FEF9BC55A3E6DF93A7F19E24F0C7461ECCC21F44CE9CE3F12DA5B053E5D2BD21D';
wwv_flow_imp.g_varchar2_table(88) := '47A42BF6E96F8FFE2623134E9A03F0E848DCF70C1300F7B52923A200055C2AB0DDF917912A64201FEC6375C29FE1F799D7F19F78F949F49847FEFBEBFC85D7170A98A70FE4E7DD9672A50CA9F76E65F85C7B049800B4C79D7BA500052850B780CCA8DFD0';
wwv_flow_imp.g_varchar2_table(89) := '9DBF5CE76FB5F3574A21DED389935F7F0AB181248C40633E44492905C882DDBF64F85F4E05EC5ECA2ECF7AAB1E4C00BCD5DE8C96021470A0801C419BE7FCF3297DF49F43B96AED837D0CC3804CF83BF8E59366E7AF7C86EEB375C7DD0083E26601A57CB1';
wwv_flow_imp.g_varchar2_table(90) := 'E6960CA5F789C6ECB3E6CE58A02E01A3AED22C4C010A5080022D1590CE5F8EFCE57C7FBAB8A9CFF95B9BF067E8CEBF6F6A0823A70EA06BB40F3264AF54E33AE2622E0F596A61F8240168DC6E6BED6E5FCF7B6D6526005E6B71C64B010A3846A052AD426E';
wwv_flow_imp.g_varchar2_table(91) := 'A9BBB195D147FE59CB9DBFD29D7FCF583F864F4EA1676200FE3DCEF67F1494242599D51472EB994715B9FFB8DFF0EBE37F6600F7416CF40313001B3506AB42010A50E09E80D9F9978B486F65CDDBFB962C5EE7EFF3FB219F9C39F5F4097437A1F397FA15';
wwv_flow_imp.g_varchar2_table(92) := '329B589B5D427A795D7E7DE422DD7EC817808C023CB2906D9EF05E45980078AFCD1931052860730139C22E554A4817B275CDF6574A211C8FE0D84B8FA373A407FE50A0A1914ABDAA952A96AECE61637E05C542AD39000A1DBE207C4663261E3634186E0C';
wwv_flow_imp.g_varchar2_table(93) := '4C00F822A00005286033817BE7FCEB99EDFFB91064DABD2C9F7B70FFBF48E7BFB996C6EC859B48AFA56A6E50E72308F983908980350BB7B9801777CF04C08BADCE982940015B0AC811F6BDD9FEE9620E5687FDEF0523EBE7F5F0FCB537CE23757715E59A';
wwv_flow_imp.g_varchar2_table(94) := '47E8F7D6ACFDBD5C2C21BBB88EABBFFA04D9D514AAE5DDAF44904E3FE2EF805F1FFDCBA980DA7B6089560B300168B538F747010A5060070139E72F47FEF2C13ED2F9CBCF3B14ABF950A958C4CACC026EBF77196BD34B28E50B35D7A955A0B455C4C69D15';
wwv_flow_imp.g_varchar2_table(95) := 'DC7CE712966ECDA36421B108E88E3F198A99E7FF95B27B0A504BC09DCF33017067BB322A0A50C04102956A0572E4FFD96CFFF2BE6A5FA954B078730E73176F617D7619D281EF7583D2D96FCCAD60FEC22D2C5C9F858C04D4DA961CFDCBB97F19015050B5';
wwv_flow_imp.g_varchar2_table(96) := '8AF3F93609300168133C774B010A504004AAA8A2582E2153C89AB3FDCB3A1990C7F7BB54F410FDC2B559DC39770369391D502CD77D4BDE4AA98CF4C23AE6CEDFC4DCE5DB906D5AA957D0F0231A089B93FF94525656696B19AFEE9C0980575B9E71538002';
wwv_flow_imp.g_varchar2_table(97) := 'B6102855CA90DBFBD6736F7FAB15970E7BF1C61CAEBD7E0E9B2B69E80CC0EAAA66B9FC5A1637DF3A8FBB57672C77FE72C99F1CF9C70211731BFCC7BE024C00ECDB36AC190528E0720139CFBF9A4F2355C8A1A24702AC842B07D44A593FAA96D301A9C535';
wwv_flow_imp.g_varchar2_table(98) := '5CF8D9BB48DF5D47B950FB4E8272E49F5D4CE1F26B1F626D7EC572E7AFF4707F221845A73EF76FD451472B7137AF8C77B7CC04C0BB6DCFC8294081360BC8657EF54EF84BF6F560F2C4210C1F18B35CFB52B1848DA5555C79ED23ACCD2C61B78981325F60';
wwv_flow_imp.g_varchar2_table(99) := 'FDCE0A2EFDF27DACCEEAB25BB5AEF5FFAC1A9DBAF3970420E80B4029F5D913FCC996024C006CD92CAC140528E00501B9CD6FD9E21DFEA43FEDEAEFC1C0F810FAC606D1AFBF0F4E8C20100C58A292D301ABB38B98FDF83A56A717774C02CCCE5F77FA331F';
wwv_flow_imp.g_varchar2_table(100) := '5DC3CAEC82A5D9FEB273030AF16004895014215F104E3AFA97FA7B7531BC1A38E3A6000528E01401652824BA93189C1C4172A007A14807A29D318C1C9E40D7402F821D214BA1C87D02166FDEC1FCC55BE6AD7CA5C3BFB7A2CCF64FCDAF62EEC26D2C5C9B';
wwv_flow_imp.g_varchar2_table(101) := '81DCF4E7DE73BB7D9719FF914018DDA1043AFC21F80C762B70C8175BCA210DC56A528002DE1490CE3F128D60FCE81492FDDD0884822684E1F3219288624C3FDEAD93027FC06F3E5EEB1FE9D817AEDDC1F40757915E58839CEF9725BBB8615E3170F7CAB4';
wwv_flow_imp.g_varchar2_table(102) := 'F5CE5F1FF987F5117F4FB81361E9FC95D3BA945A5AEE7E9EADE5EEF6657414A080830564D83F128BE0C8932791E8EB863F18F84234F79280BE9101E8FE1856BE642460F9F65D5CFEBB0F91B9BB86B43EF2BFFAEB4F307F5977FE556BF710567A47D16018';
wwv_flow_imp.g_varchar2_table(103) := '7D912E4474E7AF943CA21FE4FF8E116002E098A66245294001AF09247ABA3079E230C28918943E0DF0A8F883E10E0C4E8D62E4C038AC2601D05FF291BEE77EFA0E3EF9E9DB58BFBB02490CF4C396FE4F0463E8D2C3FEF2697F9656B06121AF57890980D7';
wwv_flow_imp.g_varchar2_table(104) := '5F018C9F0214B09D805240B71ED61FD29D7AA237099FDF07A5F4838FA8A9E133108E47219303250990F28F28FAB987E5AE7E92046457D3909F3FF7E4237E51FAF14EDDF97786A2E627FD198ADD882671E4FF6C3947361B2B4D010AB85540FAF9A41EEEEF';
wwv_flow_imp.g_varchar2_table(105) := '1F1B42529FF3DF69D87FA7D8A5D38FE89182818961F48F0E22B0C3E9829DD6ABE7A8DFD095931BFCC875FE1DBE90C327FCEDA4E1ADC7980078ABBD192D0528606301A514629D090C4D8D99B3FBEF4DF8B35A654902C28928460E4F42928860286875D59A';
wwv_flow_imp.g_varchar2_table(106) := 'E57CFA483FECEF40774702617F909D7F4D31FB1730EC5F45D6B0D90216E7FC34BB1ADC3E055C21201F935B2D9751A9589B4C772F68C3302013FE0E9C3EB27DE41FFAE284BF7B6577FB2EDB09C723983C7108DD837D7A24C0BF5B714BCF193A3191DBFBF6';
wwv_flow_imp.g_varchar2_table(107) := '8593BAF30FC10DC3FE960277792126002E6F60ABE13109B02AC57214D85D606B2D87DC721A855C7EF7820F3CABFB5744F5F0FDA1C78F21D69D80A1CFF93FF0F49E7E0CC5C21839340E399560186A4FDBB8B7920CFBF774749AE7FCEF3DC6EFCE176002E0';
wwv_flow_imp.g_varchar2_table(108) := 'FC366C4804F206D4900D712314F0A8805C5F9F5FCDE2F28FDFC5EC7B57512ED7BEE7BE50C9DF5E575F8F799D7FB42B016518BB4EF89375AC2C4A2974E824A07F7C1823072720230356D67BB08CA40D32E12F198A23E40F98F5524A1E7DB094137F669D45';
wwv_flow_imp.g_varchar2_table(109) := 'C0907FB8785B807FCFDE6E7F46BF7F814AB982FC6A0657FFE63DDDF95F41667903563EDB47FEF6BAFB7B2113F7127D5DF005FC6627BBFF1A6D6FC1F0F9100A77404E0928555FC72DA5E3C12838DB1FAEFD6202E0DAA6656014A0402B042AC532720BEBB8';
wwv_flow_imp.g_varchar2_table(110) := 'F6B30F71FDEF3E36EFAE57AD546AEE5AFA6339F21F9CDABEBDAFD5D9FE3537FC4001B9B42FBB91C6C6D25A5DD7F8FB9401E9FCE5C83FEC0FB96EC2DF03449EFE910980A79B9FC1538002FB1190CE3FAB3BFF3B6F5F3587FE373732A85A98FC27C3F1B164';
wwv_flow_imp.g_varchar2_table(111) := '0243E675FEDD684AE75F2A23B396C2E2F43C96EE2CA0622129110BE9FC65C25FB73EE71FF607C1097FA2E2CEC57067588C8A0214A0407305A4A3DF5ACB62F6AD2B38F7E7BF4631BF656DD8DF5008EB73F3074E1D41A7799DBFBFA11595EBFA65C9A7B398';
wwv_flow_imp.g_varchar2_table(112) := 'BB3E5357E7AFA010097460FBDEFE6EEDFC1BCAEDE88D31017074F3B1F214A040BB04B656B3B8F6D30F70E5A7EFA3502858AA860CFB27BA3A71F0F451C8843FC3EFB3B45E3D85B63BFF1C6E9EBF8AB5A515CB47FE4AEF241E8C403ED52FE40BEADFF8BFDB';
wwv_flow_imp.g_varchar2_table(113) := '059800B8BD852DC4279700CA62A1685B8A6C2EA570E7D797F1FEBFFF295EFBB77F869FFF9BFF80BFFDD77FCAC5E606BFF89FFF235EFFDFBE8FF3FFF15758BB3C87D2A6B54EB22D2FB23A762A47FEF9E5342EFCC5EBB8F5C605C8B0BFD5097F3D837D183B';
wwv_flow_imp.g_varchar2_table(114) := '3285584F270C9F01A5A4DBAD63E7358A964B2564F5B0FFF58F2F21B5BA81B23E0D506315F369A9859CEFEF0AC5D1610EFBCB23E653AEFB87017D26607CF6237FA280FD04F22B19CCBC7919977FF22E66DEB98CF98F6F62E1FC6D2C5E98E662730369A7B9';
wwv_flow_imp.g_varchar2_table(115) := '8FAEE3D6EBE771FE2FDFC0CAA53B2866F2F67B91D5512339E72F9DFF951FBF873B1F5E4776350539E2AEB509E9E765B6BF5C9217D79DBFCFEF6F7CE75F2C21BDB2813BD7A6B1B1B26EB9F33774E5E4D6BE8960F4D3CE9FDD42ADF674CBF36C69B7B4A44B';
wwv_flow_imp.g_varchar2_table(116) := 'E358BB7E17B3EF5EC1C2E519E4363296DFD45CCAE1A8B0E448B9982F20B5B88699F7AE62EEBD6BC82E6E382A86072B5BD11DAC4CF8BBF5DA79DCFCD579645774E76F61C29FEE5FD1D9DB8DFE896174F675C11F0C3CB8D986FC5CD647FE697DC4BF38338F';
wwv_flow_imp.g_varchar2_table(117) := 'E5F945C865895636EC5306E4263F72F4BF7DE4EFF62EC18A8A77CAB0B5BDD3D68E8C74E9CA2C52F36B8EAC3B2BFD7981053D62919E5FFDFC830EF9ADA287D2B38BFA54D43B5771E1AFDED0C968DAD291BF0CF347E2318C1E9E40B2BFA7299DBF74F6921C';
wwv_flow_imp.g_varchar2_table(118) := '2FDC9EC3E2EC5D48E26585553AFF68A003BD1D9DE61DFE38DBDF8A9ABBCA18EE0A87D1EC45408E5064D9CBBACD5E27BB9A4621BBD9ECDD70FB2D10C8AEE9B6DCDC6AC19E1ABF8BE2C626667E7D11E7F579FF821ED5B072CE5F6A118E4670F4C95348F4CA';
wwv_flow_imp.g_varchar2_table(119) := '91BF5F1E6AF8B2A5FF3E66AFDEC6D2DC82E5CE5FCEF0CBA57EBDE12442FA9CBF52F248C3AB66BB0DB2429F176002F0790FFE663301E5D36F4C865E6C562F56C73B02F9E50C2EFCC51BB8F2B71FA0B0656D22A3F4A79D3D49C8BDFDE5D3F96424A0D16295';
wwv_flow_imp.g_varchar2_table(120) := '72598F446470EDA38B585B5CA9ABF39773FE72A95FD068FCE98846C7C9ED354FC068DEA6B965A708C81500B2D8B1BEE17804C18E901DABC63AD52910494411E870CEE56532B42E13FE2EFFE81DCC7E781DF954D652C4D2F977F5F762E4D004A2C938A4F3';
wwv_flow_imp.g_varchar2_table(121) := '57AAB149ACDCE12FBD9AC28D4F2E23A34756CAFA148595CA492DE47CBFDCDF3FE40B347C22A2953AB4AF0CF7FCB00013808745F8BBAD047AA68610EBEFB4559D5899BD09F41E19D16D99DCDBCA2D5EAB522C63539FF3BFF6930F30F3CE156457366075B6';
wwv_flow_imp.g_varchar2_table(122) := 'BF74FE03E343E6843FB9B77FA3AB2E9D7F6A651DF33766B0BEB48652C9DA870E19509023FF0467FB37BA491CBB3DC3B13567C51B2B2087068DDD6243B6D673641883A7A7901CED4328DA611E4D3564C3DC48D3059452E6A4B7483286BE4323187EF21062';
wwv_flow_imp.g_varchar2_table(123) := '835D4DDFEF7E77209D7FF6EE3A66DEBC84AB3FFF1099A575589958A7F4A9AA447712839323480EF498B1EFB72E0FAF2F47FA99F534CCD9FE738BB09294C8367CCA30EFF0D7154A78F6523F71E0F2790126009FF7F0EE6F557B861E1EE8C4C1AF3D8E53DF';
wwv_flow_imp.g_varchar2_table(124) := '7E16A34F1C46DFE111744D0D2039D1CFC5E606DD078730707C1C53CF9EC4937FFC350C3C368960226CCF17DAA7B5DA9EEDBF81E9D74111CB1400001000494441542FE0DC5FBC8E7C2667A9939561FE78670293270E2169DEDE37F0E9161BF34D3A7A39E7';
wwv_flow_imp.g_varchar2_table(125) := '9F594B9947FE4BB30B96EA257B97CE5F66FBF787BB20C3FE864E06E4712E146002C0D700F4819AB9D89522DC9FC0D84B27F0F4BFFC4D7CED7FFC637CEB7FF9AFF0EAFFFA4FB9D8DCE037FEA7FF125FF957BF8FC7FEE465741D1F813F1284DDBFEECDF6BF';
wwv_flow_imp.g_varchar2_table(126) := 'F8837750AC63C29FCCF63FF4C471C4BA3BCD8FF46D789C3A41CF67363173F90696EB38F29781BD58208CDE70D2E3B3FD1BDE22AED820130057342383A00005F62B905FCEE0F20FDFC5F5BFFF18A562D1D2E62479EEECEDC6D4A9C39009ABCA902ED7D2AA';
wwv_flow_imp.g_varchar2_table(127) := '960BC964C4AC1EF697DBFBCAC43F190DB0B2B2824232144757471C01CEF6B742E6B93286E72266C014A000051E109061FFCDE53464B6FFCC7B57EABBBDEF40AFF991BEF1EE240C9F0F4AA907B6BCFF1FCBA51264D87FFAD275A4F5F07F49FF6E65AB0A0A';
wwv_flow_imp.g_varchar2_table(128) := '5DA11864C29F7CB08FD1E07A59A9839DCAB02E3B0B3001D8D9858F5280021E10A814CB90097FD77FF621A6DFBC84F4E21A2C4DF85340575F0FFAC786B07DCEBFF137F991D9FE99D514166EDFC1EAC28AE5DB60FB94A13BFE08123A01E0ED7D3DF022DE47';
wwv_flow_imp.g_varchar2_table(129) := '884C00F681C755294001E70A981DECFC1A6EBF761E177FF836A4B3B5D4F91B0A32DB7FF8D038927A04A099F7F6BFAB3BFF85E979581DF6F72B1FE49C7F4F4727B68FFCF9160F38F735DAEC9AF3D5D16C616E9F0214B09D809C57DF5C4AE3CE3B5771F147';
wwv_flow_imp.g_varchar2_table(130) := 'EFA054D0E7FC2DDC0DCB300C4462114C1C3FD894DBFB4A475FA954905BCF60FEE62CF632DB5F3AFFA02F0083C3FEB67BDDD9AD424C00ECD622AC0F0528D07481ADD52C6EFEE263C891BFD9F95BD8A3F4A7D1CE180E9D3961CEF6377CCD79FBCCA773B87D';
wwv_flow_imp.g_varchar2_table(131) := 'F1BA1EF65FB67CE4AFF439FF7830827B9DBF85703C5384813E5AA039AFE047EF8FCF5080021468ABC0E6520A977FF80E6EBF7911855CDE525DA4F39773FEE3470F209A8C413A7FA594A575AD162A97CA904FF5BBF1F165A4D75390510A2BEB2ADDF97786';
wwv_flow_imp.g_varchar2_table(132) := 'A248066308F8FC504A3FA2172BEBB28CB705980078BBFD193D053C23706FB6FF85EFBF8999772E23B36CFDF6BE3D43FD183A3086445F177CFEED4EB69170A56209E9D50DDCBE700D1B2BEB90DFAD6C5F77F5E66C7FF3DEFEFEA01EF6E75BFAE7DDF8DB6E';
wwv_flow_imp.g_varchar2_table(133) := '027CB5ECA6C3E72840015708940BA5FBB3FD67DEBE8CEC4ACAD2F0BA1C48CB91FFC0F83012BD49F803FE867B48679FD69DFEC2ADEDD9FE3207C0CA4EFCCA406730CAD9FE56B05866470126003BB2F0410A50C02D02E6A57E0BEB987DEB0A2EE9A1FFCD54';
wwv_flow_imp.g_varchar2_table(134) := 'D652E76F180662C9C4FD23FFE6CCF62F43AEF35F9C9EC7D21DEBB7F7F52B1FA281307AC209CEF6C7A3BFF8CCEE02C6EE4FF3590A508002CE1590CBFA3657D2987DF332CE7FFF0D140B054BC12843211C0BE3C0E9A3E8ECEF6AF891BFCCF697259FC961EE';
wwv_flow_imp.g_varchar2_table(135) := 'DAEDBA3A7F034A77FE1DD89EF027C3FECA524C2C448187058C871FE0EF14A00005DC2290D79DFFB59F7E80AB3FFBC07AE7AFFBD34457270E3E760CD1641C86CFD7700EE9FC3765B6BF3EE7BFBEBC666944422AA174E72FB3FDBB3B1208FA02F21097470A';
wwv_flow_imp.g_varchar2_table(136) := 'F0895A024C006A09F1790A50C07102E691FF520A17FEFC0D73B6BF0CFB5B09422965DEE16FECE8D4FD4BFD94525656B55CC6BC01D16A0A373EBA644EF893D9FF565656BAF3EF927BFB87B63B7FA59495D55886028F146002F0481A3E41010A385140CEF9';
wwv_flow_imp.g_varchar2_table(137) := 'E7163770E5C7EFE1CE47D7915B4D5B3AC2564AA17BA017031323907BFBFBFC3E28D5D84EB6542821B5B28E3B7AD87F63D5FA6C7F43194886628807A308F9039CED6FE185C922B5059800D43662090A50C0210232DB3F73770DB75E3B8F5BBF3A5F57E79F';
wwv_flow_imp.g_varchar2_table(138) := 'ECEDC2C0F8109203DDF007FD0D8F588EFCD3BAD397097F2BF34B96AFF3F7E9CE3F1E88E804208E0E76FE0D6F172F6FD0F072F08C9D0214708F805CE72F47FE77DEBE8A0B7FF5A679531D39D75E2B429FCF40341EC5E8E10974F6F7E8CE3F506B95BA9FAF';
wwv_flow_imp.g_varchar2_table(139) := '94CBC86E64B0707BAEAE097FD2F947FC1D90097F217DCE5F4602EADEB9275760D056049800585162190A50C0D602E639FFE5346EFCE2639CFBFEAF61F5F6BE865CEA9788E3E853A790E8EBD29D7F638FFC250191BA49E73F7BE52696E7AC5FEA279D7D4C';
wwv_flow_imp.g_varchar2_table(140) := '1FF9F785BBCC617FA594ADDB8095739E001300E7B5196B4C010A3C24706FB6FF8DD73ED19D7FE9A16777FE552985445727264F1D46871E01503A19D8B9E4DE1FADCA07FBA432B875FE2AB667FB5BDB9682326FF2B33DDBBFB14989B51A38BB146B6F4D80';
wwv_flow_imp.g_varchar2_table(141) := '0980352796A200056C28502955905BD8C0A51FBC839977AE602BBD69A9964A2974EBE1FE9143E39F5EEA67402965695DAB85CAA512D22B1BB879EE8A79B39F72A96C6955050599ED9F08C610F4F9A194B2B41E0B51A05E01A3DE15589E0214A0801D0464';
wwv_flow_imp.g_varchar2_table(142) := 'B67FF6EE1AAEFEE47DCCBEAB3BD9A5F53A66FBF7A05F6EEFAB87FD7D017FC3C3D99EF097323FD2777D690D258B9DBF017DE41F8A21118C72C2DF9E5B852B5A1530AC1664390A5080027611A8144BC82E6E60FAF58BB8F68B0F91D147DA72BEBD56FD94D2';
wwv_flow_imp.g_varchar2_table(143) := '1D6C4F12831323D89EEDDFF8097F66E7BF96C2D2CCBC3EE7BF682929917ACB843FB9BD6F77286E9EF33714DF9EC5854BF304F80A6B9E2DB74C010A3441A0522C2333BF8E19DDF99FFFCB3750C86D01D5DA3BF2F97C882662983871109DFD72A95F633B7F';
wwv_flow_imp.g_varchar2_table(144) := '4940E44A04B9B7FFDD9B3358989EB7DCF9CBBDFD63813064C25F90B3FD6B37E62E25F89475012600D6AD58920214B081C0D65A16B75F3B8F737FF93A2C9F57D747FEE15804479F3C69DEE1AF19C3FE92846CA6B398B92CB3FD972C77FE4A0FFB4BE7DF1B';
wwv_flow_imp.g_varchar2_table(145) := '4E9A47FE4A291B28B30A5E106002E08556668C14708940EEAE4CF87B1B377E750E653D1260252CA514927DDD983A29B3FD2350AAF11DAC5CE79F59DBC08D4FAE20ADBFCB6880A5BA414126FC253BE2F01B8D9F8B60A50EEE2AC368EA1130EA29CCB214A0';
wwv_flow_imp.g_varchar2_table(146) := '0005DA21502957B0B998C2E51FBD83D9F7AF61733D63A91A4A29740FF662686A04B19E4E183E1F946A6C02502E9690594DE1F6A51B48AFA72C4FF8930064B25F3C18C1F64D7E1A5B2FD93E170AEC26C00460371D3E47010AB45D406EEF9B9D5FC3A5BF7E';
wwv_flow_imp.g_varchar2_table(147) := 'CBFC609FCCB2F5D9FEBD43FDE6843FF39C7F1366FBCB0D8752CB6B98BB318DB58515CBA724EEA146FCA14F3B7FBE15DF33D9CF77AE5B9F005F75F579B1340528D04201E9FC33BAF397D9FE577FFE213637B29626FCC91DFE3A7B9218D447FEE61DFE028D';
wwv_flow_imp.g_varchar2_table(148) := '9DF0270472E49F5EDDC0E2CC5D2CCF2DC943752F8632A0F47F75AFC81528D00001A301DBE0262840010A345CC0BCC9CFE20666DFBA8CF37FF586E5A36BC3E743241EC5F8B10388EB24C0DFE0237F39BF2FA724B2EB69DCBD395BD7BDFD1B8EC40D3E20C0';
wwv_flow_imp.g_varchar2_table(149) := '1FEB15600250AF18CB5380022D11C8AFA4CD7BFB5FFAF13B754DF88B75C671E8CC31C4BAE59C7F13DEE2AA403E9DD5E7FCAF637571C5F26CFF96A0712714A843A0097F1D75EC9D452940010AEC20604EF8FBC1DBB8FDD6451436B77628F1C5879452E8EA';
wwv_flow_imp.g_varchar2_table(150) := 'EFC1F8D149443A63307C0694525F2CB88F47E4B24339F2BF75E11A327A04A052AEEC636B5CB59102DC56FD0246FDAB700D0A508002CD11909BFC48E77F4977FE33EF5E41762565E99CBF529FCEF63F308A446F177C7E7FC33B7F99F0975E5EC7F4C5EBE6';
wwv_flow_imp.g_varchar2_table(151) := '07FB948AD63E74A83952DC2A05F62FC00460FF86DC020528D000817B13FEAEFDF4034CBF7D19D9B5B4E5CE5F8EFCFBC78690D0E7FC9B71931FE9FC532BEB58B87DC71CF69791800684CC4D344C801BDA8B001380BDA8711D0A50A0A102157D342D97FAC9';
wwv_flow_imp.g_varchar2_table(152) := '84BF8B3F7E1B398B9DBFE1F321DED589617DE49F6CC2ED7D2548E9ECE53AFFA5E9792CCD2DF29CBFA070718580E18A2818040528E058816AA582CDA534A6DFB8B47D7B5FAB77F8330C4462111C387D1889BE2EF88381861AC86CFF6AA58ACD541673D7A7';
wwv_flow_imp.g_varchar2_table(153) := 'D9F93754B7B11BE3D6F626C004606F6E5C8B0214689040EEEE062EFCE59BB858E76CFF783281C34F1C47547F377CBE06D5E6B3CD48E79FDB48E3C6B9CB585D5AB17CE41F0805108A7440BE7FB635FE4401FB093001B05F9BB04614F08440551FF967E7D6';
wwv_flow_imp.g_varchar2_table(154) := '70E987EFE0CE87D751CA172CC5ADD467B3FDC3891894A11A3EE14F6EF29359DDD09DFF1573B67F558F0458A99C74FA875F398BB12F1D853F14B4B20ACBEC5B801BD8AB001380BDCA713D0A5060CF0232E12F3BB78ECB3F7E5777FED7B0B951DFBDFD0726';
wwv_flow_imp.g_varchar2_table(155) := '86CD9BFCF8FCBEA674FE32E1EFCEB5DB48E92440E600D40C54C13CEA3FF4F2198C3F7B0CF1E16E18FA1445CDF55880026D146002D0467CBBECBA5A851EDEB44B6DBE588F62760BA9E965CCBF7F1DB77F7D0137FFEE13DCE05297C1ADD7CE61E6CDCB583C';
wwv_flow_imp.g_varchar2_table(156) := '378DCDE5342AA5F217A15BF48874FE993BAB663BDE7EE3425D97FAC9A7FA0D8C0FA15913FEE4D23EF3F6BED3F358B9BB0C2BD7F92BA5D0118F9847FD075E7E1C89F13EF882FE1669723714D8BB001380BDDB71CD160894B74A58BFB9805BBFF8049FFCE9';
wwv_flow_imp.g_varchar2_table(157) := 'DFE3DD7FF73778EBFFF821DEFADF7FC0A50E83B7FFCF1FE183FFE767B8F89F5EC7DC3B57B1B59E453B92804AB18CDCC20666DEBA8C8B3F7A1BF9F4A6CE3E6BBF90E4683AAA87FB470F4DA0B3BF07FE064FF8931A54CA6564D7D3589C99B77E7B5F39F28F';
wwv_flow_imp.g_varchar2_table(158) := '8731707C1C27FFE173888D747FD6F9EBC45AB6CB8502761530EC5A31D6ABB502FA20A6B53BB4B8B7CCCC322EEB73C4E77FF41656661750C86FE9D10ABEB35AE4BB5F4C86B1A5739BBB780B6FFFBF3FC1DCDBD7741290BBFF7C2B7EA8EA73FED2F9DFFAFB';
wwv_flow_imp.g_varchar2_table(159) := '7338FFD76F58BFB7BF1E4A8FC4A338FAD44924FA92F037E1DEFE557D8E5FEEEC377BE5964E00EE5A7E8D85C21D183D7B1867BEF73222839D30FC0FBCA5EAE4A015AEDEDE07A3DF8FC003AFD6FD6C86EB3A5D404E03D83186F98F6F615D270176AC9B93EB';
wwv_flow_imp.g_varchar2_table(160) := '34F3F665A4E7575B1A426E7E0357FEE67D5CFBE5477AF4C1DA2D749552487477E2C0E9237A983D0A6534FE2D4B86F9B31B69DC3A7F0D1BCB6B963BFF402880035F398DA3AF7E091D3DF12F5A324FFDA2091FB19540E3FF9A6C151E2B6359C0A6472BE9A5';
wwv_flow_imp.g_varchar2_table(161) := '753D4C9CB51C060B5A13482DAC612B97B756789FA5E4548339DBFF47EF60F683ABC867AC8D3C28A5D03DD08B9143E3887525CC49754A35F6852AB3FDD32B1BB879EE2A32EB2994F569002BE1CA290899ED3FF1C209440793F8DC91FFBD0D34B6AAF7B6CA';
wwv_flow_imp.g_varchar2_table(162) := 'EF0F08F0C7FD093001D89F9F2BD696F754BBBE57C91B74A564ED68D1158DD1A2204A5B05545BE05A299690995BC3D59FBC8F3BBAF3CFEACE16168E8C95DAEEFCFBC78790907BFB3778D85F98CD097F6B29CCDF9C318FFCE534893CBEDBA29442301CC2D4';
wwv_flow_imp.g_varchar2_table(163) := 'F32731FEDC7124C67AE10BED30E14F97DB6D3B7C8E02761030EC5009D6A1BD0232FC2F4B7B6BB1F3DE031D417046F5CE36FB7934D011D247ADBEFD6CA2E6BAE5AD22D2B3ABB8F1F38FCC61FFEC8AF57BFBCB6CFF21B9BDEF4037E468BBE6CEEA2C209D7F';
wwv_flow_imp.g_varchar2_table(164) := '4A0FF7DFBD79072BF34B9686FD9552082763187FE6188E7CEB2974CA6C7F7D1A60C75DDBF50F6AC7CA3AF541D67BBF024C00F62BC8F59B2A10EF4F229C8834751F5EDC7872A417A158B869A1578A6564E6D720971E5EFED9FB285ABCC98FCFE7C3BDD9FE';
wwv_flow_imp.g_varchar2_table(165) := 'F2C13EFE40A0E17594237DB9B7FFC2ED392CCF2D58EAFC219D7F671443A727EFCFF63702BEDDEB6661A463F70DF0590A3457800940737D1DB175FDDE267FE9C2680000100049444154EF6FB6ACEBE0E929748EF6D9B26E4EAED4E8D3472137AB69560CF9';
wwv_flow_imp.g_varchar2_table(166) := 'E5346EBD761E177EF0262A16EF39A094423816C1D1274F21D19744333ED54FE2CDA5B298B97CC3F291BFAC13D0A72064B6FFE9EFBE80C8C043B3FDA5C0C38B8E05763DAFF6705D1DFA3BABBD7F012600FB3774FC1664B452163B06121DEEC2D1579FC2C9';
wwv_flow_imp.g_varchar2_table(167) := '7FF00C7A460710D443D74AF19DB5DEB692CE34DA95C0F0F1493CF327BF81C127A6108C37670420A387FD2FFEE06DDCFCF579C8D1B695BA2AA520C3FE53270FA343D7AB19B3FDA52E99B5346E7E7205E9F594B5237F5D797F300099F077F01B4F20D41DD3';
wwv_flow_imp.g_varchar2_table(168) := '8F58F85FFEA0380260018A45DA2960B473E7DC37056A09C804ABCEA97E4CBE7C1AA7BFF7153CF55F7F13CFFC8B7F8067FEDBDFE45287C1D3FFFC559CFD275FC7F1EF3E87E1A70F23948CC078F09AF55A0D61E1F94AA962DEE467FBF6BED7B1B961EDEA0D';
wwv_flow_imp.g_varchar2_table(169) := 'A514BA077B3134358A588F3EBAD6A701946A6C9227E7FCE50E7FB72F5CDF9EED6F7154423AFF832F3D8631F3F6BE5DA839ECFFA05363437870CBFC1924688480D1888D701BCE1690F75A59EC1A45201232675B0F9D3D8889E74F60EAA5D338C0A52E83C9';
wwv_flow_imp.g_varchar2_table(170) := '174F62F499A3E83F356E5EB36EF87D68E497DCB13133B78ACB3F7A17D36F5F42767903FA10BBE62E94D29DFF402F062746D0D9DFDDF09BFC48054A85223696D6307F7D066B0BCBB072A99F520A1D89080E7DF5314C7DF5343A27FAE00B056473D616BDBE';
wwv_flow_imp.g_varchar2_table(171) := 'B5822C4581F6093001689F3DF74C01570898B3FDEFAC989FD370FD971F219FB2769DBFDCDEB7B3A70B839323FA9C7F57733AFF6209F2C13E4B33F3DBE7FC2D5C83A89442B82B8691338770F89B4F9AC927AF44B1D74B95B5698C001380C638722B14F0A4';
wwv_flow_imp.g_varchar2_table(172) := '804CF0CBCEAF63E68D4BB8F0D76FD539DB3F8A89E307D0D9D7F8CEBFAACFC1CB1DFE326B29C8A57ECB771675D76FEDA47C30DA81A1535338F5DDE7111D4A829DBF275FDA9E089A0980279A994152A039029B773770FDE71FE2F24FDF837C988E95BD28A5';
wwv_flow_imp.g_varchar2_table(173) := '104BC671E889139089898D3E1D61D641F7F5B95406D3176F606D71C572E7EF0F063076F6304E7CE7CB08F7C5015D57F0CB6602AC4EA3049800344A92DBA180C70464B6FFB9BF781DB7DEB868F9C8DF3014BAF4B9FEC913871049C460F80CDDC7AA86CAC9';
wwv_flow_imp.g_varchar2_table(174) := 'DD2365C2DF8D8FB767FB572AD6EE2429F7F63FF2CA591C7EF529F3523FB91241A9C6D6ADA181726314D8A780B1CFF5B9BA0B04F468A995F95A2E8894213442A05C282173670D17F590FFFC2737914F5B3DE7AFEECFF68F76C59BD2F99B13FE96D7307DE9';
wwv_flow_imp.g_varchar2_table(175) := '8679A99FA55109DDC907F491FFE1AF9FFD6CB6FF7E2749CA1F5523B0B98D2F08F081C6093001689C25B74401D70BC839FFCD95346EFCED87987DEFAAE54BFDB68FFC7BD13F366C4EF8F3F9FD0DB7924BFD3696D72177F893617F2B9DBF520A91CE28A65E';
wwv_flow_imp.g_varchar2_table(176) := '388589174FA273BC1775CDF66F7814DC20055A27C004A075D6B6DD937E0FD4C3B0B6AD1E2B6613019958975FCF62E1A39BB8F2B30F90CF6C5AAA99CFE743BCAB1343726F7F3DFCEF6FE2ED7D17A7E7B132B764A95E4A29F352BFA1C7A6CC73FE89D11E34';
wwv_flow_imp.g_varchar2_table(177) := 'ACF3D7DBB6540916AA5380C51B29C004A0919ADC16055C2C2043FF4BE767F4D0FFDB28160A96AEF3370C03917804071E3B8A667CAA9F2425D54A15B98D0CE66FCCE8CE7FD1F284BF40471003C72770EABB2F202CB7F7AD756F7F17B72D43F3A60013006F';
wwv_flow_imp.g_varchar2_table(178) := 'B63BA3A640DD020B1FDEC4757DE49F968FF4B5B0B661287DE49FC0E1B327F5307BCC3CE76F61B5BA8A48E79F594FE1E6B9AB585D58B6DEF9870238F0E2299CFE7DDDF9F725EADA270BB74F807B6EAC001380C67A726B1470A5C0CAC53BB8F38EEE646716';
wwv_flow_imp.g_varchar2_table(179) := '2D1EF92B74F5F762ECE894F9013F4A297D9A4935D446EEED2F37F9B9F9C9556436D2A867B6BFDCDB7FF2A5D308EBCE5FE944A5A115E3C628E0100126000E6928569302ED109021F652AE803BEF5DC5C2A5694B97FBC9917FF7601F062686211FE92BD7F9';
wwv_flow_imp.g_varchar2_table(180) := '2BD5D8CE5F26FCC948C4DCB569A4D736502E956AF3E82AC875FE875E3E83F1678FC13CE71FF4D75E8F256C22C06A345A800940A345B93D0AB8484086D8376E2F61E9CA2C32727F7F0BB1257BBB31303E64DEDB5F3E85D0C22A751529154A48AFAC63617A';
wwv_flow_imp.g_varchar2_table(181) := '0EAB77972D1DF92BA5D0118F60ECA92338F0F2E3488CF7356EC25F5DB567610AD8478009807DDA8235A180AD04E4E85FEEF33FFBE6256497366AD64D2985683C86D1C393E8EC6BCE07FBC84D7E64D85F6EEFBB38336FE99CBF520AE1640C23670EE2F13F';
wwv_flow_imp.g_varchar2_table(182) := 'FC0A62A3DDE0ED7D6B36A7ED0AB0428D17301ABF496E910214708340B55C4121B589990FAF21B79EA91952B02384C9E30711EB4EA0D147FE928C542B1564373298BB3E8D95796B97FA49A583E110861F3FF0D96C7F1FDFF6C4850B05F897C0D7000528B0';
wwv_flow_imp.g_varchar2_table(183) := 'A340616313F36F5D43219B8774C03B16FAF4C18E481803634388F77541CEF97FFA70C3BE552B5564D6D2B875EEAAF9E97E557DEC6F65E3727BDF035F398DA3AF7EC9FC18642BEBB08C1D0558A7660818CDD828B749010A385B403ADC9CEE706FBE79A1E6';
wwv_flow_imp.g_varchar2_table(184) := 'C43FC3E743B43386BEF141F883FE86CFF63727FCAD6E989DBFCCF62F97CB9670FDC10064B6FFC40B27CC4FF533FC7CBBB304C7429E11E05F84679AFAD181CA6DCB657974093EE3358162760BA9E965ACCD2E416EFFBB5BFC91580432F12F1C8FEE566C4F';
wwv_flow_imp.g_varchar2_table(185) := 'CFC9BDFD65C29FDCE46763651D563A7FA51464D87FEAF993187FEE381263BD68F9397FFE41EDA9BD1FB5121F6F8E80D19CCD72AB14A0809305F2AB69AC5E9943B958DC350CC33020B7F94D0E749B47FE4AA95DCBD7F3A474FE1BCB6BB87B6B0E4B7716F4';
wwv_flow_imp.g_varchar2_table(186) := 'A07FB5E6EA4A6D4FF81B7FE6188E7CF349DEDBBFA6180B7859800980975BFFD3D8F57BA67EF3FEF4177EF3BC809CEFCFE90460E5E67C4D8B50B803B164DCBCD94FCDC275142897CA908FF4950FF659995BB4B6A6CE3DC29D510C9D9EC4C97FF81C62A33D';
wwv_flow_imp.g_varchar2_table(187) := '30027E6BEB36BA94FC51357A9B9EDD1E036F9600138066C972BB1470A840B55441762585E5E9859A1174F7F7982300CA68EC5B496E3D8DE94B37CCD9FE557DEC5FB322BA803F10C0E8D9C338FDDD1710917BFBF39CBF56E1FF1478B44063FF6A1FBD1F3E';
wwv_flow_imp.g_varchar2_table(188) := '43010A3844207B771D993BAB166EF9AB10ED8AA323166E586472E49F594DE1F6C51BE6257F56372C13FE64B6FFC16F3C815077CCEA6A2CE7000156B179024C009A67CB2D53C09102A93B2B589FAE7D9D7D341E4547240CC3EF6B489C72CE3FB5B4869B9F';
wwv_flow_imp.g_varchar2_table(189) := '5C416AD5DA843FD9B15CEA77E41B6771E0ABA7111FE986C14FF513162E14A829C004A026110B50C03B029572051B733A01B8B35C33E8447727021D4128A54FBED72CBD7B81E256011BBAF39FBF398B7A66FB77242238F8D263ED9BEDBF7B587C76DF02DC';
wwv_flow_imp.g_varchar2_table(190) := '4033059800345397DBA680C3040AEB396416D62CDDF92F26094028B8EF08CD23FFE5752C4ECF63E5EE923EE36F6DB6BF74FE23670EE1F0379FDCBED42F14D8775DB8010A7849800980975A9BB152A086C0C6AD45E456D2BAD4EE9DB0E133104944E1DFC7';
wwv_flow_imp.g_varchar2_table(191) := '2C7BB9DA40EEED9F59DD805CE7BF3C6F71B6BFAE5D30DA818163E338F5DDE7CD9BFCB4FC3A7F5D07FEDF7C01EEA1B9024C009AEBCBAD53C051022BD7E76B7EF08F4F9FF34FF674212047FFFB18FE97BB0DAEDE59C2ED0B37B0BEBC66D94926FC8D9D3D8C';
wwv_flow_imp.g_varchar2_table(192) := '53BFF702C27D71E87310E017052850BF001380FACDB806055C27601E8D6F95B07C4327002BA95DE3F3F9FDE819EA871CFD2B55FFF97FE9F873A90C6E7D7215B72FDF402695AEF95903F72A644EF87BE52C0EBFFA14A28349C8E5874AD55F877BDBE3773B';
wwv_flow_imp.g_varchar2_table(193) := '0BB06ECD166002D06C616E9F020E10904E39757B099BEB19944BA55D6B2C1D7F675F172411D8B5E0434F4A92B199CE6171E62EA62FDD840CF9E7739BA8542A0F95DCF9D7403080C35F3F8BB1678F213EDCC5D9FE3B33F1510A5816600260998A0529E05E';
wwv_flow_imp.g_varchar2_table(194) := '01F9E8DFA50B33286436770DD2A787FF3B221184A26128A3F691B774FA9572199BE92C56661770F7E62CEEDE9A356FF0B3B559FB5306A5324A298462614CBD700A132F9EE4ED7D05C5030B436CBE80D1FC5D700F14A0809D05CC4EBA54C6C2856914B2F9';
wwv_flow_imp.g_varchar2_table(195) := '5DAB1A0C8590E88A4326012AB5730220A309A54209F9EC26B21B69AC2FAE6069FA2E662EDFC2DC8D19A456D62149012C7C29A520B3FD874E4EE2C477BE8CC4680F7CA180853559840214A825C004A096109FA780CB05AAE50A0AA91C16AFDF4161736BD7';
wwv_flow_imp.g_varchar2_table(196) := '68831D41C4BB1278F0CB4C20F430BE7C6C6F215F402E93C3FAC20AE6AFCFE0C6079771F1AD8FEF9FEBB73ADC6F6E5F77FEA17818C38F1FC4E3DFFB2AC2727B5FDEE4C7A471FF3F8CB015024C005AA1CC7D50C0C602C5EC16562FCDA152E3DCBF8450A954';
wwv_flow_imp.g_varchar2_table(197) := '51D2A305F2F3BD456E1E94D7E7F697F551FECD8F2EE3DCAFDEC3E5F7CF6F1FEDAF6FE873FCBB5F52786F3B0F7F979B0C4D7EF9044EFCF633DBB3FD1F2EC0DF2940817D093001D8171F57A680F30564D87FE1FC34A423AF154D2E9DC11D7D64BF78F30E56';
wwv_flow_imp.g_varchar2_table(198) := '66163073E13AAEBC7B0E97DF3B8F996BB7B0A687FB0B5B5B7A5B65DDF1572CCFEE7F78BF9DFDDD38FD3BCFE3E037CE20DCDF0999EDFF7019FEEE5E0146D61A012600AD71E65E28604B81AA1EBADFD2C3FF0B97AC2500657DF49FD948416ED97B479FCF5F';
wwv_flow_imp.g_varchar2_table(199) := '98B98B353DDC9F594F99E7FC8BC522B0B7037ED3C71F0C60E0F0280EBFFA2446BF7C04B1A16EF0263F260DFFA140C3059800349C941BA48073048AD902B20B1B482FAFEB8EDB5ACF2D230529DDE16FACAC61339B43B95CDE7FC00A082763183E3D85435F';
wwv_flow_imp.g_varchar2_table(200) := '3F83F1E78F23A28FFC0D7EA4EFFE6D1DB70556B855024C005A25CDFD50C086029BCB29AC5DBFBBE7A1FAFD86A4943267F9778F0F60E2996338F99D6731FED553082522504AED77F35C9F0214D8458009C02E387C8A026E1690D9FBD9E50DC8ED7F5B1DA7';
wwv_flow_imp.g_varchar2_table(201) := '321464B83F9C8862FCCC119CFDDED770EA0F5E44F2C850ABABC2FDD94C80D5699D001380D659734F14B09540B55441666903AB330B2DAD972FE047F7D8001EFFCEF378F1BFFF2E4EFED10BE83E360C7F78FF9F2C087E5180029605980058A6726FC1AA3E';
wwv_flow_imp.g_varchar2_table(202) := 'F52B8B7B2364643B09E416D691995F837C1CEF4ECF37F231C3E743EFC4200EBFF818CEFED1CB78E24FBE8ED1178FA373BC0FA1641472731F191568E43EDBBA2DFE41ED919FABB552C068E5CEB82F0A50C03E02EBD34B48DD59694E85F4F9FB70670C43C7';
wwv_flow_imp.g_varchar2_table(203) := '2670F49527F1F83F7A09277EF7391CFAD693187BFE38FA4E8C9993FC6486BF522E3DD7AF136BF08B023616600260E3C661D528D04C81CCE23A640E40A3F6219F1310EF4D62E0E818C69F398A035F3D8D43AF9CC1E16F9E3597E1A70F23797000A1CE48A3';
wwv_flow_imp.g_varchar2_table(204) := '7669EFEDB834AF69263AB7DD5A012600ADF5B6E5DEE4004C165B568E956A9AC0567A135B35EEFD5F6BE772B73EB97C2F31D48DDE432398FCF2719CFCF6B378F2BFF83A4EFFC18B187DE138E2633D70F591FE4E48FC83DA49858FD94C800980CD1A84D5A1';
wwv_flow_imp.g_varchar2_table(205) := '40AB04E4A63E95D2DEAFE1978F03EE3F388293BFF1253CF7CF7F0B5FFD1FFE1027FFF82B1878EA003A7AE3503EBEBDB4AA2DDDB11F46D16A01FE85B65A9CFBA3804D047AA606D135DE6FB936723BDE785F12079F3D85A7FFF137F0F2BFFA433CF1CF7E03';
wwv_flow_imp.g_varchar2_table(206) := 'E35F3B85F8541F54806F2796315990023610E05FAC0D1AA1DD559009CBB2B4BB1EDC7F6B057A8F8D62F0D424E45AFC1DF7AC007F288081236338F68DA7F0D49F7C034FFDB3D7C3AF1B00000E1E494441546FE2E8EF3C83D1E78EA1E7C8306283497316BF';
wwv_flow_imp.g_varchar2_table(207) := 'BF2360DEB84729BDD28E1BF3D883FC83AABBC1B942EB058CD6EF927BA40005EC2010EE8963E8EC011CFADAE3E8D7E7EF3BE211188681483286C163E338F4D2E3E69DF98EBCFA14A65E3E8DF1678F61E0F4243A27FA10EA8AC208F8CC4E1FFCDA59805701';
wwv_flow_imp.g_varchar2_table(208) := 'ECECC2476D23C004C0364DC18A50A0B502D281771D18C4C157CEE824E00C269F3D81D1A78F60F2F99338F4F52770FCB79EC1B1DFFE3246BE7C04C903030826C250866A6D259DBC3752D5D17A2CDA0E012600ED50B7D93E957EA392C566D562755A202013';
wwv_flow_imp.g_varchar2_table(209) := 'F5C2BD094C7CED349EF8A7AFE0F9FFEE77F0F83F7E19632F1E476CB41B86DFE051FE5EDA817F507B51E33A2D16305ABC3FEE8E0214A0000528F03901FED21E012600ED71E75E2940010A5080026D156002D0567EEE9C0214A080D705187FBB049800B44B';
wwv_flow_imp.g_varchar2_table(210) := '9EFBA500052840010AB4518009401BF1B96B0A5080025E1760FCED136002D03E7BEE990214A0000528D0360126006DA3E78E2940010A785D80F1B7538009403BF5B96F0A50800214A0409B049800B4099EBBA5000528E07501C6DF5E012600EDF5E7DE29';
wwv_flow_imp.g_varchar2_table(211) := '40010A5080026D116002D01676EE940214A080D705187FBB059800B4BB05B87F0A50800214A0401B049800B4019DBBA4000528E07501C6DF7E012600ED6F03D6800214A0000528D0720126002D27E70E2940010A785D80F1DB418009801D5A8175A00005';
wwv_flow_imp.g_varchar2_table(212) := '2840010AB4588009408BC1B93B0A5080025E1760FCF6106002608F76602D2840010A5080022D156002D0526EEE8C0214A080D70518BF5D049800D8A525580F0A50800214A0400B059800B4109BBBA2000528E07501C66F1F012600F6690BD6840214A000';
wwv_flow_imp.g_varchar2_table(213) := '0528D0320126002DA3E68E2840010A785D80F1DB498009809D5A8375A100052840010AB4488009408BA0B91B0A5080025E1760FCF612600260AFF6606D2840010A5080022D116002D01266EE840214A080D70518BFDD049800D8AD45DA509F6AB50AFD7F';
wwv_flow_imp.g_varchar2_table(214) := '1BF6CC5D52C0A502FA0F4AFEAE5C1A1DC372890013009734E423C3508F7CE6FE13D572059552F9FEEFFC810214D8BB8074FC65FDF7244BADAD28F9FB94A55641173CCF10EC27C004C07E6DD2C01A29F894815AEF2FC5EC160A1B39F08B0214D8BF40A558';
wwv_flow_imp.g_varchar2_table(215) := '46219BC75676B3E6C614E4EFB3D65F28F84581A608184DD92A376A0B01795B9104003552804266139B6B19F08B0214D8BF40612D87623A5F734386FEBB34CC21809A455D508021D851C0B063A558A7C60828F30DA67613E75339E456528DD929B742018F';
wwv_flow_imp.g_varchar2_table(216) := '0B6CAEA6B195AE3DA2E6330C48FFAF94F2B818C36F9780D1AE1D73BFCD1790F79580CF6FBEC9ECB6B7DC5A1AEBB3CB2866B620E72F772BCBE72840819D05E46FA752AA60EDD602328BEB3B17FAF4510505BFA1FF36F529804F1F72F53706674F012600F6';
wwv_flow_imp.g_varchar2_table(217) := '6C9786D44AE937970E5F50BFD528ECF6B5B991C5CA8D79AC5CBE03397F296F64BB95E77314A0C00E02952A32732B58B8308DF4DDB51D0A7CF69024E7F2B7C953009F99F0A7D60B300168BD79CBF6286F2E1DFE100CB57B334B87BF36B3888B7FF906B6D6';
wwv_flow_imp.g_varchar2_table(218) := 'B3A896AB1C0968592B71476E10A8EACEBF98DBC2B51FBD8FA5ABB328E4B7760D4BE9B43CE2EF3027E9EE5AD0154F3208BB0AECDE33D8B5D6AC976501BFF2418E347C359280D25611ABD38BF8E4FFFB25D2B32BA8EAA14CCB3B61410A785CA090CAE1C60F';
wwv_flow_imp.g_varchar2_table(219) := 'DFC7CC0757B199CAD6D490BFCB48A076725E73432C40817D083001D8079EDD57554A1F67E8251E8CE8F38DBE9AD52DE40B983D7703EFFEDF3FC18D9F7C88ECDCEEC3983537C8021470B94021B589B9B7AEE2DD7FFF135CF9E58766E72FA301BB852D9D7F';
wwv_flow_imp.g_varchar2_table(220) := '34103647E69452BB1575C5730CC2BE024C00ECDB360DA999BCBDC85063872F547BB8B15A45410F632E5FBF83EB7FFF31CEFDF9EB38FF67BF369381B937AF60E9C35B58FE649A0B0D3CFB1A58FAE836EEBE7B1DB77FF1092E7DFF2D9CFB4FBFC6A51FBF8B';
wwv_flow_imp.g_varchar2_table(221) := 'BBE76E21BB9646ADCE5FFE1E43BE00242957FA344043FEC8B9110AEC518009C01EE19CB29A520A7225404C1F71847C414BD5AE942B58BDBD805BAF5FC0951FBF87AB3F791FD77EFA01AEFDEC43BDC8772ED77E4603CF1AE8BF85AB3FF9C0FCDBB8F6F30F';
wwv_flow_imp.g_varchar2_table(222) := 'B170F176CD73FEF7FEF082BAF38FE8BFC50EBFB5BFC57BEB39F73B6B6E67012600766E9D06D62D1AE8405CBFF1040CBFE5AD56CA65E43339ACCE2EE2CEF99BB8F5EE25DC7CEB22171A78F63570EB9D4B98F9E81A966ECEE923FE14CAC592E5BF27998713';
wwv_flow_imp.g_varchar2_table(223) := 'F587CDA37F9998AB94B2BC2E0B52A019024C009AA16AC36DFA0C1FE2A12892A1180C0E3DDAB0855825B70BC4021124F4DFA09C02707BACF7E2E3777B0B18F6AE1E6BD74801997C246F42C950BC919BE5B62840811A02517F0712C10842164FC3D5D81C9F';
wwv_flow_imp.g_varchar2_table(224) := 'A640430498003484D1191B514A21E8F3A3531F85F474745ABA32C01991B19614B0A780A1FFE6E2FAC8BFBB2381B0794F0E2F0DFBDBB34D58ABCF048CCF7EE44F5E1090738F417D14D2A94F05248371F388846F495E6879C6D86A0119714B04A3E8EA8823';
wwv_flow_imp.g_varchar2_table(225) := '1CE8809C866B751DB83F0AEC26C00460371D973E274725215F00499D0474EA37A8B01E9EF41B3E9746CBB028D05A019F32CC9B6F999DBF3EDD160D846B5F82DBDA2AB6646FDC89FD059800D8BF8D9A5643B93C508E4EFAC349248331F34D4B8E5A0C4E12';
wwv_flow_imp.g_varchar2_table(226) := '6C9A3937EC4E01A5FF667CCA879011805CE3DFABFFA67AC39DE8D0C3FEE017056C2A60D8B45EAC568B04E494800C4FCA1BD668AC1F3DFA4D2B22C395FACDAC4555E06E28E068014377FE217D5AAD5B0FF58FC4FA3010E93693006F0FF93BBA493D5379C3';
wwv_flow_imp.g_varchar2_table(227) := '339132D09A027E7D1A40862DE50D6C54BF918D447BD11FEE426F4712F2E6D6A58733B9C441036F1B74EBBF83DE8E4EF36F6328D283119D380FC77A91D48FCBA89A8C06D4FC6363010AD8408009800D1AC10E55504ABF6DE9459280A02F0099B12CE72E25';
wwv_flow_imp.g_varchar2_table(228) := '2190AB063AF59B9BBCC171899B6FF474F0AE83FC2D244231F3283F168C20120841E6D4C8DF8EA10C28A5ECF027DDD63A70E7CE10309C514DD6B2D5024A29C810A61CD14842D0A187383BFC417D4E930B1DF81A900E5FFE2EEE75FAE017051C286038B0CE';
wwv_flow_imp.g_varchar2_table(229) := 'AC32052840010AD8568015738A001300A7B414EB49010A5080021468A00013800662725314A00005BC2EC0F89D23C004C0396DC59A52800214A000051A26C004A06194DC1005284001AF0B307E2709300170526BB1AE14A0000528408106093001681024';
wwv_flow_imp.g_varchar2_table(230) := '3743010A50C0EB028CDF59024C009CD55EAC2D052840010A50A021024C001AC2C88D50800214F0BA00E3779A001300A7B518EB4B010A5080021468800013800620721314A00005BC2EC0F89D27C004C0796DC61A53800214A00005F62DC00460DF84DC00';
wwv_flow_imp.g_varchar2_table(231) := '05284001AF0B307E270A30017062ABB1CE14A000052840817D0A3001D8272057A7000528E07501C6EF4C012600CE6C37D69A0214A0000528B02F012600FBE2E3CA14A00005BC2EC0F89D2AC004C0A92DC77A53800214A00005F621C004601F785C950214';
wwv_flow_imp.g_varchar2_table(232) := 'A080D70518BF7305980038B7ED58730A50800214A0C09E059800EC998E2B52800214F0BA00E377B200130027B71EEB4E010A50800214D8A30013803DC271350A5080025E1760FCCE166002E0ECF663ED2940010A5080027B126002B02736AE44010A50C0';
wwv_flow_imp.g_varchar2_table(233) := 'EB028CDFE9024C009CDE82AC3F052840010A50600F024C00F680C6552840010A785D80F13B5F800980F3DB901150800214A00005EA16600250371957A0000528E07501C6EF060126006E6845C640010A50800214A8538009409D602C4E010A50C0EB028C';
wwv_flow_imp.g_varchar2_table(234) := 'DF1D024C00DCD18E8C820214A00005285097001380BAB858980214A080D70518BF5B049800B8A5251907052840010A50A00E0126007560B12805284001AF0B307EF7083001704F5B32120A50800214A0806501260096A958900214A080D70518BF9B0498';
wwv_flow_imp.g_varchar2_table(235) := '00B8A935190B052840010A50C0A20013008B502C46010A50C0EB028CDF5D024C00DCD59E8C860214A00005286049800980252616A2000528E07501C6EF360126006E6B51C643010A50800214B020C004C002128B50800214F0BA00E3779F001300F7B529';
wwv_flow_imp.g_varchar2_table(236) := '23A200052840010AD4146002509388052840010A785D80F1BB518009801B5B953151800214A000056A083001A801C4A72940010A785D80F1BB538009803BDB955151800214A0000576156002B02B0F9FA4000528E07501C6EF560126006E6D59C645010A';
wwv_flow_imp.g_varchar2_table(237) := '50800214D8458009C02E387C8A0214A080D70518BF7B059800B8B76D1919052840010A50E091024C001E49C3272840010A785D80F1BB598009809B5B97B151800214A000051E21C004E011307C980214A080D70518BFBB059800B8BB7D191D052840010A';
wwv_flow_imp.g_varchar2_table(238) := '5060470126003BB2F0410A5080025E1760FC6E176002E0F616667C14A000052840811D049800EC80C2872840010A785D80F1BB5F800980FBDB981152800214A00005BE20C004E00B247C800214A080D70518BF1704980078A1951923052840010A50E021';
wwv_flow_imp.g_varchar2_table(239) := '0126000F81F0570A5080025E1760FCDE106002E08D76669414A00005284081CF093001F81C077FA1000528E07501C6EF150126005E6969C649010A5080021478408009C00318FC910214A080D70518BF7704980078A7AD1929052840010A50E0BE001380';
wwv_flow_imp.g_varchar2_table(240) := 'FB14FC810214A080D70518BF9704980078A9B5192B052840010A50E0530126009F42F01B05284001AF0B307E6F093001F0567B335A0A50800214A08029C004C064E03F14A00005BC2EC0F8BD26C004C06B2DCE782940010A5080025A80098046E0FF14A0';
wwv_flow_imp.g_varchar2_table(241) := '0005BC2EC0F8BD27C004C07B6DCE882940010A5080026002C0170105284001CF0B10C08B024C00BCD8EA8C990214A000053C2FC004C0F32F01025080025E1760FCDE146002E0CD7667D414A0000528E0710126001E7F01307C0A50C0EB028CDFAB024C00';
wwv_flow_imp.g_varchar2_table(242) := 'BCDAF28C9B0214A000053C2DC004C0D3CDCFE0294001AF0B307EEF0A3001F06EDB33720A50800214F0B00013000F373E43A70005BC2EC0F8BD2CC004C0CBADCFD82940010A50C0B3024C003CDBF40C9C0214F0BA00E3F7B6C07F060000FFFF74DB218200';
wwv_flow_imp.g_varchar2_table(243) := '000006494441540300ADA9A0FE2BC8AFAB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8555844379963830743)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027233756Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8555849305769830749)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:3yhrn6vMomFS9lJSiUELavVJBvfPg1Nm_2g2zEGMqLs'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8555849558215830749)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>'SH256:ciFz4rcxddalYIUr3Jinzh7tWbPXCTrEEDvj0GvJb6Y'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8555849435883830749)
,p_name=>'Reader Rights'
,p_static_id=>'reader-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>'SH256:rraFlo6EMInHtSUuxfoZXPob0ulO3Y_yKNkQ5x_t8NI'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8555848373391830747)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>'SH256:dheqzA6FvJpxO1XvRjEkdmp8Sopp4a5_9FwX9SJ6d2A'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8555848905420830748)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>'SH256:E1I9yvnWl7TTVCZZdLycGZM5J4upKtPrWG-og_uLylc'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8555849176608830748)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>'SH256:vmP-ozbK0YK2PWJBw-FIve6SxhPxsqFi7yI6JPE-efc'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(8555851557895830751)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(8555844604920830744)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>'SH256:wtFSXAJO6ZfBIDZaLT-NWeHYfr8jXR6d7K_DuhjTxbQ'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(8555851158849830751)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_version_scn=>'SH256:zBoHxELbCF64JiYwSzQdItfu58AlSVUWmbfwVhVGpyo'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556198511852831123)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:hw1yHwou0QVtzlsCnrLSXndSn95AkdZHJv9ZCO7rHeg'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8555869905077830773)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(8555869905077830773)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201550Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8555872444978830775)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8555871275763830774)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556098903348830919)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_static_id=>'desktop-theme-styles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:BV99rFiD2E3hUCMQwqdJUP9mSBtytAbj6XTz8AGFmsA'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556205822684831132)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(8556205822684831132)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:og77UyB456nZ1KlCr4DAkFaNaKZm9jBHGC16mBmSJsk'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556206128089831133)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556221607966831153)
,p_lov_name=>'FEEDBACK_RATING'
,p_static_id=>'feedback-rating'
,p_lov_query=>'.'||wwv_flow_imp.id(8556221607966831153)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:QHID2_AL91pivdhRvWMf8rTxRdNvsqexHwq5MFyhCN4'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556222760394831154)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_static_id=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556222317824831154)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_static_id=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556221966374831153)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_static_id=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556233568739831165)
,p_lov_name=>'FEEDBACK_STATUS'
,p_static_id=>'feedback-status'
,p_lov_query=>'.'||wwv_flow_imp.id(8556233568739831165)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:PpuBEbIoOUhSzFsElNFuOJRnL162R3kqFnYCQDsmzNw'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556233832064831166)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
,p_static_id=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556234276124831167)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
,p_static_id=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556234686663831167)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
,p_static_id=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556235061855831168)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
,p_static_id=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tb_produtos_nome
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9299459673848522249)
,p_lov_name=>'TB_PRODUTOS.NOME'
,p_static_id=>'tb-produtos-nome'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TB_PRODUTOS'
,p_return_column_name=>'ID_PRODUTO'
,p_display_column_name=>'NOME'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Sv5Q2yUCkx1WSOPsSa8zgiR10_ZWXjiPWERX1kNOf0Y'
,p_created_on=>wwv_flow_imp.dz('20261029194137Z')
,p_updated_on=>wwv_flow_imp.dz('20261029194137Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556116873907830946)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_static_id=>'timeframe-4-weeks'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>'SH256:MHjq8a1C6UKgUTdUiXoLyw_rytnwJPhwCeLln9D4WW8'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556099674300830921)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_static_id=>'user-theme-preference'
,p_lov_query=>'.'||wwv_flow_imp.id(8556099674300830921)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:svCOQpyt_FwMXtjCj17rqgC9rZFoEhbVqAwu8f6IkL8'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556099973580830922)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow all End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
,p_static_id=>'yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8556165738186831064)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_static_id=>'view-as-report-chart'
,p_lov_query=>'.'||wwv_flow_imp.id(8556165738186831064)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:-NiiYPWYjIc3Pc-aCWde6UlxvjCf8ukbfArqZU7onD4'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556166409676831066)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_static_id=>'chart'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8556166055984831065)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_static_id=>'report'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8555851874269830752)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8556277632821831244)
,p_group_name=>'User Settings'
,p_static_id=>'user-settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8555838824111830731)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002051Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8556261044291831218)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8560882215706567688)
,p_short_name=>'CADASTRAR PRODUTOS'
,p_static_id=>'cadastrar-produtos'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20261027203552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8558159786046866799)
,p_short_name=>'CONSULTAR PRODUTOS'
,p_static_id=>'consultar-produtos'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20261027202150Z')
,p_updated_on=>wwv_flow_imp.dz('20261027202150Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8555839084279830731)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8597105660813726125)
,p_short_name=>'REALIZAR PEDIDO'
,p_static_id=>'realizar-pedido'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20261027224503Z')
,p_updated_on=>wwv_flow_imp.dz('20261027224503Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9590018928818729603)
,p_short_name=>'REGISTRAR ENTRADA'
,p_static_id=>'registrar-entrada'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20261031000251Z')
,p_updated_on=>wwv_flow_imp.dz('20261031000251Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(9597407405251220897)
,p_short_name=>unistr('REGISTRAR SA\00CDDA')
,p_static_id=>unistr('registrar-sa\00EDda')
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20261031002051Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002051Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(8555840012402830733)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:_ZA2OCAT0oe8zXeYXS4pqku9eJXOHXBko77-CJUyv6E'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8555838142581830730)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8555845353973830744)
,p_build_option_name=>'Feature: About Page'
,p_static_id=>'feature-about-page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:XJT0LyDPwECBH8IlgFn2KNvjd0rsRDXoOWkE0Llo7dI'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8555844604920830744)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:oflPhSoxb6RLGIrI0NPG8HuaDVyLNnJobFXxm8ThcXA'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8555844767011830744)
,p_build_option_name=>'Feature: Activity Reporting'
,p_static_id=>'feature-activity-reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:lzgblhVTHdsLZ2SVZQtKCpccbHJ-NIdtYcemlW_ATts'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8555845098465830744)
,p_build_option_name=>'Feature: Configuration Options'
,p_static_id=>'feature-configuration-options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:9DZMtxxhBz9UCnZNQtIbo0Dy2HGKowerd3vWs4_gEhU'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8555844864933830744)
,p_build_option_name=>'Feature: Feedback'
,p_static_id=>'feature-feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:4w9c61-62VcsI0g96MpTWgQTDraGR_8MLzAozytdVqo'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8556277888720831245)
,p_build_option_name=>'Feature: Push Notifications'
,p_static_id=>'feature-push-notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:3WlknQG5FntlPjuOlArqfjFp2TNiokODRfRu8mMBFuw'
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8555845428752830744)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_static_id=>'feature-theme-style-selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:QRbJopHL0jPGfJBmzVDfxlGvtK3A5q4-lkLWnG9Vv6I'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8556278123451831245)
,p_build_option_name=>'Feature: User Settings'
,p_static_id=>'feature-user-settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:JnASmz458-j5t7kNO3o77354WxlsY67o7JM4yPsoWsg'
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(8555838456881830730)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8555867465962830771)
,p_plug_name=>'SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS'
,p_static_id=>'sistema-de-controle-de-produtos-e-pedidos'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'CONSULTAR PRODUTOS'
,p_alias=>'CONSULTAR-PRODUTOS'
,p_step_title=>'CONSULTAR PRODUTOS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027202150Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027204826Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8558159161511866791)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8555838824111830731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261027202150Z')
,p_updated_on=>wwv_flow_imp.dz('20261027202150Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8558160103373866913)
,p_plug_name=>'CONSULTAR PRODUTOS'
,p_static_id=>'consultar-produtos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TB_PRODUTOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027202152Z')
,p_updated_on=>wwv_flow_imp.dz('20261027204826Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8558160238154866913)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8558160238154866913
,p_created_on=>wwv_flow_imp.dz('20261027202152Z')
,p_updated_on=>wwv_flow_imp.dz('20261027204826Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8558163363054867060)
,p_db_column_name=>'ESTOQUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Estoque'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027202152Z')
,p_updated_on=>wwv_flow_imp.dz('20261027202152Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8558162265733867055)
,p_db_column_name=>'ID_PRODUTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Produto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261027202152Z')
,p_updated_on=>wwv_flow_imp.dz('20261027202152Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8558162865011867058)
,p_db_column_name=>'NOME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027202152Z')
,p_updated_on=>wwv_flow_imp.dz('20261027202152Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8558163776703867062)
,p_db_column_name=>'PRECO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Preco'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027202152Z')
,p_updated_on=>wwv_flow_imp.dz('20261027202152Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8565401866490643106)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PRODUTO:NOME:ESTOQUE:PRECO'
,p_created_on=>wwv_flow_imp.dz('20261027204826Z')
,p_updated_on=>wwv_flow_imp.dz('20261027204826Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'CADASTRAR PRODUTOS'
,p_alias=>'CADASTRAR-PRODUTOS'
,p_step_title=>'CADASTRAR PRODUTOS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261027203551Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027224328Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8560881711500567654)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8555838824111830731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261027203552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8562745344956567854)
,p_plug_name=>'CADASTRAR PRODUTOS'
,p_static_id=>'cadastrar-produtos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TB_PRODUTOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261027203553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8562748336376567859)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8562749671455567860)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_ID_PRODUTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8562748845513567859)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_ID_PRODUTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8562749230088567860)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_ID_PRODUTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8562750065765567861)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8562746307511567856)
,p_name=>'P4_ESTOQUE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_item_source_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_prompt=>'Estoque'
,p_source=>'ESTOQUE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8562745657600567854)
,p_name=>'P4_ID_PRODUTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_item_source_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_prompt=>'ID_PRODUTO'
,p_source=>'ID_PRODUTO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027204642Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8562745996065567855)
,p_name=>'P4_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_item_source_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8562746728640567857)
,p_name=>'P4_PRECO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_item_source_plug_id=>wwv_flow_imp.id(8562745344956567854)
,p_prompt=>'Preco'
,p_source=>'PRECO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027224328Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8562750504599567862)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8562745344956567854)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form CADASTRAR PRODUTOS'
,p_static_id=>'initialize-form-cadastrar-produtos'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8562750504599567862
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8562750985608567862)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8562745344956567854)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form CADASTRAR PRODUTOS'
,p_static_id=>'process-form-cadastrar-produtos'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8562750985608567862
,p_created_on=>wwv_flow_imp.dz('20261027203554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027203554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'REALIZAR PEDIDO'
,p_alias=>'REALIZAR-PEDIDO'
,p_step_title=>'REALIZAR PEDIDO'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261027224503Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027233113Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8597105044452726113)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8555838824111830731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261027224503Z')
,p_updated_on=>wwv_flow_imp.dz('20261027224503Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8595645258501488304)
,p_button_sequence=>40
,p_button_name=>'BTN_REALIZAR_PEDIDO'
,p_static_id=>'btn-realizar-pedido'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Realizar Pedido'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261027232211Z')
,p_updated_on=>wwv_flow_imp.dz('20261027232211Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8595645139812488303)
,p_name=>'P5_ID_CLIENTE'
,p_item_sequence=>30
,p_prompt=>'Id Cliente'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOME AS DISPLAY_VALUE,',
'       ID_CLIENTE AS RETURN_VALUE',
'FROM TB_CLIENTES',
'ORDER BY NOME;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027231925Z')
,p_updated_on=>wwv_flow_imp.dz('20261027231925Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8595644960726488301)
,p_name=>'P5_ID_PRODUTO'
,p_item_sequence=>10
,p_prompt=>'Produto'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOME AS DISPLAY_VALUE,',
'       ID_PRODUTO AS RETURN_VALUE',
'FROM TB_PRODUTOS',
'ORDER BY NOME;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027231415Z')
,p_updated_on=>wwv_flow_imp.dz('20261027231415Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8595645044063488302)
,p_name=>'P5_QUANTIDADE'
,p_is_required=>true
,p_item_sequence=>20
,p_prompt=>'Quantidade'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027231743Z')
,p_updated_on=>wwv_flow_imp.dz('20261027231743Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8595645302796488305)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESSAR_PEDIDO'
,p_static_id=>'processar-pedido'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    PKG_PEDIDOS.PRC_REALIZAR_PEDIDO(',
'        P_ID_PRODUTO => :P5_ID_PRODUTO,',
'        P_QUANTIDADE => :P5_QUANTIDADE,',
'        P_ID_CLIENTE => :P5_ID_CLIENTE',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8595645302796488305
,p_created_on=>wwv_flow_imp.dz('20261027233113Z')
,p_updated_on=>wwv_flow_imp.dz('20261027233113Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'REGISTRAR ENTRADA'
,p_alias=>'REGISTRAR-ENTRADA'
,p_step_title=>'REGISTRAR ENTRADA'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261031000251Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261031001338Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9590018310403729595)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8555838824111830731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261031000251Z')
,p_updated_on=>wwv_flow_imp.dz('20261031000251Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8595647663204488328)
,p_button_sequence=>30
,p_button_name=>'BTN_REGISTRAR_ENTRADA'
,p_static_id=>'btn-registrar-entrada'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Registrar Entrada'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261031000935Z')
,p_updated_on=>wwv_flow_imp.dz('20261031000935Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8595647428613488326)
,p_name=>'P6_ID_PRODUTO'
,p_item_sequence=>10
,p_prompt=>'Produto'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NOME AS DISPLAY_VALUE,',
'    ID_PRODUTO AS RETURN_VALUE',
'FROM TB_PRODUTOS',
'ORDER BY NOME;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261031000558Z')
,p_updated_on=>wwv_flow_imp.dz('20261031000558Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8595647559251488327)
,p_name=>'P6_QUANTIDADE'
,p_is_required=>true
,p_item_sequence=>20
,p_prompt=>'Quantidade'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261031000709Z')
,p_updated_on=>wwv_flow_imp.dz('20261031000709Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8595647786849488329)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESSAR_ENTRADA'
,p_static_id=>'processar-entrada'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    PRC_REGISTRAR_ENTRADA(',
'        P_ID_PRODUTO => :P6_ID_PRODUTO,',
'        P_QUANTIDADE => :P6_QUANTIDADE',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8595647663204488328)
,p_internal_uid=>8595647786849488329
,p_created_on=>wwv_flow_imp.dz('20261031001338Z')
,p_updated_on=>wwv_flow_imp.dz('20261031001338Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>unistr('REGISTRAR SA\00CDDA')
,p_alias=>unistr('REGISTRAR-SA\00CDDA')
,p_step_title=>unistr('REGISTRAR SA\00CDDA')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261031002051Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261031002728Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9597406864010220883)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8555838824111830731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261031002051Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002051Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8595648011374488332)
,p_button_sequence=>30
,p_button_name=>'BTN_REGISTRAR_SAIDA'
,p_static_id=>'btn-registrar-saida'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Registrar Saida'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261031002555Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002555Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8595647846089488330)
,p_name=>'P7_ID_PRODUTO'
,p_item_sequence=>10
,p_prompt=>'Produto'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NOME AS DISPLAY_VALUE,',
'    ID_PRODUTO AS RETURN_VALUE',
'FROM TB_PRODUTOS',
'ORDER BY NOME;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261031002332Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002332Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8595647952919488331)
,p_name=>'P7_QUANTIDADE'
,p_item_sequence=>20
,p_prompt=>'Quantidade'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261031002441Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002441Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8595648104836488333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESSAR_SAIDA'
,p_static_id=>'processar-saida'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    PRC_REGISTRAR_SAIDA(',
'        P_ID_PRODUTO => :P7_ID_PRODUTO,',
'        P_QUANTIDADE => :P7_QUANTIDADE',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8595648011374488332)
,p_internal_uid=>8595648104836488333
,p_created_on=>wwv_flow_imp.dz('20261031002728Z')
,p_updated_on=>wwv_flow_imp.dz('20261031002728Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8555853404227830754)
,p_plug_name=>'SISTEMA DE CONTROLE DE PRODUTOS E PEDIDOS'
,p_static_id=>'sistema-de-controle-de-produtos-e-pedidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8555860597207830764)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8555853404227830754)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8555858529719830763)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8555853404227830754)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8555860232212830764)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8555853404227830754)
,p_prompt=>'Remember me'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8555859748748830763)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8555853404227830754)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8555858133637830762)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8555853404227830754)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8555865839896830768)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8555865839896830768
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8555865427027830768)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8555865427027830768
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8555860949415830765)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8555860949415830765
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8555863169107830766)
,p_page_process_id=>wwv_flow_imp.id(8555860949415830765)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8555863661826830766)
,p_page_process_id=>wwv_flow_imp.id(8555860949415830765)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8555862392355830765)
,p_page_process_id=>wwv_flow_imp.id(8555860949415830765)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8555864063208830767)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8555864063208830767
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8555865070521830767)
,p_page_process_id=>wwv_flow_imp.id(8555864063208830767)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8555864518965830767)
,p_page_process_id=>wwv_flow_imp.id(8555864063208830767)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261027201549Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201549Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556270355101831229)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(8556269950772831229)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(8555844604920830744)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556274613811831238)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(8556270355101831229)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(8556266273533831225)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556271115895831230)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(8556270355101831229)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556269580083831228)
,p_plug_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_parent_plug_id=>wwv_flow_imp.id(8556268321573831227)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(8556262992557831221)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556260433241831216)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(8555838824111830731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556268321573831227)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556269950772831229)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556268723344831228)
,p_plug_name=>'Configuration'
,p_static_id=>'configuration'
,p_parent_plug_id=>wwv_flow_imp.id(8556268321573831227)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(8556261275145831219)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(8555845098465830744)
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556275091025831239)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback'
,p_parent_plug_id=>wwv_flow_imp.id(8556269950772831229)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556277254999831244)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback-2'
,p_parent_plug_id=>wwv_flow_imp.id(8556275091025831239)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(8556267550303831226)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8556275406453831239)
,p_name=>'Report'
,p_static_id=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(8556275091025831239)
,p_template=>4075786578761660127
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value                              as feedback_status, ',
'       (select count(*)',
'          from apex_team_feedback f',
'         where f.application_id  = :APP_ID',
'           and f.feedback_status = l.return_value ) as feedback_count ',
'  from apex_application_lov_entries l',
' where l.application_id      = :APP_ID',
'   and l.list_of_values_name = ''FEEDBACK_STATUS''',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2103942766914282568
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556276562679831242)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556276161498831241)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8556271548929831231)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(8556270355101831229)
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2103942766914282568
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556273018953831236)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556272241925831234)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556272691362831235)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556269133799831228)
,p_plug_name=>'User Interface'
,p_static_id=>'user-interface'
,p_parent_plug_id=>wwv_flow_imp.id(8556268321573831227)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(8556262021681831220)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(8555845428752830744)
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556270796757831230)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556270355101831229)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556273705919831237)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8556270796757831230)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556274175638831238)
,p_event_id=>wwv_flow_imp.id(8556273705919831237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556271548929831231)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555845098465830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201550Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8555874116313830776)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8555874523280830776)
,p_plug_name=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from sys.dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556087392319830894)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8556087392319830894
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556088936375830902)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556090981168830909)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556089716561830905)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556088570812830900)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556089325977830904)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556090196721830906)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556090530317830908)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556093742138830913)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556094754686830915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8555874116313830776)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8556095604942830916)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556095167275830915)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_static_id=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>8556095167275830915
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555845428752830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow all End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556095907479830916)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556096065692830916)
,p_plug_name=>'Configure Appearance'
,p_static_id=>'configure-appearance'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556097093475830917)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556095907479830916)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8556097597662830918)
,p_button_id=>wwv_flow_imp.id(8556097093475830917)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556098001203830918)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8556095907479830916)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8556098558206830919)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556098839042830919)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556096065692830916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556099562924830921)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8556096065692830916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_grid_label_column_span=>0
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556101039265830923)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_static_id=>'save-end-user-style-preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>8556101039265830923
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556100604206830923)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_static_id=>'save-theme-style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>8556100604206830923
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556102214858830924)
,p_plug_name=>'Filters'
,p_static_id=>'filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556101480009830924)
,p_plug_name=>'Hourly Page Events'
,p_static_id=>'hourly-page-events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8556101517350830924)
,p_region_id=>wwv_flow_imp.id(8556101480009830924)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8556103555828830926)
,p_chart_id=>wwv_flow_imp.id(8556101517350830924)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from sys.dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8556104782875830927)
,p_chart_id=>wwv_flow_imp.id(8556101517350830924)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8556104185238830927)
,p_chart_id=>wwv_flow_imp.id(8556101517350830924)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8556102125931830924)
,p_name=>'Latest Activity'
,p_static_id=>'latest-activity'
,p_template=>4075786578761660127
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556113667291830942)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556113217244830941)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556101616956830924)
,p_plug_name=>'Most Active Pages'
,p_static_id=>'most-active-pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8556101790118830924)
,p_region_id=>wwv_flow_imp.id(8556101616956830924)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8556108534348830931)
,p_chart_id=>wwv_flow_imp.id(8556101790118830924)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8556109142238830931)
,p_chart_id=>wwv_flow_imp.id(8556101790118830924)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8556109797587830932)
,p_chart_id=>wwv_flow_imp.id(8556101790118830924)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8556102063946830924)
,p_name=>'Recent Errors'
,p_static_id=>'recent-errors'
,p_template=>4075786578761660127
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556110985611830936)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556111382589830937)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556101892337830924)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8556101924511830924)
,p_region_id=>wwv_flow_imp.id(8556101892337830924)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8556106046767830929)
,p_chart_id=>wwv_flow_imp.id(8556101924511830924)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8556106642292830929)
,p_chart_id=>wwv_flow_imp.id(8556101924511830924)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8556107281675830930)
,p_chart_id=>wwv_flow_imp.id(8556101924511830924)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556114980128830944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556101480009830924)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556115757027830945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556101892337830924)
,p_button_name=>'VIEW_ACTIVITY_BY_USER2'
,p_static_id=>'view-activity-by-user2'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556115396037830944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556101616956830924)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_static_id=>'view-activity-details'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556116179638830945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556102063946830924)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_static_id=>'view-recent-errors'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556102393310830924)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556102214858830924)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556102463495830924)
,p_name=>'Change Filters'
,p_static_id=>'change-filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556117715747830948)
,p_event_id=>wwv_flow_imp.id(8556102463495830924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556101480009830924)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556118222880830949)
,p_event_id=>wwv_flow_imp.id(8556102463495830924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556101892337830924)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556118703268830949)
,p_event_id=>wwv_flow_imp.id(8556102463495830924)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556101616956830924)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556119213661830950)
,p_event_id=>wwv_flow_imp.id(8556102463495830924)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556102063946830924)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556119735832830950)
,p_event_id=>wwv_flow_imp.id(8556102463495830924)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556102125931830924)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556153714484831025)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556153675757831025)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556154799595831026)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8556154799595831026
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556158564126831048)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556156438512831037)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556158148768831046)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556157308198831042)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556158961735831050)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556156884010831039)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556157701901831044)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556156026750831034)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556162118011831058)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556153951566831025)
,p_plug_name=>'Top Users Chart'
,p_static_id=>'top-users-chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8556154020923831025)
,p_region_id=>wwv_flow_imp.id(8556153951566831025)
,p_chart_type=>'donut'
,p_height=>'600'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8556165197610831064)
,p_chart_id=>wwv_flow_imp.id(8556154020923831025)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_series_type=>'donut'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556154304579831026)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556153714484831025)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556154149339831025)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8556153714484831025)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556153826861831025)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556163721673831061)
,p_event_id=>wwv_flow_imp.id(8556153826861831025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556153675757831025)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556167186614831067)
,p_event_id=>wwv_flow_imp.id(8556153826861831025)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556153675757831025)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556146593772831008)
,p_plug_name=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556147185566831008)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8556147185566831008
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556149224259831016)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556149699385831018)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556150461577831020)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556150029068831019)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556148464827831013)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556148872651831015)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556152964968831025)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556131861945830976)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556131723614830976)
,p_plug_name=>'Page Performance'
,p_static_id=>'page-performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556132375301830976)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8556132375301830976
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556136678757830990)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556139446265830999)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556136249109830988)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556135896807830987)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556138669471830996)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556137448787830992)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556134719077830984)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556139017211830997)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556133654855830981)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556134043285830983)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556137085524830991)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556138275827830995)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556137859270830994)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556135454302830986)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556144324560831004)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556131602234830976)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556131861945830976)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556131998648830976)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556145992454831007)
,p_event_id=>wwv_flow_imp.id(8556131998648830976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556131723614830976)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556120447691830951)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556120307387830951)
,p_plug_name=>'Page Views'
,p_static_id=>'page-views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556120932742830951)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8556120932742830951
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556124698798830964)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556123483314830960)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556125845761830968)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556125438922830967)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556125084587830966)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556123860725830961)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556124229760830963)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556122296431830955)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556123054906830958)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556122684154830957)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556129604905830973)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20261027201551Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201551Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556120257061830951)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556120447691830951)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556120590201830951)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556131131407830976)
,p_event_id=>wwv_flow_imp.id(8556120590201830951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556120307387830951)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201552Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556167769840831067)
,p_plug_name=>'Automations Log'
,p_static_id=>'automations-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556168345571831067)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8556168345571831067
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556170373287831075)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556172770219831083)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556171501935831079)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556169670866831072)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201552Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556172312496831082)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556171993648831081)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556170054502831074)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556170755633831077)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556171166052831078)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556176114794831088)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844767011830744)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556177121052831089)
,p_plug_name=>'Automation Execution'
,p_static_id=>'automation-execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8556179590014831091)
,p_name=>'Messages'
,p_static_id=>'messages'
,p_template=>2103954283454391425
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556180614431831095)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556180240325831094)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556181085996831096)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556181434071831097)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556177961610831090)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8556177121052831089)
,p_prompt=>'Automation'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556177560465831090)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556177121052831089)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556178340726831090)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8556177121052831089)
,p_prompt=>'Started'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556178779183831091)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8556177121052831089)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556179162684831091)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_static_id=>'get-log-detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8556179162684831091
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844604920830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556183377930831100)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556183404476831100)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556184525651831102)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8556183404476831100)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556184919479831102)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556183404476831100)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8556185482589831102)
,p_button_id=>wwv_flow_imp.id(8556184919479831102)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8556186034291831103)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556186306286831103)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8556183377930831100)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556186795273831104)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_static_id=>'set-access-control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>8556186795273831104
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844604920830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556187121862831104)
,p_plug_name=>'Manage User Access'
,p_static_id=>'manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556187925983831104)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8556187925983831104
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556190068992831112)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556189296800831109)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556189686655831111)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556191669094831116)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556192315934831117)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8556187121862831104)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556192756649831117)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8556187121862831104)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556187217992831104)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8556187121862831104)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556193409521831118)
,p_event_id=>wwv_flow_imp.id(8556187217992831104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556187121862831104)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844604920830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556201643623831128)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8556201966028831128)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(8556201756972831128)
,p_template=>2667762537863948531
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556209195970831140)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8556208792728831139)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556202185029831128)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556212026525831144)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556202082996831128)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_static_id=>'p10044-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(8556201756972831128)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556211306169831143)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556201756972831128)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556213169658831146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556201643623831128)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8556213636722831146)
,p_button_id=>wwv_flow_imp.id(8556213169658831146)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556212744498831145)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556201643623831128)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556202237203831128)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8556201643623831128)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556214915098831148)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8556202185029831128)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556214162229831147)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556202185029831128)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556214519059831147)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8556202185029831128)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556215386058831148)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_static_id=>'add-users-to-access-control-list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8556202237203831128)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>8556215386058831148
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556215705175831148)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8556215705175831148
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556216294072831149)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556216192779831149)
,p_plug_name=>'Form on Feedback'
,p_static_id=>'form-on-feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556219364191831151)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556216294072831149)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8556219837387831151)
,p_button_id=>wwv_flow_imp.id(8556219364191831151)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556216306721831149)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556216294072831149)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8556226772482831158)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556220382910831152)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556216192779831149)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556223475714831156)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8556216192779831149)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556220742808831152)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8556216192779831149)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556221522455831153)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(8556216192779831149)
,p_prompt=>'Experience'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556221161876831152)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8556216192779831149)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from sys.dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8556226281491831158)
,p_validation_name=>'At least One Feedback Required'
,p_static_id=>'at-least-one-feedback-required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556223831878831156)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_static_id=>'submit-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'SUBMIT_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8556216306721831149)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>8556223831878831156
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556224835038831157)
,p_page_process_id=>wwv_flow_imp.id(8556223831878831156)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556224308876831156)
,p_page_process_id=>wwv_flow_imp.id(8556223831878831156)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556225373711831157)
,p_page_process_id=>wwv_flow_imp.id(8556223831878831156)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556225841388831157)
,p_page_process_id=>wwv_flow_imp.id(8556223831878831156)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556216780526831149)
,p_plug_name=>'Feedback Submitted'
,p_static_id=>'feedback-submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556216621759831149)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8556216780526831149)
,p_button_name=>'CLOSE'
,p_static_id=>'close'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'w40p'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8556227920490831160)
,p_button_id=>wwv_flow_imp.id(8556216621759831149)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556218044759831149)
,p_plug_name=>'Manage Feedback'
,p_static_id=>'manage-feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8556240776896831173)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8556240776896831173
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556242707469831182)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556243185301831183)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556243579951831185)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556241961916831178)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556246780270831196)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556242345588831180)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556243956536831186)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(8556221607966831153)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556244354072831188)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556245147290831190)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556244739587831189)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8556233568739831165)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556245924156831193)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556246317848831194)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8556245597833831192)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556251708854831202)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556217913743831149)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8556218044759831149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556252711951831203)
,p_event_id=>wwv_flow_imp.id(8556217913743831149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8556218044759831149)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(8555849305769830749)
,p_required_patch=>wwv_flow_imp.id(8555844864933830744)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556217496903831149)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556217312174831149)
,p_plug_name=>'Form Items Region'
,p_static_id=>'form-items-region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556229769378831162)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556217496903831149)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(8556230213924831162)
,p_button_id=>wwv_flow_imp.id(8556229769378831162)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556217744578831149)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8556217496903831149)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556217547719831149)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8556217496903831149)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556232605610831164)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556233403839831165)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556231871331831164)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_prompt=>'Filed'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556231070515831163)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556231421313831163)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_prompt=>'Page'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556232282579831164)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_prompt=>'Rating'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556233006044831165)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_prompt=>'Response'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556235762157831169)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8556217312174831149)
,p_prompt=>'User Agent'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556239372572831172)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8556217744578831149)
,p_internal_uid=>8556239372572831172
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556239752559831173)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8556239752559831173
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556238473957831172)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_static_id=>'delete-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'DELETE_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8556217744578831149)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>8556238473957831172
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556238914094831172)
,p_page_process_id=>wwv_flow_imp.id(8556238473957831172)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556236122180831170)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_static_id=>'load-data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8556236122180831170
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8556236587845831170)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_static_id=>'reply-to-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'REPLY_TO_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8556217547719831149)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>8556236587845831170
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556237060226831170)
,p_page_process_id=>wwv_flow_imp.id(8556236587845831170)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556238025840831171)
,p_page_process_id=>wwv_flow_imp.id(8556236587845831170)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8556237583623831171)
,p_page_process_id=>wwv_flow_imp.id(8556236587845831170)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20261027201553Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201553Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8555851874269830752)
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(8555845353973830744)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556253753847831205)
,p_plug_name=>'About Page'
,p_static_id=>'about-page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2325543309974442989
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(8555845353973830744)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556254446502831206)
,p_plug_name=>'Search Dialog'
,p_static_id=>'search-dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556254807850831207)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556254446502831206)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8556277632821831244)
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(8556278123451831245)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556282853945831252)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556283298978831253)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user-2'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER and workspace_id = :WORKSPACE_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8556283770157831253)
,p_region_id=>wwv_flow_imp.id(8556283298978831253)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556284209004831254)
,p_plug_name=>'Settings'
,p_static_id=>'settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(8556281798495831250)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8556277632821831244)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(8556277888720831245)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_last_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556279571084831247)
,p_plug_name=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8556279133609831247)
,p_plug_name=>'Push Notifications Not Supported'
,p_static_id=>'push-notifications-not-supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported u-DisplayNone'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8556278703302831246)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8556280082600831248)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8556279571084831247)
,p_prompt=>'Enable push notifications on this device'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8556280364962831248)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_static_id=>'change-p20010-enable-push'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556280788601831249)
,p_event_id=>wwv_flow_imp.id(8556280364962831248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_static_id=>'subscribe-to-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.subscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8556281220830831249)
,p_event_id=>wwv_flow_imp.id(8556280364962831248)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_static_id=>'unsubscribe-from-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.unsubscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261027201554Z')
,p_updated_on=>wwv_flow_imp.dz('20261027201554Z')
,p_created_by=>'GIOVANNASOUSAK@ICLOUD.COM'
,p_updated_by=>'GIOVANNASOUSAK@ICLOUD.COM'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
