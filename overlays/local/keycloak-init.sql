--
-- PostgreSQL database dump
--

\restrict zEtZ9e1ALZd7HhnRqj76DvrxD2vIcjj9PrByTdM2RPjvXNXL38JnkegUHXLN4Uv

-- Dumped from database version 17.10 (Debian 17.10-1.pgdg13+1)
-- Dumped by pg_dump version 17.10 (Debian 17.10-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS fkdc4897cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS fkdc34197cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS fk_user_group_user;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS fk_t13hpu1j94r2ebpekr39x5eu5;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS fk_supported_locales_realm;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS fk_role_attribute_id;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS fk_resource_server_uris;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS fk_req_act_realm;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS fk_r_def_cli_scope_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS fk_pmconfig;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS fk_pfyr0glasqyl0dei3kl69r6v0;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_pcm_realm;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS fk_ouse064plmlr732lxjcn1q5f1;
ALTER TABLE IF EXISTS ONLY public.org_invitation DROP CONSTRAINT IF EXISTS fk_org_invitation_org;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS fk_lojpho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS fk_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS fk_idpm_realm;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nxev9f5y69j;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nwedrf5y69j;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS fk_group_role_group;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS fk_group_organization;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS fk_group_attribute_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS fk_grntcsnt_user;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS fk_grntcsnt_clsc_usc;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_gr7thllb9lu8q4vqa4524jjy8;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS fk_frsrso213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrps213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpp213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpos53xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrpos13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS fk_frsrpo213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrpo2128cx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrpass3xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsrpas14xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog84sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog83sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82sspmt;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrasp13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsr5s213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_realm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_fedprv;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS fk_fedmapper_cfg;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS fk_def_groups_realm;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS fk_component_realm;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS fk_component_config;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS fk_client_init_acc_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_cli_scope_mapper;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS fk_cl_scope_rm_scope;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS fk_cl_scope_attr_scope;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS fk_c4fqv34p1mbylloxang7b1q3l;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS fk_auth_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS fk_auth_flow_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_flow;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_a63wvekftu8jo1pnj81e7mce2;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS fk_8shxd6l3e9atqukacxgpffptw;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS fk_70ej8xdxgxd0b9hh6180irr0o;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS fk_6vyqfe4cn4wlq8r6kt5vdsj5c;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS fk_6qj3w1jw9cvafhe19bwsiuvmd;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu043kqepovbr;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu022kqepovbr;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS fk_5hg65lybevavkqfki3kponh9v;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS fk_1fj32f6ptolw2qy60cd8n01e8;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS fk_1burs8pb4ouj97h5wuppahv9f;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS fk4129723ba992f594;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS fk404288b92ef007a6;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS fk3c47c64beacca966;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS fk2b4ebc52ae5c3b34;
DROP INDEX IF EXISTS public.user_attr_long_values_lower_case;
DROP INDEX IF EXISTS public.user_attr_long_values;
DROP INDEX IF EXISTS public.idx_workflow_state_step;
DROP INDEX IF EXISTS public.idx_workflow_state_provider;
DROP INDEX IF EXISTS public.idx_web_orig_client;
DROP INDEX IF EXISTS public.idx_usr_fed_prv_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_fed_prv;
DROP INDEX IF EXISTS public.idx_user_session_expiration_last_refresh;
DROP INDEX IF EXISTS public.idx_user_session_expiration_created;
DROP INDEX IF EXISTS public.idx_user_service_account;
DROP INDEX IF EXISTS public.idx_user_role_mapping;
DROP INDEX IF EXISTS public.idx_user_reqactions;
DROP INDEX IF EXISTS public.idx_user_group_mapping;
DROP INDEX IF EXISTS public.idx_user_email;
DROP INDEX IF EXISTS public.idx_user_credential;
DROP INDEX IF EXISTS public.idx_user_created_timestamp;
DROP INDEX IF EXISTS public.idx_user_consent;
DROP INDEX IF EXISTS public.idx_user_attribute_name;
DROP INDEX IF EXISTS public.idx_user_attribute;
DROP INDEX IF EXISTS public.idx_usconsent_scope_id;
DROP INDEX IF EXISTS public.idx_usconsent_clscope;
DROP INDEX IF EXISTS public.idx_update_time;
DROP INDEX IF EXISTS public.idx_scope_policy_policy;
DROP INDEX IF EXISTS public.idx_scope_mapping_role;
DROP INDEX IF EXISTS public.idx_role_clscope;
DROP INDEX IF EXISTS public.idx_role_attribute;
DROP INDEX IF EXISTS public.idx_rev_token_on_expire;
DROP INDEX IF EXISTS public.idx_res_srv_scope_res_srv;
DROP INDEX IF EXISTS public.idx_res_srv_res_res_srv;
DROP INDEX IF EXISTS public.idx_res_serv_pol_res_serv;
DROP INDEX IF EXISTS public.idx_res_scope_scope;
DROP INDEX IF EXISTS public.idx_res_policy_policy;
DROP INDEX IF EXISTS public.idx_req_act_prov_realm;
DROP INDEX IF EXISTS public.idx_redir_uri_client;
DROP INDEX IF EXISTS public.idx_realm_supp_local_realm;
DROP INDEX IF EXISTS public.idx_realm_master_adm_cli;
DROP INDEX IF EXISTS public.idx_realm_evt_types_realm;
DROP INDEX IF EXISTS public.idx_realm_evt_list_realm;
DROP INDEX IF EXISTS public.idx_realm_def_grp_realm;
DROP INDEX IF EXISTS public.idx_realm_clscope;
DROP INDEX IF EXISTS public.idx_realm_attr_realm;
DROP INDEX IF EXISTS public.idx_protocol_mapper_client;
DROP INDEX IF EXISTS public.idx_perm_ticket_requester;
DROP INDEX IF EXISTS public.idx_perm_ticket_owner;
DROP INDEX IF EXISTS public.idx_org_invitation_org_id;
DROP INDEX IF EXISTS public.idx_org_invitation_expires;
DROP INDEX IF EXISTS public.idx_org_invitation_email;
DROP INDEX IF EXISTS public.idx_org_domain_org_id;
DROP INDEX IF EXISTS public.idx_offline_uss_by_user;
DROP INDEX IF EXISTS public.idx_offline_uss_by_broker_session_id;
DROP INDEX IF EXISTS public.idx_offline_css_by_user_session_and_offline;
DROP INDEX IF EXISTS public.idx_offline_css_by_client_storage_provider;
DROP INDEX IF EXISTS public.idx_offline_css_by_client_and_realm;
DROP INDEX IF EXISTS public.idx_offline_css_by_client;
DROP INDEX IF EXISTS public.idx_keycloak_role_realm;
DROP INDEX IF EXISTS public.idx_keycloak_role_client;
DROP INDEX IF EXISTS public.idx_idp_realm_org;
DROP INDEX IF EXISTS public.idx_idp_for_login;
DROP INDEX IF EXISTS public.idx_ident_prov_realm;
DROP INDEX IF EXISTS public.idx_id_prov_mapp_realm;
DROP INDEX IF EXISTS public.idx_group_role_mapp_group;
DROP INDEX IF EXISTS public.idx_group_org_id;
DROP INDEX IF EXISTS public.idx_group_attr_group;
DROP INDEX IF EXISTS public.idx_group_att_by_name_value;
DROP INDEX IF EXISTS public.idx_fu_role_mapping_ru;
DROP INDEX IF EXISTS public.idx_fu_role_mapping;
DROP INDEX IF EXISTS public.idx_fu_required_action_ru;
DROP INDEX IF EXISTS public.idx_fu_required_action;
DROP INDEX IF EXISTS public.idx_fu_group_membership_ru;
DROP INDEX IF EXISTS public.idx_fu_group_membership;
DROP INDEX IF EXISTS public.idx_fu_credential_ru;
DROP INDEX IF EXISTS public.idx_fu_credential;
DROP INDEX IF EXISTS public.idx_fu_consent_ru;
DROP INDEX IF EXISTS public.idx_fu_consent;
DROP INDEX IF EXISTS public.idx_fu_cnsnt_ext;
DROP INDEX IF EXISTS public.idx_fu_attribute;
DROP INDEX IF EXISTS public.idx_fedidentity_user;
DROP INDEX IF EXISTS public.idx_fedidentity_feduser;
DROP INDEX IF EXISTS public.idx_event_time;
DROP INDEX IF EXISTS public.idx_event_entity_user_id_type;
DROP INDEX IF EXISTS public.idx_defcls_scope;
DROP INDEX IF EXISTS public.idx_defcls_realm;
DROP INDEX IF EXISTS public.idx_composite_child;
DROP INDEX IF EXISTS public.idx_composite;
DROP INDEX IF EXISTS public.idx_component_realm;
DROP INDEX IF EXISTS public.idx_component_provider_type;
DROP INDEX IF EXISTS public.idx_compo_config_compo;
DROP INDEX IF EXISTS public.idx_clscope_role;
DROP INDEX IF EXISTS public.idx_clscope_protmap;
DROP INDEX IF EXISTS public.idx_clscope_cl;
DROP INDEX IF EXISTS public.idx_clscope_attrs;
DROP INDEX IF EXISTS public.idx_client_init_acc_realm;
DROP INDEX IF EXISTS public.idx_client_id;
DROP INDEX IF EXISTS public.idx_client_att_by_name_value;
DROP INDEX IF EXISTS public.idx_cl_clscope;
DROP INDEX IF EXISTS public.idx_broker_link_user_id;
DROP INDEX IF EXISTS public.idx_broker_link_identity_provider;
DROP INDEX IF EXISTS public.idx_auth_flow_realm;
DROP INDEX IF EXISTS public.idx_auth_exec_realm_flow;
DROP INDEX IF EXISTS public.idx_auth_exec_flow;
DROP INDEX IF EXISTS public.idx_auth_config_realm;
DROP INDEX IF EXISTS public.idx_assoc_pol_assoc_pol_id;
DROP INDEX IF EXISTS public.idx_admin_event_time;
DROP INDEX IF EXISTS public.fed_user_attr_long_values_lower_case;
DROP INDEX IF EXISTS public.fed_user_attr_long_values;
ALTER TABLE IF EXISTS ONLY public.workflow_state DROP CONSTRAINT IF EXISTS uq_workflow_resource;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_ru8tt6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS uk_orvsdmla56612eaefiq6wl5oi;
ALTER TABLE IF EXISTS ONLY public.org DROP CONSTRAINT IF EXISTS uk_org_name;
ALTER TABLE IF EXISTS ONLY public.org_invitation DROP CONSTRAINT IF EXISTS uk_org_invitation_email;
ALTER TABLE IF EXISTS ONLY public.org DROP CONSTRAINT IF EXISTS uk_org_group;
ALTER TABLE IF EXISTS ONLY public.org DROP CONSTRAINT IF EXISTS uk_org_alias;
ALTER TABLE IF EXISTS ONLY public.migration_model DROP CONSTRAINT IF EXISTS uk_migration_version;
ALTER TABLE IF EXISTS ONLY public.migration_model DROP CONSTRAINT IF EXISTS uk_migration_update_time;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS uk_local_consent;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS uk_frsrst700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS uk_frsrpt700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5pmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS uk_external_consent;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_dykn684sl8up1crfei6eckhd7;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS uk_cli_scope;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS uk_b71cjlbenv945rb6gcon438at;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS uk_2daelwnibji49avxsrtuf6xj33;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS sibling_names;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS res_attr_pk;
ALTER TABLE IF EXISTS ONLY public.realm_localizations DROP CONSTRAINT IF EXISTS realm_localizations_pkey;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS r_def_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.workflow_state DROP CONSTRAINT IF EXISTS pk_workflow_state;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS pk_template_scope;
ALTER TABLE IF EXISTS ONLY public.resource_server DROP CONSTRAINT IF EXISTS pk_resource_server;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS pk_cli_template;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS pk_cl_tmpl_attr;
ALTER TABLE IF EXISTS ONLY public.databasechangeloglock DROP CONSTRAINT IF EXISTS databasechangeloglock_pkey;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS constraint_web_origins;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS constraint_user_group;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS constraint_user_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.revoked_token DROP CONSTRAINT IF EXISTS constraint_rt;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS constraint_role_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS constraint_resour_uris_pk;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS constraint_required_action;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS constraint_req_act_prv_pk;
ALTER TABLE IF EXISTS ONLY public.required_action_config DROP CONSTRAINT IF EXISTS constraint_req_act_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS constraint_redirect_uris;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS constraint_pmconfig;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS constraint_pcm;
ALTER TABLE IF EXISTS ONLY public.org_invitation DROP CONSTRAINT IF EXISTS constraint_org_invitation;
ALTER TABLE IF EXISTS ONLY public.offline_user_session DROP CONSTRAINT IF EXISTS constraint_offl_us_ses_pk2;
ALTER TABLE IF EXISTS ONLY public.offline_client_session DROP CONSTRAINT IF EXISTS constraint_offl_cl_ses_pk3;
ALTER TABLE IF EXISTS ONLY public.migration_model DROP CONSTRAINT IF EXISTS constraint_migmod;
ALTER TABLE IF EXISTS ONLY public.jgroups_ping DROP CONSTRAINT IF EXISTS constraint_jgroups_ping;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS constraint_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS constraint_idpm;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS constraint_group_role;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS constraint_group_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS constraint_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS constraint_grntcsnt_pm;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS constraint_grntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent_cl_scope DROP CONSTRAINT IF EXISTS constraint_fgrntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS constraint_fedmapperpm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS constraint_fedmapper_cfg_pm;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS constraint_fb;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS constraint_farsrsps;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS constraint_farsrsp;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS constraint_farsrs;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS constraint_farsrpp;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS constraint_farsrpap;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS constraint_farsrp;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS constraint_farsr;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS constraint_fapmt;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS constraint_f9;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS constraint_f;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS constraint_e;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS constraint_dpc;
ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS constraint_d;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS constraint_composite_role;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS constraint_c;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS constraint_auth_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS constraint_auth_flow_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS constraint_auth_exec_pk;
ALTER TABLE IF EXISTS ONLY public.authenticator_config_entry DROP CONSTRAINT IF EXISTS constraint_auth_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.admin_event_entity DROP CONSTRAINT IF EXISTS constraint_admin_event_entity;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS constraint_a;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS constraint_92;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS constraint_9;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS constraint_84;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS constraint_81;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS constraint_7;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS constraint_5c;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS constraint_4a;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS constraint_40;
ALTER TABLE IF EXISTS ONLY public.event_entity DROP CONSTRAINT IF EXISTS constraint_4;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS constraint_3c;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS constraint_2b;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS constr_realm_supported_locales;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS constr_realm_events_listeners;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS constr_realm_enabl_event_types;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS constr_realm_default_groups;
ALTER TABLE IF EXISTS ONLY public.federated_user DROP CONSTRAINT IF EXISTS constr_federated_user;
ALTER TABLE IF EXISTS ONLY public.fed_user_role_mapping DROP CONSTRAINT IF EXISTS constr_fed_user_role;
ALTER TABLE IF EXISTS ONLY public.fed_user_group_membership DROP CONSTRAINT IF EXISTS constr_fed_user_group;
ALTER TABLE IF EXISTS ONLY public.fed_user_credential DROP CONSTRAINT IF EXISTS constr_fed_user_cred_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent DROP CONSTRAINT IF EXISTS constr_fed_user_consent_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_attribute DROP CONSTRAINT IF EXISTS constr_fed_user_attr_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_required_action DROP CONSTRAINT IF EXISTS constr_fed_required_action;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS constr_component_pk;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS constr_component_config_pk;
ALTER TABLE IF EXISTS ONLY public.broker_link DROP CONSTRAINT IF EXISTS constr_broker_link_pk;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS con_group_id_def_groups;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS cnstr_client_init_acc_pk;
ALTER TABLE IF EXISTS ONLY public.client_scope_client DROP CONSTRAINT IF EXISTS c_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.client_auth_flow_bindings DROP CONSTRAINT IF EXISTS c_cli_flow_bind;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS "UK_J3RWUVD56ONTGSUHOGM184WW2-2";
ALTER TABLE IF EXISTS ONLY public.server_config DROP CONSTRAINT IF EXISTS "SERVER_CONFIG_pkey";
ALTER TABLE IF EXISTS ONLY public.org DROP CONSTRAINT IF EXISTS "ORG_pkey";
ALTER TABLE IF EXISTS ONLY public.org_domain DROP CONSTRAINT IF EXISTS "ORG_DOMAIN_pkey";
DROP TABLE IF EXISTS public.workflow_state;
DROP TABLE IF EXISTS public.web_origins;
DROP TABLE IF EXISTS public.user_role_mapping;
DROP TABLE IF EXISTS public.user_required_action;
DROP TABLE IF EXISTS public.user_group_membership;
DROP TABLE IF EXISTS public.user_federation_provider;
DROP TABLE IF EXISTS public.user_federation_mapper_config;
DROP TABLE IF EXISTS public.user_federation_mapper;
DROP TABLE IF EXISTS public.user_federation_config;
DROP TABLE IF EXISTS public.user_entity;
DROP TABLE IF EXISTS public.user_consent_client_scope;
DROP TABLE IF EXISTS public.user_consent;
DROP TABLE IF EXISTS public.user_attribute;
DROP TABLE IF EXISTS public.server_config;
DROP TABLE IF EXISTS public.scope_policy;
DROP TABLE IF EXISTS public.scope_mapping;
DROP TABLE IF EXISTS public.role_attribute;
DROP TABLE IF EXISTS public.revoked_token;
DROP TABLE IF EXISTS public.resource_uris;
DROP TABLE IF EXISTS public.resource_server_scope;
DROP TABLE IF EXISTS public.resource_server_resource;
DROP TABLE IF EXISTS public.resource_server_policy;
DROP TABLE IF EXISTS public.resource_server_perm_ticket;
DROP TABLE IF EXISTS public.resource_server;
DROP TABLE IF EXISTS public.resource_scope;
DROP TABLE IF EXISTS public.resource_policy;
DROP TABLE IF EXISTS public.resource_attribute;
DROP TABLE IF EXISTS public.required_action_provider;
DROP TABLE IF EXISTS public.required_action_config;
DROP TABLE IF EXISTS public.redirect_uris;
DROP TABLE IF EXISTS public.realm_supported_locales;
DROP TABLE IF EXISTS public.realm_smtp_config;
DROP TABLE IF EXISTS public.realm_required_credential;
DROP TABLE IF EXISTS public.realm_localizations;
DROP TABLE IF EXISTS public.realm_events_listeners;
DROP TABLE IF EXISTS public.realm_enabled_event_types;
DROP TABLE IF EXISTS public.realm_default_groups;
DROP TABLE IF EXISTS public.realm_attribute;
DROP TABLE IF EXISTS public.realm;
DROP TABLE IF EXISTS public.protocol_mapper_config;
DROP TABLE IF EXISTS public.protocol_mapper;
DROP TABLE IF EXISTS public.policy_config;
DROP TABLE IF EXISTS public.org_invitation;
DROP TABLE IF EXISTS public.org_domain;
DROP TABLE IF EXISTS public.org;
DROP TABLE IF EXISTS public.offline_user_session;
DROP TABLE IF EXISTS public.offline_client_session;
DROP TABLE IF EXISTS public.migration_model;
DROP TABLE IF EXISTS public.keycloak_role;
DROP TABLE IF EXISTS public.keycloak_group;
DROP TABLE IF EXISTS public.jgroups_ping;
DROP TABLE IF EXISTS public.idp_mapper_config;
DROP TABLE IF EXISTS public.identity_provider_mapper;
DROP TABLE IF EXISTS public.identity_provider_config;
DROP TABLE IF EXISTS public.identity_provider;
DROP TABLE IF EXISTS public.group_role_mapping;
DROP TABLE IF EXISTS public.group_attribute;
DROP TABLE IF EXISTS public.federated_user;
DROP TABLE IF EXISTS public.federated_identity;
DROP TABLE IF EXISTS public.fed_user_role_mapping;
DROP TABLE IF EXISTS public.fed_user_required_action;
DROP TABLE IF EXISTS public.fed_user_group_membership;
DROP TABLE IF EXISTS public.fed_user_credential;
DROP TABLE IF EXISTS public.fed_user_consent_cl_scope;
DROP TABLE IF EXISTS public.fed_user_consent;
DROP TABLE IF EXISTS public.fed_user_attribute;
DROP TABLE IF EXISTS public.event_entity;
DROP TABLE IF EXISTS public.default_client_scope;
DROP TABLE IF EXISTS public.databasechangeloglock;
DROP TABLE IF EXISTS public.databasechangelog;
DROP TABLE IF EXISTS public.credential;
DROP TABLE IF EXISTS public.composite_role;
DROP TABLE IF EXISTS public.component_config;
DROP TABLE IF EXISTS public.component;
DROP TABLE IF EXISTS public.client_scope_role_mapping;
DROP TABLE IF EXISTS public.client_scope_client;
DROP TABLE IF EXISTS public.client_scope_attributes;
DROP TABLE IF EXISTS public.client_scope;
DROP TABLE IF EXISTS public.client_node_registrations;
DROP TABLE IF EXISTS public.client_initial_access;
DROP TABLE IF EXISTS public.client_auth_flow_bindings;
DROP TABLE IF EXISTS public.client_attributes;
DROP TABLE IF EXISTS public.client;
DROP TABLE IF EXISTS public.broker_link;
DROP TABLE IF EXISTS public.authenticator_config_entry;
DROP TABLE IF EXISTS public.authenticator_config;
DROP TABLE IF EXISTS public.authentication_flow;
DROP TABLE IF EXISTS public.authentication_execution;
DROP TABLE IF EXISTS public.associated_policy;
DROP TABLE IF EXISTS public.admin_event_entity;
--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_event_entity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.admin_event_entity (
    id character varying(36) NOT NULL,
    admin_event_time bigint,
    realm_id character varying(255),
    operation_type character varying(255),
    auth_realm_id character varying(255),
    auth_client_id character varying(255),
    auth_user_id character varying(255),
    ip_address character varying(255),
    resource_path character varying(2550),
    representation text,
    error character varying(255),
    resource_type character varying(64),
    details_json text
);


ALTER TABLE public.admin_event_entity OWNER TO keycloak;

--
-- Name: associated_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.associated_policy (
    policy_id character varying(36) NOT NULL,
    associated_policy_id character varying(36) NOT NULL
);


ALTER TABLE public.associated_policy OWNER TO keycloak;

--
-- Name: authentication_execution; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authentication_execution (
    id character varying(36) NOT NULL,
    alias character varying(255),
    authenticator character varying(36),
    realm_id character varying(36),
    flow_id character varying(36),
    requirement integer,
    priority integer,
    authenticator_flow boolean DEFAULT false NOT NULL,
    auth_flow_id character varying(36),
    auth_config character varying(36)
);


ALTER TABLE public.authentication_execution OWNER TO keycloak;

--
-- Name: authentication_flow; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authentication_flow (
    id character varying(36) NOT NULL,
    alias character varying(255),
    description character varying(255),
    realm_id character varying(36),
    provider_id character varying(36) DEFAULT 'basic-flow'::character varying NOT NULL,
    top_level boolean DEFAULT false NOT NULL,
    built_in boolean DEFAULT false NOT NULL
);


ALTER TABLE public.authentication_flow OWNER TO keycloak;

--
-- Name: authenticator_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authenticator_config (
    id character varying(36) NOT NULL,
    alias character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.authenticator_config OWNER TO keycloak;

--
-- Name: authenticator_config_entry; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authenticator_config_entry (
    authenticator_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.authenticator_config_entry OWNER TO keycloak;

--
-- Name: broker_link; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.broker_link (
    identity_provider character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL,
    broker_user_id character varying(255),
    broker_username character varying(255),
    token text,
    user_id character varying(255) NOT NULL
);


ALTER TABLE public.broker_link OWNER TO keycloak;

--
-- Name: client; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client (
    id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    full_scope_allowed boolean DEFAULT false NOT NULL,
    client_id character varying(255),
    not_before integer,
    public_client boolean DEFAULT false NOT NULL,
    secret character varying(255),
    base_url character varying(255),
    bearer_only boolean DEFAULT false NOT NULL,
    management_url character varying(255),
    surrogate_auth_required boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    protocol character varying(255),
    node_rereg_timeout integer DEFAULT 0,
    frontchannel_logout boolean DEFAULT false NOT NULL,
    consent_required boolean DEFAULT false NOT NULL,
    name character varying(255),
    service_accounts_enabled boolean DEFAULT false NOT NULL,
    client_authenticator_type character varying(255),
    root_url character varying(255),
    description character varying(255),
    registration_token character varying(255),
    standard_flow_enabled boolean DEFAULT true NOT NULL,
    implicit_flow_enabled boolean DEFAULT false NOT NULL,
    direct_access_grants_enabled boolean DEFAULT false NOT NULL,
    always_display_in_console boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client OWNER TO keycloak;

--
-- Name: client_attributes; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_attributes (
    client_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.client_attributes OWNER TO keycloak;

--
-- Name: client_auth_flow_bindings; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_auth_flow_bindings (
    client_id character varying(36) NOT NULL,
    flow_id character varying(36),
    binding_name character varying(255) NOT NULL
);


ALTER TABLE public.client_auth_flow_bindings OWNER TO keycloak;

--
-- Name: client_initial_access; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_initial_access (
    id character varying(36) NOT NULL,
    realm_id character varying(36) NOT NULL,
    "timestamp" integer,
    expiration integer,
    count integer,
    remaining_count integer
);


ALTER TABLE public.client_initial_access OWNER TO keycloak;

--
-- Name: client_node_registrations; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_node_registrations (
    client_id character varying(36) NOT NULL,
    value integer,
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_node_registrations OWNER TO keycloak;

--
-- Name: client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope (
    id character varying(36) NOT NULL,
    name character varying(255),
    realm_id character varying(36),
    description character varying(255),
    protocol character varying(255)
);


ALTER TABLE public.client_scope OWNER TO keycloak;

--
-- Name: client_scope_attributes; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_attributes (
    scope_id character varying(36) NOT NULL,
    value character varying(2048),
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_scope_attributes OWNER TO keycloak;

--
-- Name: client_scope_client; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_client (
    client_id character varying(255) NOT NULL,
    scope_id character varying(255) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client_scope_client OWNER TO keycloak;

--
-- Name: client_scope_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_role_mapping (
    scope_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.client_scope_role_mapping OWNER TO keycloak;

--
-- Name: component; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.component (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_id character varying(36),
    provider_id character varying(36),
    provider_type character varying(255),
    realm_id character varying(36),
    sub_type character varying(255)
);


ALTER TABLE public.component OWNER TO keycloak;

--
-- Name: component_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.component_config (
    id character varying(36) NOT NULL,
    component_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.component_config OWNER TO keycloak;

--
-- Name: composite_role; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.composite_role (
    composite character varying(36) NOT NULL,
    child_role character varying(36) NOT NULL
);


ALTER TABLE public.composite_role OWNER TO keycloak;

--
-- Name: credential; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    user_id character varying(36),
    created_date bigint,
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer,
    version integer DEFAULT 0
);


ALTER TABLE public.credential OWNER TO keycloak;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO keycloak;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO keycloak;

--
-- Name: default_client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.default_client_scope (
    realm_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.default_client_scope OWNER TO keycloak;

--
-- Name: event_entity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.event_entity (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    details_json character varying(2550),
    error character varying(255),
    ip_address character varying(255),
    realm_id character varying(255),
    session_id character varying(255),
    event_time bigint,
    type character varying(255),
    user_id character varying(255),
    details_json_long_value text
);


ALTER TABLE public.event_entity OWNER TO keycloak;

--
-- Name: fed_user_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_attribute (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    value character varying(2024),
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);


ALTER TABLE public.fed_user_attribute OWNER TO keycloak;

--
-- Name: fed_user_consent; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.fed_user_consent OWNER TO keycloak;

--
-- Name: fed_user_consent_cl_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_consent_cl_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.fed_user_consent_cl_scope OWNER TO keycloak;

--
-- Name: fed_user_credential; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    created_date bigint,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);


ALTER TABLE public.fed_user_credential OWNER TO keycloak;

--
-- Name: fed_user_group_membership; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_group_membership OWNER TO keycloak;

--
-- Name: fed_user_required_action; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_required_action (
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_required_action OWNER TO keycloak;

--
-- Name: fed_user_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_role_mapping (
    role_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_role_mapping OWNER TO keycloak;

--
-- Name: federated_identity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.federated_identity (
    identity_provider character varying(255) NOT NULL,
    realm_id character varying(36),
    federated_user_id character varying(255),
    federated_username character varying(255),
    token text,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_identity OWNER TO keycloak;

--
-- Name: federated_user; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.federated_user (
    id character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_user OWNER TO keycloak;

--
-- Name: group_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.group_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_attribute OWNER TO keycloak;

--
-- Name: group_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.group_role_mapping (
    role_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_role_mapping OWNER TO keycloak;

--
-- Name: identity_provider; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider (
    internal_id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    provider_alias character varying(255),
    provider_id character varying(255),
    store_token boolean,
    authenticate_by_default boolean,
    realm_id character varying(36),
    add_token_role boolean,
    trust_email boolean,
    first_broker_login_flow_id character varying(36),
    post_broker_login_flow_id character varying(36),
    provider_display_name character varying(255),
    link_only boolean,
    organization_id character varying(255),
    hide_on_login boolean
);


ALTER TABLE public.identity_provider OWNER TO keycloak;

--
-- Name: identity_provider_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider_config (
    identity_provider_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.identity_provider_config OWNER TO keycloak;

--
-- Name: identity_provider_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    idp_alias character varying(255) NOT NULL,
    idp_mapper_name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.identity_provider_mapper OWNER TO keycloak;

--
-- Name: idp_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.idp_mapper_config (
    idp_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.idp_mapper_config OWNER TO keycloak;

--
-- Name: jgroups_ping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.jgroups_ping (
    address character varying(200) NOT NULL,
    name character varying(200),
    cluster_name character varying(200) NOT NULL,
    ip character varying(200) NOT NULL,
    coord boolean
);


ALTER TABLE public.jgroups_ping OWNER TO keycloak;

--
-- Name: keycloak_group; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.keycloak_group (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_group character varying(36) NOT NULL,
    realm_id character varying(36),
    type integer DEFAULT 0 NOT NULL,
    description character varying(255),
    org_id character varying(255),
    created_timestamp bigint,
    last_modified_timestamp bigint
);


ALTER TABLE public.keycloak_group OWNER TO keycloak;

--
-- Name: keycloak_role; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.keycloak_role (
    id character varying(36) NOT NULL,
    client_realm_constraint character varying(255),
    client_role boolean DEFAULT false NOT NULL,
    description character varying(255),
    name character varying(255),
    realm_id character varying(255),
    client character varying(36),
    realm character varying(36)
);


ALTER TABLE public.keycloak_role OWNER TO keycloak;

--
-- Name: migration_model; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.migration_model (
    id character varying(36) NOT NULL,
    version character varying(36),
    update_time bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.migration_model OWNER TO keycloak;

--
-- Name: offline_client_session; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.offline_client_session (
    user_session_id character varying(36) NOT NULL,
    client_id character varying(255) NOT NULL,
    offline_flag character varying(4) NOT NULL,
    "timestamp" integer,
    data text,
    client_storage_provider character varying(36) DEFAULT 'local'::character varying NOT NULL,
    external_client_id character varying(255) DEFAULT 'local'::character varying NOT NULL,
    version integer DEFAULT 0,
    realm_id character varying(36)
);


ALTER TABLE public.offline_client_session OWNER TO keycloak;

--
-- Name: offline_user_session; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.offline_user_session (
    user_session_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    created_on integer NOT NULL,
    offline_flag character varying(4) NOT NULL,
    data text,
    last_session_refresh integer DEFAULT 0 NOT NULL,
    broker_session_id character varying(1024),
    version integer DEFAULT 0,
    remember_me boolean
);


ALTER TABLE public.offline_user_session OWNER TO keycloak;

--
-- Name: org; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.org (
    id character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    realm_id character varying(255) NOT NULL,
    group_id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(4000),
    alias character varying(255) NOT NULL,
    redirect_url character varying(2048)
);


ALTER TABLE public.org OWNER TO keycloak;

--
-- Name: org_domain; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.org_domain (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    verified boolean NOT NULL,
    org_id character varying(255) NOT NULL
);


ALTER TABLE public.org_domain OWNER TO keycloak;

--
-- Name: org_invitation; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.org_invitation (
    id character varying(36) NOT NULL,
    organization_id character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    created_at integer NOT NULL,
    expires_at integer,
    invite_link character varying(2048)
);


ALTER TABLE public.org_invitation OWNER TO keycloak;

--
-- Name: policy_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.policy_config (
    policy_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.policy_config OWNER TO keycloak;

--
-- Name: protocol_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.protocol_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    protocol character varying(255) NOT NULL,
    protocol_mapper_name character varying(255) NOT NULL,
    client_id character varying(36),
    client_scope_id character varying(36)
);


ALTER TABLE public.protocol_mapper OWNER TO keycloak;

--
-- Name: protocol_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.protocol_mapper_config (
    protocol_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.protocol_mapper_config OWNER TO keycloak;

--
-- Name: realm; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm (
    id character varying(36) NOT NULL,
    access_code_lifespan integer,
    user_action_lifespan integer,
    access_token_lifespan integer,
    account_theme character varying(255),
    admin_theme character varying(255),
    email_theme character varying(255),
    enabled boolean DEFAULT false NOT NULL,
    events_enabled boolean DEFAULT false NOT NULL,
    events_expiration bigint,
    login_theme character varying(255),
    name character varying(255),
    not_before integer,
    password_policy character varying(2550),
    registration_allowed boolean DEFAULT false NOT NULL,
    remember_me boolean DEFAULT false NOT NULL,
    reset_password_allowed boolean DEFAULT false NOT NULL,
    social boolean DEFAULT false NOT NULL,
    ssl_required character varying(255),
    sso_idle_timeout integer,
    sso_max_lifespan integer,
    update_profile_on_soc_login boolean DEFAULT false NOT NULL,
    verify_email boolean DEFAULT false NOT NULL,
    master_admin_client character varying(36),
    login_lifespan integer,
    internationalization_enabled boolean DEFAULT false NOT NULL,
    default_locale character varying(255),
    reg_email_as_username boolean DEFAULT false NOT NULL,
    admin_events_enabled boolean DEFAULT false NOT NULL,
    admin_events_details_enabled boolean DEFAULT false NOT NULL,
    edit_username_allowed boolean DEFAULT false NOT NULL,
    otp_policy_counter integer DEFAULT 0,
    otp_policy_window integer DEFAULT 1,
    otp_policy_period integer DEFAULT 30,
    otp_policy_digits integer DEFAULT 6,
    otp_policy_alg character varying(36) DEFAULT 'HmacSHA1'::character varying,
    otp_policy_type character varying(36) DEFAULT 'totp'::character varying,
    browser_flow character varying(36),
    registration_flow character varying(36),
    direct_grant_flow character varying(36),
    reset_credentials_flow character varying(36),
    client_auth_flow character varying(36),
    offline_session_idle_timeout integer DEFAULT 0,
    revoke_refresh_token boolean DEFAULT false NOT NULL,
    access_token_life_implicit integer DEFAULT 0,
    login_with_email_allowed boolean DEFAULT true NOT NULL,
    duplicate_emails_allowed boolean DEFAULT false NOT NULL,
    docker_auth_flow character varying(36),
    refresh_token_max_reuse integer DEFAULT 0,
    allow_user_managed_access boolean DEFAULT false NOT NULL,
    sso_max_lifespan_remember_me integer DEFAULT 0 NOT NULL,
    sso_idle_timeout_remember_me integer DEFAULT 0 NOT NULL,
    default_role character varying(255)
);


ALTER TABLE public.realm OWNER TO keycloak;

--
-- Name: realm_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_attribute (
    name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    value text
);


ALTER TABLE public.realm_attribute OWNER TO keycloak;

--
-- Name: realm_default_groups; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_default_groups (
    realm_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_groups OWNER TO keycloak;

--
-- Name: realm_enabled_event_types; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_enabled_event_types (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_enabled_event_types OWNER TO keycloak;

--
-- Name: realm_events_listeners; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_events_listeners (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_events_listeners OWNER TO keycloak;

--
-- Name: realm_localizations; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_localizations (
    realm_id character varying(255) NOT NULL,
    locale character varying(255) NOT NULL,
    texts text NOT NULL
);


ALTER TABLE public.realm_localizations OWNER TO keycloak;

--
-- Name: realm_required_credential; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_required_credential (
    type character varying(255) NOT NULL,
    form_label character varying(255),
    input boolean DEFAULT false NOT NULL,
    secret boolean DEFAULT false NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_required_credential OWNER TO keycloak;

--
-- Name: realm_smtp_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_smtp_config (
    realm_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.realm_smtp_config OWNER TO keycloak;

--
-- Name: realm_supported_locales; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_supported_locales (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_supported_locales OWNER TO keycloak;

--
-- Name: redirect_uris; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.redirect_uris (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.redirect_uris OWNER TO keycloak;

--
-- Name: required_action_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.required_action_config (
    required_action_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.required_action_config OWNER TO keycloak;

--
-- Name: required_action_provider; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.required_action_provider (
    id character varying(36) NOT NULL,
    alias character varying(255),
    name character varying(255),
    realm_id character varying(36),
    enabled boolean DEFAULT false NOT NULL,
    default_action boolean DEFAULT false NOT NULL,
    provider_id character varying(255),
    priority integer
);


ALTER TABLE public.required_action_provider OWNER TO keycloak;

--
-- Name: resource_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    resource_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_attribute OWNER TO keycloak;

--
-- Name: resource_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_policy (
    resource_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_policy OWNER TO keycloak;

--
-- Name: resource_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_scope (
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_scope OWNER TO keycloak;

--
-- Name: resource_server; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server (
    id character varying(36) NOT NULL,
    allow_rs_remote_mgmt boolean DEFAULT false NOT NULL,
    policy_enforce_mode smallint NOT NULL,
    decision_strategy smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.resource_server OWNER TO keycloak;

--
-- Name: resource_server_perm_ticket; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_perm_ticket (
    id character varying(36) NOT NULL,
    owner character varying(255) NOT NULL,
    requester character varying(255) NOT NULL,
    created_timestamp bigint NOT NULL,
    granted_timestamp bigint,
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36),
    resource_server_id character varying(36) NOT NULL,
    policy_id character varying(36)
);


ALTER TABLE public.resource_server_perm_ticket OWNER TO keycloak;

--
-- Name: resource_server_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_policy (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255) NOT NULL,
    decision_strategy smallint,
    logic smallint,
    resource_server_id character varying(36) NOT NULL,
    owner character varying(255)
);


ALTER TABLE public.resource_server_policy OWNER TO keycloak;

--
-- Name: resource_server_resource; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_resource (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255),
    icon_uri character varying(255),
    owner character varying(255) NOT NULL,
    resource_server_id character varying(36) NOT NULL,
    owner_managed_access boolean DEFAULT false NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_resource OWNER TO keycloak;

--
-- Name: resource_server_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_scope (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    icon_uri character varying(255),
    resource_server_id character varying(36) NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_scope OWNER TO keycloak;

--
-- Name: resource_uris; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_uris (
    resource_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.resource_uris OWNER TO keycloak;

--
-- Name: revoked_token; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.revoked_token (
    id character varying(255) NOT NULL,
    expire bigint NOT NULL
);


ALTER TABLE public.revoked_token OWNER TO keycloak;

--
-- Name: role_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.role_attribute (
    id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255)
);


ALTER TABLE public.role_attribute OWNER TO keycloak;

--
-- Name: scope_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.scope_mapping (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_mapping OWNER TO keycloak;

--
-- Name: scope_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.scope_policy (
    scope_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_policy OWNER TO keycloak;

--
-- Name: server_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.server_config (
    server_config_key character varying(255) NOT NULL,
    value text NOT NULL,
    version integer DEFAULT 0
);


ALTER TABLE public.server_config OWNER TO keycloak;

--
-- Name: user_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    user_id character varying(36) NOT NULL,
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);


ALTER TABLE public.user_attribute OWNER TO keycloak;

--
-- Name: user_consent; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(36) NOT NULL,
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.user_consent OWNER TO keycloak;

--
-- Name: user_consent_client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_consent_client_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.user_consent_client_scope OWNER TO keycloak;

--
-- Name: user_entity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_entity (
    id character varying(36) NOT NULL,
    email character varying(255),
    email_constraint character varying(255),
    email_verified boolean DEFAULT false NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    federation_link character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    realm_id character varying(255),
    username character varying(255),
    created_timestamp bigint,
    service_account_client_link character varying(255),
    not_before integer DEFAULT 0 NOT NULL,
    last_modified_timestamp bigint
);


ALTER TABLE public.user_entity OWNER TO keycloak;

--
-- Name: user_federation_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_config (
    user_federation_provider_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_config OWNER TO keycloak;

--
-- Name: user_federation_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    federation_provider_id character varying(36) NOT NULL,
    federation_mapper_type character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.user_federation_mapper OWNER TO keycloak;

--
-- Name: user_federation_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_mapper_config (
    user_federation_mapper_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_mapper_config OWNER TO keycloak;

--
-- Name: user_federation_provider; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_provider (
    id character varying(36) NOT NULL,
    changed_sync_period integer,
    display_name character varying(255),
    full_sync_period integer,
    last_sync integer,
    priority integer,
    provider_name character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.user_federation_provider OWNER TO keycloak;

--
-- Name: user_group_membership; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL,
    membership_type character varying(255) NOT NULL
);


ALTER TABLE public.user_group_membership OWNER TO keycloak;

--
-- Name: user_required_action; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_required_action (
    user_id character varying(36) NOT NULL,
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL
);


ALTER TABLE public.user_required_action OWNER TO keycloak;

--
-- Name: user_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_role_mapping (
    role_id character varying(255) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_role_mapping OWNER TO keycloak;

--
-- Name: web_origins; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.web_origins (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.web_origins OWNER TO keycloak;

--
-- Name: workflow_state; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.workflow_state (
    execution_id character varying(255) NOT NULL,
    resource_id character varying(255) NOT NULL,
    workflow_id character varying(255) NOT NULL,
    resource_type character varying(255),
    scheduled_step_id character varying(255),
    scheduled_step_timestamp bigint
);


ALTER TABLE public.workflow_state OWNER TO keycloak;

--
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.admin_event_entity (id, admin_event_time, realm_id, operation_type, auth_realm_id, auth_client_id, auth_user_id, ip_address, resource_path, representation, error, resource_type, details_json) FROM stdin;
\.


--
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.associated_policy (policy_id, associated_policy_id) FROM stdin;
\.


--
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_execution (id, alias, authenticator, realm_id, flow_id, requirement, priority, authenticator_flow, auth_flow_id, auth_config) FROM stdin;
0bffcf0d-199d-4a17-a062-89299cbd9d02	\N	auth-cookie	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	224b11d3-88ea-4ee9-a5e0-051b55299d1a	2	10	f	\N	\N
b1be81c6-fad8-40ef-8b83-bd612d302aa0	\N	auth-spnego	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	224b11d3-88ea-4ee9-a5e0-051b55299d1a	3	20	f	\N	\N
5015c070-8a3b-4d46-9619-7f5b528596f8	\N	identity-provider-redirector	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	224b11d3-88ea-4ee9-a5e0-051b55299d1a	2	25	f	\N	\N
323026e6-a0e4-4967-8e8b-b1a88bb4fbf1	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	224b11d3-88ea-4ee9-a5e0-051b55299d1a	2	30	t	58f86461-6571-496d-b02b-5db4dbf35dac	\N
b1307dd7-0ee9-4196-9230-4c98d5ce2f54	\N	auth-username-password-form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	58f86461-6571-496d-b02b-5db4dbf35dac	0	10	f	\N	\N
f2d93135-4d5c-491d-98e0-9a718ac20f33	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	58f86461-6571-496d-b02b-5db4dbf35dac	1	20	t	bc7bfb6a-11c1-4298-979a-90c30c984268	\N
19b9a634-6055-414b-9b1b-a71cfee39393	\N	conditional-user-configured	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	bc7bfb6a-11c1-4298-979a-90c30c984268	0	10	f	\N	\N
a9c87a0a-e602-4e55-a1e9-bf7eee0e2c82	\N	conditional-credential	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	bc7bfb6a-11c1-4298-979a-90c30c984268	0	20	f	\N	df9d5975-7de5-4095-87d6-34ffad185715
40a195bd-476c-4114-af39-e2622ad27cce	\N	auth-otp-form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	bc7bfb6a-11c1-4298-979a-90c30c984268	2	30	f	\N	\N
cd15207b-65f8-4710-bf9a-12fe88bc32e3	\N	webauthn-authenticator	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	bc7bfb6a-11c1-4298-979a-90c30c984268	3	40	f	\N	\N
d1a8d4cd-15ec-47e1-9a77-fbf9000ea247	\N	auth-recovery-authn-code-form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	bc7bfb6a-11c1-4298-979a-90c30c984268	3	50	f	\N	\N
5a496bf9-60fc-4585-b415-5056a622ca02	\N	direct-grant-validate-username	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	00a49858-181c-4aae-8a27-98ca7ca3d760	0	10	f	\N	\N
c75f4037-17d2-4c46-86a9-99da30f5a038	\N	direct-grant-validate-password	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	00a49858-181c-4aae-8a27-98ca7ca3d760	0	20	f	\N	\N
29b1d98d-d014-4035-a886-fa1079a1739a	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	00a49858-181c-4aae-8a27-98ca7ca3d760	1	30	t	33ae2650-3886-4967-aadf-7b5cd5653322	\N
0dfcba2a-6c03-4a4e-9b73-67b8fb83952d	\N	conditional-user-configured	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	33ae2650-3886-4967-aadf-7b5cd5653322	0	10	f	\N	\N
138ec0f5-9938-406e-9a53-a62decab9fff	\N	direct-grant-validate-otp	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	33ae2650-3886-4967-aadf-7b5cd5653322	0	20	f	\N	\N
54b7986f-1f16-40e4-b600-e3587082ce29	\N	registration-page-form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	90b27b86-5648-4555-bbfc-27739bee8f2b	0	10	t	3816db63-db61-4dfb-9985-72e21004109a	\N
ca5c999d-0980-409e-b4b4-dd838535b79f	\N	registration-user-creation	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	3816db63-db61-4dfb-9985-72e21004109a	0	20	f	\N	\N
f6bc5526-3f38-4c79-882c-8f98ff4a3fe3	\N	registration-password-action	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	3816db63-db61-4dfb-9985-72e21004109a	0	50	f	\N	\N
2f37d16b-4c01-4019-ac9a-15673c39de3c	\N	registration-recaptcha-action	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	3816db63-db61-4dfb-9985-72e21004109a	3	60	f	\N	\N
fe97dd74-10ed-4d45-b439-69daacf80049	\N	registration-terms-and-conditions	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	3816db63-db61-4dfb-9985-72e21004109a	3	70	f	\N	\N
a37e7c10-81aa-4381-9e10-fad5bc619253	\N	reset-credentials-choose-user	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	636065c1-7996-4483-9229-67e1610250c7	0	10	f	\N	\N
b2d03bfd-3b6e-4560-8b66-b8dde172f026	\N	reset-credential-email	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	636065c1-7996-4483-9229-67e1610250c7	0	20	f	\N	\N
6eaec168-5ba0-4aa2-a883-2dd181109e80	\N	reset-password	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	636065c1-7996-4483-9229-67e1610250c7	0	30	f	\N	\N
020accf4-b98a-4fb5-aaa0-cf88312d4006	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	636065c1-7996-4483-9229-67e1610250c7	1	40	t	47f31c01-9558-40dd-9b3f-df36602ffa8b	\N
69a2172e-81dd-4283-996c-b314be0a4c26	\N	conditional-user-configured	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	47f31c01-9558-40dd-9b3f-df36602ffa8b	0	10	f	\N	\N
f2e06636-ee68-4a23-86fa-998ad4a76ac1	\N	reset-otp	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	47f31c01-9558-40dd-9b3f-df36602ffa8b	0	20	f	\N	\N
77ad5c6e-6b64-4314-84ce-0a5d9fbb0f95	\N	client-secret	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	96dc9628-e2d7-4b0a-92a3-a0b62504335d	2	10	f	\N	\N
90ada200-aa52-422b-b7b4-81dc6a620ba1	\N	client-jwt	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	96dc9628-e2d7-4b0a-92a3-a0b62504335d	2	20	f	\N	\N
66256c7c-a558-4d0f-92da-b1c179759947	\N	client-secret-jwt	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	96dc9628-e2d7-4b0a-92a3-a0b62504335d	2	30	f	\N	\N
4f25598a-c266-409f-945a-ca55ad378454	\N	client-x509	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	96dc9628-e2d7-4b0a-92a3-a0b62504335d	2	40	f	\N	\N
4a5a94b1-8e84-4803-846b-837d78384191	\N	idp-review-profile	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0c323123-fce0-4bdb-84cc-9beb3f4d0266	0	10	f	\N	db678581-8273-43e1-9d65-c76ff05fd8ef
95a345d1-676c-4c27-bd75-2c5d8c867522	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0c323123-fce0-4bdb-84cc-9beb3f4d0266	0	20	t	3aa55d5f-ecb6-441e-a59e-e777fb0812e3	\N
ceaa1c22-4bb0-47b6-9098-98de7d30ee0c	\N	idp-create-user-if-unique	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	3aa55d5f-ecb6-441e-a59e-e777fb0812e3	2	10	f	\N	bae165ae-b32e-49d3-97bd-2d3abe3a88c5
113a4b32-c855-4d2f-becd-6d8334fcee82	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	3aa55d5f-ecb6-441e-a59e-e777fb0812e3	2	20	t	cc0aa490-f707-4631-b595-fd26a35f0ec2	\N
5295f767-1bd0-4009-94b9-3cf1ca85843f	\N	idp-confirm-link	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	cc0aa490-f707-4631-b595-fd26a35f0ec2	0	10	f	\N	\N
58403716-8c56-4f3b-8810-65b4bab437b0	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	cc0aa490-f707-4631-b595-fd26a35f0ec2	0	20	t	1dc7c6a2-ac3d-4bd9-9006-5ce8c03a9d13	\N
1d6f9648-a03c-475f-83c7-9fd767b8ef21	\N	idp-email-verification	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	1dc7c6a2-ac3d-4bd9-9006-5ce8c03a9d13	2	10	f	\N	\N
cae9be89-2f5a-4cef-a24c-0d256271a36b	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	1dc7c6a2-ac3d-4bd9-9006-5ce8c03a9d13	2	20	t	c1812a9c-dfa5-4f01-a8e2-5d2627ad1f82	\N
7f4ab03f-16c9-428e-b406-03321bc71c60	\N	idp-username-password-form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	c1812a9c-dfa5-4f01-a8e2-5d2627ad1f82	0	10	f	\N	\N
7f44de67-b479-45ee-9d1e-bfdd738dc84b	\N	\N	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	c1812a9c-dfa5-4f01-a8e2-5d2627ad1f82	1	20	t	07f68249-d0b9-46ec-aa9e-ee99923d17df	\N
8e7f59b4-5778-4b33-bd2d-5329d7d315d7	\N	conditional-user-configured	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	07f68249-d0b9-46ec-aa9e-ee99923d17df	0	10	f	\N	\N
386bcc3f-c0c7-478e-9a70-86ec14783e17	\N	conditional-credential	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	07f68249-d0b9-46ec-aa9e-ee99923d17df	0	20	f	\N	07750e98-04d7-47a2-bf8a-1661029cba88
700c2749-650b-4581-8c7b-a38268982732	\N	auth-otp-form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	07f68249-d0b9-46ec-aa9e-ee99923d17df	2	30	f	\N	\N
c7fd3860-ea6b-4b1b-b139-b127047c57fc	\N	webauthn-authenticator	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	07f68249-d0b9-46ec-aa9e-ee99923d17df	3	40	f	\N	\N
67589a94-aaf1-4920-b70b-788d9d63c155	\N	auth-recovery-authn-code-form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	07f68249-d0b9-46ec-aa9e-ee99923d17df	3	50	f	\N	\N
7b1f0801-c84d-40a2-9697-0e8bd2db150b	\N	http-basic-authenticator	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	bba76dcb-87ba-4cb7-a8c6-e828ab62e36b	0	10	f	\N	\N
4d5af107-4672-411e-8e10-f76ce24feb72	\N	docker-http-basic-authenticator	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	b0140a14-44d7-4458-b36e-4c48a29ff011	0	10	f	\N	\N
a9cd4dc6-6b3f-43b3-9745-1f4e176e1016	\N	idp-email-verification	1652565b-23ef-42a5-9b2c-1287d008e1e3	0e572786-df82-4936-b30a-c751f4d06995	2	10	f	\N	\N
4aa23159-57d8-40c0-be3e-17a57b56076f	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	0e572786-df82-4936-b30a-c751f4d06995	2	20	t	3e09624e-1c81-482d-9635-5744b25aa581	\N
4707c89a-6129-4578-94d1-bde46c4dbe12	\N	conditional-user-configured	1652565b-23ef-42a5-9b2c-1287d008e1e3	ed68b290-8c1d-4173-aa8d-c522b025efe4	0	10	f	\N	\N
b2ccc864-acb3-49da-be23-f56450b2ebf9	\N	conditional-credential	1652565b-23ef-42a5-9b2c-1287d008e1e3	ed68b290-8c1d-4173-aa8d-c522b025efe4	0	20	f	\N	a447bec8-038c-4d7a-9b4e-8efb8dbe7355
0cc15bcd-8bb2-41f4-9463-aaa73d15abe9	\N	auth-otp-form	1652565b-23ef-42a5-9b2c-1287d008e1e3	ed68b290-8c1d-4173-aa8d-c522b025efe4	2	30	f	\N	\N
35152559-0319-4680-9011-ee9e8319c6cb	\N	webauthn-authenticator	1652565b-23ef-42a5-9b2c-1287d008e1e3	ed68b290-8c1d-4173-aa8d-c522b025efe4	3	40	f	\N	\N
a9bc0427-d8b0-4f98-b5a6-62f281df665d	\N	auth-recovery-authn-code-form	1652565b-23ef-42a5-9b2c-1287d008e1e3	ed68b290-8c1d-4173-aa8d-c522b025efe4	3	50	f	\N	\N
6bfca9aa-6a6a-4020-9a29-327c07e16079	\N	conditional-user-configured	1652565b-23ef-42a5-9b2c-1287d008e1e3	0e855d6c-ac79-4fc7-91aa-ebdf65d3b805	0	10	f	\N	\N
6b1c4137-d9cc-44e4-974e-b9ed2ef5ea41	\N	organization	1652565b-23ef-42a5-9b2c-1287d008e1e3	0e855d6c-ac79-4fc7-91aa-ebdf65d3b805	2	20	f	\N	\N
4a6da287-61b7-4615-adb6-a5992ecf6240	\N	conditional-user-configured	1652565b-23ef-42a5-9b2c-1287d008e1e3	e8a978da-835e-463a-8364-1ee908cf049a	0	10	f	\N	\N
59fb22cc-be91-41ea-a9f0-328783509e0a	\N	direct-grant-validate-otp	1652565b-23ef-42a5-9b2c-1287d008e1e3	e8a978da-835e-463a-8364-1ee908cf049a	0	20	f	\N	\N
9ef3d980-8d12-40f1-b53b-544dd4075180	\N	conditional-user-configured	1652565b-23ef-42a5-9b2c-1287d008e1e3	8ba37e17-f8aa-44e8-80ec-cf9b7f97f323	0	10	f	\N	\N
7cb7035f-777b-4b9d-aa6e-9de73a932944	\N	idp-add-organization-member	1652565b-23ef-42a5-9b2c-1287d008e1e3	8ba37e17-f8aa-44e8-80ec-cf9b7f97f323	0	20	f	\N	\N
d1da705c-049e-4c09-ba8c-aaa6624a4bb4	\N	conditional-user-configured	1652565b-23ef-42a5-9b2c-1287d008e1e3	d9056605-e2b1-47c3-82e3-9c5b09d16c11	0	10	f	\N	\N
4d6f2ae3-c27c-4da5-a7c1-e17388be9aa3	\N	conditional-credential	1652565b-23ef-42a5-9b2c-1287d008e1e3	d9056605-e2b1-47c3-82e3-9c5b09d16c11	0	20	f	\N	d0fa1625-87b9-402f-8a5a-732a1023063f
0804c8db-5d92-4a57-91e8-5af08321b193	\N	auth-otp-form	1652565b-23ef-42a5-9b2c-1287d008e1e3	d9056605-e2b1-47c3-82e3-9c5b09d16c11	2	30	f	\N	\N
58c91c9d-df3b-47f6-852e-b0b9995e102e	\N	webauthn-authenticator	1652565b-23ef-42a5-9b2c-1287d008e1e3	d9056605-e2b1-47c3-82e3-9c5b09d16c11	3	40	f	\N	\N
30dbe676-cd1b-4edb-a528-fd25d2c9927b	\N	auth-recovery-authn-code-form	1652565b-23ef-42a5-9b2c-1287d008e1e3	d9056605-e2b1-47c3-82e3-9c5b09d16c11	3	50	f	\N	\N
fb26d13b-58a0-4efb-a648-61504683223a	\N	idp-confirm-link	1652565b-23ef-42a5-9b2c-1287d008e1e3	d2fe9b13-d16a-4650-8c77-8f08d9ec4616	0	10	f	\N	\N
696ec0b5-3cc8-47ef-9cf9-0822326a126f	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	d2fe9b13-d16a-4650-8c77-8f08d9ec4616	0	20	t	0e572786-df82-4936-b30a-c751f4d06995	\N
f66dab02-ef43-42d1-a05a-70706a954f09	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	ec7327be-d4eb-48ea-8f85-deb755534876	1	10	t	0e855d6c-ac79-4fc7-91aa-ebdf65d3b805	\N
5824111a-a5d5-4c1c-a28e-a413fe2de86d	\N	conditional-user-configured	1652565b-23ef-42a5-9b2c-1287d008e1e3	6f4e09a3-ad60-4236-be4f-d4b5b51ea20a	0	10	f	\N	\N
a3314984-0207-45fe-a570-f39b278c02be	\N	reset-otp	1652565b-23ef-42a5-9b2c-1287d008e1e3	6f4e09a3-ad60-4236-be4f-d4b5b51ea20a	0	20	f	\N	\N
c9149d99-3b29-4c5b-b4dd-0a58105002ac	\N	idp-create-user-if-unique	1652565b-23ef-42a5-9b2c-1287d008e1e3	104b9a0b-ab62-47bd-9990-77d36e11f23c	2	10	f	\N	76d0d3a1-ee69-4f6d-9c4b-75b9f756fc0f
26a88692-150b-40f6-9e81-526a7186eccd	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	104b9a0b-ab62-47bd-9990-77d36e11f23c	2	20	t	d2fe9b13-d16a-4650-8c77-8f08d9ec4616	\N
7e378fdd-9cf6-427f-8a81-1e03b036e41c	\N	idp-username-password-form	1652565b-23ef-42a5-9b2c-1287d008e1e3	3e09624e-1c81-482d-9635-5744b25aa581	0	10	f	\N	\N
d589ac30-90ac-4b9f-b0a1-b81733627753	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	3e09624e-1c81-482d-9635-5744b25aa581	1	20	t	d9056605-e2b1-47c3-82e3-9c5b09d16c11	\N
35a76044-41bb-4182-8ced-d9a6dba7f03f	\N	auth-cookie	1652565b-23ef-42a5-9b2c-1287d008e1e3	b8fb4903-d21c-4879-8727-7637040e2ede	2	10	f	\N	\N
6f32bd86-3eae-4777-868e-2935d30de1dc	\N	auth-spnego	1652565b-23ef-42a5-9b2c-1287d008e1e3	b8fb4903-d21c-4879-8727-7637040e2ede	3	20	f	\N	\N
f2d82b92-0787-45a1-82f8-b690f6071e13	\N	identity-provider-redirector	1652565b-23ef-42a5-9b2c-1287d008e1e3	b8fb4903-d21c-4879-8727-7637040e2ede	2	25	f	\N	\N
9d7e6248-cd4f-429f-8a02-7bca241b2773	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	b8fb4903-d21c-4879-8727-7637040e2ede	2	26	t	ec7327be-d4eb-48ea-8f85-deb755534876	\N
2ee9e12e-af5e-4e93-ae50-911b01f56458	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	b8fb4903-d21c-4879-8727-7637040e2ede	2	30	t	d81c82d9-1644-4b1c-b818-6434a8ddf891	\N
c0ce9e1f-5a12-45e5-a692-7f189d77e5a7	\N	client-secret	1652565b-23ef-42a5-9b2c-1287d008e1e3	bf20bc53-f76e-463f-bbff-8bbde86391a0	2	10	f	\N	\N
026f36bd-2c03-4f40-b58c-635a34612fd6	\N	client-jwt	1652565b-23ef-42a5-9b2c-1287d008e1e3	bf20bc53-f76e-463f-bbff-8bbde86391a0	2	20	f	\N	\N
87faac84-8141-4b11-971f-36d79eba67f2	\N	client-secret-jwt	1652565b-23ef-42a5-9b2c-1287d008e1e3	bf20bc53-f76e-463f-bbff-8bbde86391a0	2	30	f	\N	\N
f5a58e38-9471-462e-98bc-d7ae21920768	\N	client-x509	1652565b-23ef-42a5-9b2c-1287d008e1e3	bf20bc53-f76e-463f-bbff-8bbde86391a0	2	40	f	\N	\N
2a505beb-1dfd-4f64-bec7-a444df2fce3e	\N	direct-grant-validate-username	1652565b-23ef-42a5-9b2c-1287d008e1e3	b397b41d-8afa-4256-a9b7-46e40deba4cd	0	10	f	\N	\N
3d3e2019-26ea-4be2-9597-234eac9ba244	\N	direct-grant-validate-password	1652565b-23ef-42a5-9b2c-1287d008e1e3	b397b41d-8afa-4256-a9b7-46e40deba4cd	0	20	f	\N	\N
6091bc80-48fc-4d97-9a3c-0f89a0902416	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	b397b41d-8afa-4256-a9b7-46e40deba4cd	1	30	t	e8a978da-835e-463a-8364-1ee908cf049a	\N
f3514934-88c7-44d3-bfbc-ae660093884f	\N	docker-http-basic-authenticator	1652565b-23ef-42a5-9b2c-1287d008e1e3	0612e240-eb19-46b7-8fe4-1cbefc6e7ec4	0	10	f	\N	\N
1f1a6a1d-5cc5-4759-b061-d4625a8b7846	\N	idp-review-profile	1652565b-23ef-42a5-9b2c-1287d008e1e3	0863d1a2-330e-438b-ae06-8ad99e238ebc	0	10	f	\N	06a9ed4c-a814-4e9a-b287-7b5b9d21f3bf
fb8fef5f-33aa-48dd-8c8b-3b936d623495	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	0863d1a2-330e-438b-ae06-8ad99e238ebc	0	20	t	104b9a0b-ab62-47bd-9990-77d36e11f23c	\N
d76b564d-f79a-4c91-a0d1-bd2c418ae6fa	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	0863d1a2-330e-438b-ae06-8ad99e238ebc	1	60	t	8ba37e17-f8aa-44e8-80ec-cf9b7f97f323	\N
0d4e0843-740a-44fe-bdc4-637ac469e00a	\N	auth-username-password-form	1652565b-23ef-42a5-9b2c-1287d008e1e3	d81c82d9-1644-4b1c-b818-6434a8ddf891	0	10	f	\N	\N
939bd99d-43a8-4600-b783-ff34a29aa134	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	d81c82d9-1644-4b1c-b818-6434a8ddf891	1	20	t	ed68b290-8c1d-4173-aa8d-c522b025efe4	\N
41ab7927-a8a4-490f-94c2-321859338ace	\N	registration-page-form	1652565b-23ef-42a5-9b2c-1287d008e1e3	b8d9d69e-0fe6-4523-9af6-dfc9945291e8	0	10	t	8f99d8af-1df3-44d7-8e57-464fe8618116	\N
9453883c-3155-49f4-84be-5fb3108d9f62	\N	registration-user-creation	1652565b-23ef-42a5-9b2c-1287d008e1e3	8f99d8af-1df3-44d7-8e57-464fe8618116	0	20	f	\N	\N
a2b140dc-dffb-4435-89fa-74b99c25b2f4	\N	registration-password-action	1652565b-23ef-42a5-9b2c-1287d008e1e3	8f99d8af-1df3-44d7-8e57-464fe8618116	0	50	f	\N	\N
0bae406c-7ee9-48f8-8da7-de56ce782c8b	\N	registration-recaptcha-action	1652565b-23ef-42a5-9b2c-1287d008e1e3	8f99d8af-1df3-44d7-8e57-464fe8618116	3	60	f	\N	\N
15fd15f8-119f-4384-8d9e-84bf79b8af8f	\N	registration-terms-and-conditions	1652565b-23ef-42a5-9b2c-1287d008e1e3	8f99d8af-1df3-44d7-8e57-464fe8618116	3	70	f	\N	\N
54f6e920-7142-4524-9795-cfa184ed51f0	\N	reset-credentials-choose-user	1652565b-23ef-42a5-9b2c-1287d008e1e3	1a0eca8f-abe5-46d6-a604-02a41a250054	0	10	f	\N	\N
4ef88c2f-9716-46cb-a06f-37180ffd072e	\N	reset-credential-email	1652565b-23ef-42a5-9b2c-1287d008e1e3	1a0eca8f-abe5-46d6-a604-02a41a250054	0	20	f	\N	\N
dbc6755d-d1c5-4865-a4c5-571d760072c8	\N	reset-password	1652565b-23ef-42a5-9b2c-1287d008e1e3	1a0eca8f-abe5-46d6-a604-02a41a250054	0	30	f	\N	\N
c03cdd48-fc25-42e5-a7a7-c5ca528c4d90	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	1a0eca8f-abe5-46d6-a604-02a41a250054	1	40	t	6f4e09a3-ad60-4236-be4f-d4b5b51ea20a	\N
50772598-a3cd-4226-9869-90cf8d8f1108	\N	http-basic-authenticator	1652565b-23ef-42a5-9b2c-1287d008e1e3	97fea71f-6cb5-46c2-bafd-42ced71bb272	0	10	f	\N	\N
\.


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
224b11d3-88ea-4ee9-a5e0-051b55299d1a	browser	Browser based authentication	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	t	t
58f86461-6571-496d-b02b-5db4dbf35dac	forms	Username, password, otp and other auth forms.	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
bc7bfb6a-11c1-4298-979a-90c30c984268	Browser - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
00a49858-181c-4aae-8a27-98ca7ca3d760	direct grant	OpenID Connect Resource Owner Grant	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	t	t
33ae2650-3886-4967-aadf-7b5cd5653322	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
90b27b86-5648-4555-bbfc-27739bee8f2b	registration	Registration flow	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	t	t
3816db63-db61-4dfb-9985-72e21004109a	registration form	Registration form	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	form-flow	f	t
636065c1-7996-4483-9229-67e1610250c7	reset credentials	Reset credentials for a user if they forgot their password or something	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	t	t
47f31c01-9558-40dd-9b3f-df36602ffa8b	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
96dc9628-e2d7-4b0a-92a3-a0b62504335d	clients	Base authentication for clients	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	client-flow	t	t
0c323123-fce0-4bdb-84cc-9beb3f4d0266	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	t	t
3aa55d5f-ecb6-441e-a59e-e777fb0812e3	User creation or linking	Flow for the existing/non-existing user alternatives	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
cc0aa490-f707-4631-b595-fd26a35f0ec2	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
1dc7c6a2-ac3d-4bd9-9006-5ce8c03a9d13	Account verification options	Method with which to verity the existing account	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
c1812a9c-dfa5-4f01-a8e2-5d2627ad1f82	Verify Existing Account by Re-authentication	Reauthentication of existing account	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
07f68249-d0b9-46ec-aa9e-ee99923d17df	First broker login - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	f	t
bba76dcb-87ba-4cb7-a8c6-e828ab62e36b	saml ecp	SAML ECP Profile Authentication Flow	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	t	t
b0140a14-44d7-4458-b36e-4c48a29ff011	docker auth	Used by Docker clients to authenticate against the IDP	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	basic-flow	t	t
0e572786-df82-4936-b30a-c751f4d06995	Account verification options	Method with which to verity the existing account	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
ed68b290-8c1d-4173-aa8d-c522b025efe4	Browser - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
0e855d6c-ac79-4fc7-91aa-ebdf65d3b805	Browser - Conditional Organization	Flow to determine if the organization identity-first login is to be used	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
e8a978da-835e-463a-8364-1ee908cf049a	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
8ba37e17-f8aa-44e8-80ec-cf9b7f97f323	First Broker Login - Conditional Organization	Flow to determine if the authenticator that adds organization members is to be used	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
d9056605-e2b1-47c3-82e3-9c5b09d16c11	First broker login - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
d2fe9b13-d16a-4650-8c77-8f08d9ec4616	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
ec7327be-d4eb-48ea-8f85-deb755534876	Organization	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
6f4e09a3-ad60-4236-be4f-d4b5b51ea20a	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
104b9a0b-ab62-47bd-9990-77d36e11f23c	User creation or linking	Flow for the existing/non-existing user alternatives	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
3e09624e-1c81-482d-9635-5744b25aa581	Verify Existing Account by Re-authentication	Reauthentication of existing account	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
b8fb4903-d21c-4879-8727-7637040e2ede	browser	Browser based authentication	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	t	t
bf20bc53-f76e-463f-bbff-8bbde86391a0	clients	Base authentication for clients	1652565b-23ef-42a5-9b2c-1287d008e1e3	client-flow	t	t
b397b41d-8afa-4256-a9b7-46e40deba4cd	direct grant	OpenID Connect Resource Owner Grant	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	t	t
0612e240-eb19-46b7-8fe4-1cbefc6e7ec4	docker auth	Used by Docker clients to authenticate against the IDP	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	t	t
0863d1a2-330e-438b-ae06-8ad99e238ebc	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	t	t
d81c82d9-1644-4b1c-b818-6434a8ddf891	forms	Username, password, otp and other auth forms.	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	f	t
b8d9d69e-0fe6-4523-9af6-dfc9945291e8	registration	Registration flow	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	t	t
8f99d8af-1df3-44d7-8e57-464fe8618116	registration form	Registration form	1652565b-23ef-42a5-9b2c-1287d008e1e3	form-flow	f	t
1a0eca8f-abe5-46d6-a604-02a41a250054	reset credentials	Reset credentials for a user if they forgot their password or something	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	t	t
97fea71f-6cb5-46c2-bafd-42ced71bb272	saml ecp	SAML ECP Profile Authentication Flow	1652565b-23ef-42a5-9b2c-1287d008e1e3	basic-flow	t	t
\.


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
df9d5975-7de5-4095-87d6-34ffad185715	browser-conditional-credential	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5
db678581-8273-43e1-9d65-c76ff05fd8ef	review profile config	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5
bae165ae-b32e-49d3-97bd-2d3abe3a88c5	create unique user config	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5
07750e98-04d7-47a2-bf8a-1661029cba88	first-broker-login-conditional-credential	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5
a447bec8-038c-4d7a-9b4e-8efb8dbe7355	browser-conditional-credential	1652565b-23ef-42a5-9b2c-1287d008e1e3
76d0d3a1-ee69-4f6d-9c4b-75b9f756fc0f	create unique user config	1652565b-23ef-42a5-9b2c-1287d008e1e3
d0fa1625-87b9-402f-8a5a-732a1023063f	first-broker-login-conditional-credential	1652565b-23ef-42a5-9b2c-1287d008e1e3
06a9ed4c-a814-4e9a-b287-7b5b9d21f3bf	review profile config	1652565b-23ef-42a5-9b2c-1287d008e1e3
\.


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
07750e98-04d7-47a2-bf8a-1661029cba88	webauthn-passwordless	credentials
bae165ae-b32e-49d3-97bd-2d3abe3a88c5	false	require.password.update.after.registration
db678581-8273-43e1-9d65-c76ff05fd8ef	missing	update.profile.on.first.login
df9d5975-7de5-4095-87d6-34ffad185715	webauthn-passwordless	credentials
06a9ed4c-a814-4e9a-b287-7b5b9d21f3bf	missing	update.profile.on.first.login
76d0d3a1-ee69-4f6d-9c4b-75b9f756fc0f	false	require.password.update.after.registration
a447bec8-038c-4d7a-9b4e-8efb8dbe7355	webauthn-passwordless	credentials
d0fa1625-87b9-402f-8a5a-732a1023063f	webauthn-passwordless	credentials
\.


--
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.broker_link (identity_provider, storage_provider_id, realm_id, broker_user_id, broker_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client (id, enabled, full_scope_allowed, client_id, not_before, public_client, secret, base_url, bearer_only, management_url, surrogate_auth_required, realm_id, protocol, node_rereg_timeout, frontchannel_logout, consent_required, name, service_accounts_enabled, client_authenticator_type, root_url, description, registration_token, standard_flow_enabled, implicit_flow_enabled, direct_access_grants_enabled, always_display_in_console) FROM stdin;
14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	f	master-realm	0	f	\N	\N	t	\N	f	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N	0	f	f	master Realm	f	client-secret	\N	\N	\N	t	f	f	f
4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	f	account	0	t	\N	/realms/master/account/	f	\N	f	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
8ef6e188-3c3e-4adf-a84a-d34523a59afc	t	f	account-console	0	t	\N	/realms/master/account/	f	\N	f	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	t	f	broker	0	f	\N	\N	t	\N	f	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
8a3c298b-765d-4ce0-8feb-d70d8587de21	t	t	security-admin-console	0	t	\N	/admin/master/console/	f	\N	f	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
40ffe4cf-0749-4df4-a506-adb53c04fbaa	t	t	admin-cli	0	t	\N	\N	f	\N	f	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	f	calendar-app-realm	0	f	\N	\N	t	\N	f	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N	0	f	f	calendar-app Realm	f	client-secret	\N	\N	\N	t	f	f	f
350810c9-0768-4aa7-8551-4846e646b8ab	t	f	account	0	t	\N	/realms/calendar-app/account/	f	\N	f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
7e87c8df-434a-4862-ae3e-573224e1762f	t	f	account-console	0	t	\N	/realms/calendar-app/account/	f	\N	f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	t	t	admin-cli	0	t	\N	\N	f	\N	f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
81e526a0-e939-4487-ae0c-69757e669b61	t	f	broker	0	f	\N	\N	t	\N	f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	f	realm-management	0	f	\N	\N	t	\N	f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f
5a35a12e-6b3e-4d21-987e-68021934e0eb	t	t	security-admin-console	0	t	\N	/admin/calendar-app/console/	f	\N	f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
717a9e61-3f16-4378-b057-814ff141a9f3	t	t	calendar-users-api-client	0	f	ainh6bJBpFuazwikbnc9WiZsLq7hOI38		f		f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	-1	t	f		t	client-secret			\N	f	f	f	f
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	t	t	calendar-app-client	0	t	\N	http://localhost	f		f	1652565b-23ef-42a5-9b2c-1287d008e1e3	openid-connect	-1	t	f		f	client-secret	http://localhost		\N	t	f	t	f
\.


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_attributes (client_id, name, value) FROM stdin;
4d71e58e-91b0-4847-961e-7ad77d04ac4a	post.logout.redirect.uris	+
8ef6e188-3c3e-4adf-a84a-d34523a59afc	post.logout.redirect.uris	+
8ef6e188-3c3e-4adf-a84a-d34523a59afc	pkce.code.challenge.method	S256
8a3c298b-765d-4ce0-8feb-d70d8587de21	post.logout.redirect.uris	+
8a3c298b-765d-4ce0-8feb-d70d8587de21	pkce.code.challenge.method	S256
8a3c298b-765d-4ce0-8feb-d70d8587de21	client.use.lightweight.access.token.enabled	true
40ffe4cf-0749-4df4-a506-adb53c04fbaa	client.use.lightweight.access.token.enabled	true
350810c9-0768-4aa7-8551-4846e646b8ab	realm_client	false
350810c9-0768-4aa7-8551-4846e646b8ab	post.logout.redirect.uris	+
7e87c8df-434a-4862-ae3e-573224e1762f	realm_client	false
7e87c8df-434a-4862-ae3e-573224e1762f	post.logout.redirect.uris	+
7e87c8df-434a-4862-ae3e-573224e1762f	pkce.code.challenge.method	S256
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	realm_client	false
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	client.use.lightweight.access.token.enabled	true
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	post.logout.redirect.uris	+
81e526a0-e939-4487-ae0c-69757e669b61	realm_client	true
81e526a0-e939-4487-ae0c-69757e669b61	post.logout.redirect.uris	+
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	realm_client	false
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	oidc.ciba.grant.enabled	false
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	backchannel.logout.session.required	true
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	standard.token.exchange.enabled	false
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	oauth2.device.authorization.grant.enabled	false
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	backchannel.logout.revoke.offline.tokens	false
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	dpop.bound.access.tokens	false
717a9e61-3f16-4378-b057-814ff141a9f3	id.token.as.detached.signature	false
717a9e61-3f16-4378-b057-814ff141a9f3	request.object.signature.alg	any
717a9e61-3f16-4378-b057-814ff141a9f3	request.object.encryption.alg	any
717a9e61-3f16-4378-b057-814ff141a9f3	client.introspection.response.allow.jwt.claim.enabled	false
717a9e61-3f16-4378-b057-814ff141a9f3	standard.token.exchange.enabled	false
717a9e61-3f16-4378-b057-814ff141a9f3	frontchannel.logout.session.required	true
717a9e61-3f16-4378-b057-814ff141a9f3	oauth2.device.authorization.grant.enabled	false
717a9e61-3f16-4378-b057-814ff141a9f3	backchannel.logout.revoke.offline.tokens	false
717a9e61-3f16-4378-b057-814ff141a9f3	use.refresh.tokens	true
717a9e61-3f16-4378-b057-814ff141a9f3	realm_client	false
717a9e61-3f16-4378-b057-814ff141a9f3	oidc.ciba.grant.enabled	false
717a9e61-3f16-4378-b057-814ff141a9f3	client.use.lightweight.access.token.enabled	false
717a9e61-3f16-4378-b057-814ff141a9f3	backchannel.logout.session.required	true
717a9e61-3f16-4378-b057-814ff141a9f3	request.object.required	not required
717a9e61-3f16-4378-b057-814ff141a9f3	client_credentials.use_refresh_token	false
717a9e61-3f16-4378-b057-814ff141a9f3	access.token.header.type.rfc9068	false
717a9e61-3f16-4378-b057-814ff141a9f3	tls.client.certificate.bound.access.tokens	false
717a9e61-3f16-4378-b057-814ff141a9f3	require.pushed.authorization.requests	false
717a9e61-3f16-4378-b057-814ff141a9f3	acr.loa.map	{}
717a9e61-3f16-4378-b057-814ff141a9f3	display.on.consent.screen	false
717a9e61-3f16-4378-b057-814ff141a9f3	request.object.encryption.enc	any
717a9e61-3f16-4378-b057-814ff141a9f3	token.response.type.bearer.lower-case	false
717a9e61-3f16-4378-b057-814ff141a9f3	dpop.bound.access.tokens	false
717a9e61-3f16-4378-b057-814ff141a9f3	post.logout.redirect.uris	+
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	realm_client	true
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	post.logout.redirect.uris	+
5a35a12e-6b3e-4d21-987e-68021934e0eb	realm_client	false
5a35a12e-6b3e-4d21-987e-68021934e0eb	client.use.lightweight.access.token.enabled	true
5a35a12e-6b3e-4d21-987e-68021934e0eb	post.logout.redirect.uris	+
5a35a12e-6b3e-4d21-987e-68021934e0eb	pkce.code.challenge.method	S256
717a9e61-3f16-4378-b057-814ff141a9f3	client.secret.creation.time	1766245270
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	display.on.consent.screen	false
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	frontchannel.logout.session.required	true
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	logout.confirmation.enabled	false
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	login_theme	calendar-app
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	post.logout.redirect.uris	+
\.


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
\.


--
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_initial_access (id, realm_id, "timestamp", expiration, count, remaining_count) FROM stdin;
\.


--
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_node_registrations (client_id, value, name) FROM stdin;
\.


--
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope (id, name, realm_id, description, protocol) FROM stdin;
b423bb3b-f055-4d8d-b992-c6e3985d1a64	offline_access	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect built-in scope: offline_access	openid-connect
a8758e6c-a5f9-47f2-ac52-212d29c3857f	role_list	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	SAML role list	saml
ae65f578-86a8-4db5-905a-55163c5d926e	saml_organization	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	Organization Membership	saml
0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	profile	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect built-in scope: profile	openid-connect
fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	email	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect built-in scope: email	openid-connect
1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	address	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect built-in scope: address	openid-connect
a2eeef6b-9869-43e0-baa6-6ac34fc46a96	phone	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect built-in scope: phone	openid-connect
6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	roles	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect scope for add user roles to the access token	openid-connect
10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	web-origins	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect scope for add allowed web origins to the access token	openid-connect
458df769-f773-4440-b046-dc0402845fb5	microprofile-jwt	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	Microprofile - JWT built-in scope	openid-connect
6a128298-4bf1-4304-9124-030764e0e225	acr	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
7a4f455e-c88b-45d2-8abd-efdb708c45f9	basic	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	OpenID Connect scope for add all basic claims to the token	openid-connect
290d6728-2366-436a-ba2d-6be9e139ea3e	service_account	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	Specific scope for a client enabled for service accounts	openid-connect
0b231b36-629d-4fc8-a6a4-606375734206	organization	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	Additional claims about the organization a subject belongs to	openid-connect
fe2c10b6-c098-4994-a437-8dc3e6436d16	email	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect built-in scope: email	openid-connect
608397de-37a4-4fc9-b02e-5ad83e535563	address	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect built-in scope: address	openid-connect
3c0d3651-9664-49a6-9ebf-7362ce4c9d88	basic	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect scope for add all basic claims to the token	openid-connect
695a97cb-59f3-41ca-98f3-093e916993b0	offline_access	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect built-in scope: offline_access	openid-connect
c0ed0785-8ab9-44a0-91df-89c89cc1b802	service_account	1652565b-23ef-42a5-9b2c-1287d008e1e3	Specific scope for a client enabled for service accounts	openid-connect
545246f3-bd1a-4963-a7d3-cc5a1e0395bd	acr	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	web-origins	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect scope for add allowed web origins to the access token	openid-connect
2b764e27-cfc6-4404-9e5c-6b2293345acb	saml_organization	1652565b-23ef-42a5-9b2c-1287d008e1e3	Organization Membership	saml
e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	phone	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect built-in scope: phone	openid-connect
641b45b6-8a90-43f7-bfa1-cd5fba861549	microprofile-jwt	1652565b-23ef-42a5-9b2c-1287d008e1e3	Microprofile - JWT built-in scope	openid-connect
029760a1-2155-4b2d-b4d3-b88fc5e84b11	organization	1652565b-23ef-42a5-9b2c-1287d008e1e3	Additional claims about the organization a subject belongs to	openid-connect
c99f8b05-2099-40ed-add4-836574a0e2ca	role_list	1652565b-23ef-42a5-9b2c-1287d008e1e3	SAML role list	saml
044b7aef-c043-4bea-8fb3-2078d448192e	roles	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect scope for add user roles to the access token	openid-connect
71a78d49-e449-4a9f-98bf-ff58c661938b	profile	1652565b-23ef-42a5-9b2c-1287d008e1e3	OpenID Connect built-in scope: profile	openid-connect
a829bb80-9a8b-48f6-95a7-afb8443c7eb0	business-scope	1652565b-23ef-42a5-9b2c-1287d008e1e3		openid-connect
\.


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
b423bb3b-f055-4d8d-b992-c6e3985d1a64	true	display.on.consent.screen
b423bb3b-f055-4d8d-b992-c6e3985d1a64	${offlineAccessScopeConsentText}	consent.screen.text
a8758e6c-a5f9-47f2-ac52-212d29c3857f	true	display.on.consent.screen
a8758e6c-a5f9-47f2-ac52-212d29c3857f	${samlRoleListScopeConsentText}	consent.screen.text
ae65f578-86a8-4db5-905a-55163c5d926e	false	display.on.consent.screen
0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	true	display.on.consent.screen
0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	${profileScopeConsentText}	consent.screen.text
0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	true	include.in.token.scope
fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	true	display.on.consent.screen
fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	${emailScopeConsentText}	consent.screen.text
fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	true	include.in.token.scope
1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	true	display.on.consent.screen
1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	${addressScopeConsentText}	consent.screen.text
1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	true	include.in.token.scope
a2eeef6b-9869-43e0-baa6-6ac34fc46a96	true	display.on.consent.screen
a2eeef6b-9869-43e0-baa6-6ac34fc46a96	${phoneScopeConsentText}	consent.screen.text
a2eeef6b-9869-43e0-baa6-6ac34fc46a96	true	include.in.token.scope
6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	true	display.on.consent.screen
6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	${rolesScopeConsentText}	consent.screen.text
6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	false	include.in.token.scope
10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	false	display.on.consent.screen
10379fe8-c5f6-487a-9d5e-9c2e645d7f1b		consent.screen.text
10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	false	include.in.token.scope
458df769-f773-4440-b046-dc0402845fb5	false	display.on.consent.screen
458df769-f773-4440-b046-dc0402845fb5	true	include.in.token.scope
6a128298-4bf1-4304-9124-030764e0e225	false	display.on.consent.screen
6a128298-4bf1-4304-9124-030764e0e225	false	include.in.token.scope
7a4f455e-c88b-45d2-8abd-efdb708c45f9	false	display.on.consent.screen
7a4f455e-c88b-45d2-8abd-efdb708c45f9	false	include.in.token.scope
290d6728-2366-436a-ba2d-6be9e139ea3e	false	display.on.consent.screen
290d6728-2366-436a-ba2d-6be9e139ea3e	false	include.in.token.scope
0b231b36-629d-4fc8-a6a4-606375734206	true	display.on.consent.screen
0b231b36-629d-4fc8-a6a4-606375734206	${organizationScopeConsentText}	consent.screen.text
0b231b36-629d-4fc8-a6a4-606375734206	true	include.in.token.scope
fe2c10b6-c098-4994-a437-8dc3e6436d16	true	include.in.token.scope
fe2c10b6-c098-4994-a437-8dc3e6436d16	${emailScopeConsentText}	consent.screen.text
fe2c10b6-c098-4994-a437-8dc3e6436d16	true	display.on.consent.screen
608397de-37a4-4fc9-b02e-5ad83e535563	true	include.in.token.scope
608397de-37a4-4fc9-b02e-5ad83e535563	${addressScopeConsentText}	consent.screen.text
608397de-37a4-4fc9-b02e-5ad83e535563	true	display.on.consent.screen
3c0d3651-9664-49a6-9ebf-7362ce4c9d88	false	include.in.token.scope
3c0d3651-9664-49a6-9ebf-7362ce4c9d88	false	display.on.consent.screen
695a97cb-59f3-41ca-98f3-093e916993b0	${offlineAccessScopeConsentText}	consent.screen.text
695a97cb-59f3-41ca-98f3-093e916993b0	true	display.on.consent.screen
c0ed0785-8ab9-44a0-91df-89c89cc1b802	false	include.in.token.scope
c0ed0785-8ab9-44a0-91df-89c89cc1b802	false	display.on.consent.screen
545246f3-bd1a-4963-a7d3-cc5a1e0395bd	false	include.in.token.scope
545246f3-bd1a-4963-a7d3-cc5a1e0395bd	false	display.on.consent.screen
ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	false	include.in.token.scope
ff83afd3-98b6-49d0-bf90-f4aa9b9f9714		consent.screen.text
ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	false	display.on.consent.screen
2b764e27-cfc6-4404-9e5c-6b2293345acb	false	display.on.consent.screen
e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	true	include.in.token.scope
e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	${phoneScopeConsentText}	consent.screen.text
e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	true	display.on.consent.screen
641b45b6-8a90-43f7-bfa1-cd5fba861549	true	include.in.token.scope
641b45b6-8a90-43f7-bfa1-cd5fba861549	false	display.on.consent.screen
029760a1-2155-4b2d-b4d3-b88fc5e84b11	true	include.in.token.scope
029760a1-2155-4b2d-b4d3-b88fc5e84b11	${organizationScopeConsentText}	consent.screen.text
029760a1-2155-4b2d-b4d3-b88fc5e84b11	true	display.on.consent.screen
c99f8b05-2099-40ed-add4-836574a0e2ca	${samlRoleListScopeConsentText}	consent.screen.text
c99f8b05-2099-40ed-add4-836574a0e2ca	true	display.on.consent.screen
044b7aef-c043-4bea-8fb3-2078d448192e	false	include.in.token.scope
044b7aef-c043-4bea-8fb3-2078d448192e	${rolesScopeConsentText}	consent.screen.text
044b7aef-c043-4bea-8fb3-2078d448192e	true	display.on.consent.screen
71a78d49-e449-4a9f-98bf-ff58c661938b	true	include.in.token.scope
71a78d49-e449-4a9f-98bf-ff58c661938b	${profileScopeConsentText}	consent.screen.text
71a78d49-e449-4a9f-98bf-ff58c661938b	true	display.on.consent.screen
a829bb80-9a8b-48f6-95a7-afb8443c7eb0	true	display.on.consent.screen
a829bb80-9a8b-48f6-95a7-afb8443c7eb0		consent.screen.text
a829bb80-9a8b-48f6-95a7-afb8443c7eb0	true	include.in.openid.provider.metadata
a829bb80-9a8b-48f6-95a7-afb8443c7eb0		gui.order
a829bb80-9a8b-48f6-95a7-afb8443c7eb0	true	include.in.token.scope
\.


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
4d71e58e-91b0-4847-961e-7ad77d04ac4a	6a128298-4bf1-4304-9124-030764e0e225	t
4d71e58e-91b0-4847-961e-7ad77d04ac4a	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	t
4d71e58e-91b0-4847-961e-7ad77d04ac4a	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	t
4d71e58e-91b0-4847-961e-7ad77d04ac4a	7a4f455e-c88b-45d2-8abd-efdb708c45f9	t
4d71e58e-91b0-4847-961e-7ad77d04ac4a	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	t
4d71e58e-91b0-4847-961e-7ad77d04ac4a	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	t
4d71e58e-91b0-4847-961e-7ad77d04ac4a	0b231b36-629d-4fc8-a6a4-606375734206	f
4d71e58e-91b0-4847-961e-7ad77d04ac4a	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	f
4d71e58e-91b0-4847-961e-7ad77d04ac4a	a2eeef6b-9869-43e0-baa6-6ac34fc46a96	f
4d71e58e-91b0-4847-961e-7ad77d04ac4a	458df769-f773-4440-b046-dc0402845fb5	f
4d71e58e-91b0-4847-961e-7ad77d04ac4a	b423bb3b-f055-4d8d-b992-c6e3985d1a64	f
8ef6e188-3c3e-4adf-a84a-d34523a59afc	6a128298-4bf1-4304-9124-030764e0e225	t
8ef6e188-3c3e-4adf-a84a-d34523a59afc	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	t
8ef6e188-3c3e-4adf-a84a-d34523a59afc	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	t
8ef6e188-3c3e-4adf-a84a-d34523a59afc	7a4f455e-c88b-45d2-8abd-efdb708c45f9	t
8ef6e188-3c3e-4adf-a84a-d34523a59afc	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	t
8ef6e188-3c3e-4adf-a84a-d34523a59afc	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	t
8ef6e188-3c3e-4adf-a84a-d34523a59afc	0b231b36-629d-4fc8-a6a4-606375734206	f
8ef6e188-3c3e-4adf-a84a-d34523a59afc	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	f
8ef6e188-3c3e-4adf-a84a-d34523a59afc	a2eeef6b-9869-43e0-baa6-6ac34fc46a96	f
8ef6e188-3c3e-4adf-a84a-d34523a59afc	458df769-f773-4440-b046-dc0402845fb5	f
8ef6e188-3c3e-4adf-a84a-d34523a59afc	b423bb3b-f055-4d8d-b992-c6e3985d1a64	f
40ffe4cf-0749-4df4-a506-adb53c04fbaa	6a128298-4bf1-4304-9124-030764e0e225	t
40ffe4cf-0749-4df4-a506-adb53c04fbaa	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	t
40ffe4cf-0749-4df4-a506-adb53c04fbaa	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	t
40ffe4cf-0749-4df4-a506-adb53c04fbaa	7a4f455e-c88b-45d2-8abd-efdb708c45f9	t
40ffe4cf-0749-4df4-a506-adb53c04fbaa	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	t
40ffe4cf-0749-4df4-a506-adb53c04fbaa	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	t
40ffe4cf-0749-4df4-a506-adb53c04fbaa	0b231b36-629d-4fc8-a6a4-606375734206	f
40ffe4cf-0749-4df4-a506-adb53c04fbaa	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	f
40ffe4cf-0749-4df4-a506-adb53c04fbaa	a2eeef6b-9869-43e0-baa6-6ac34fc46a96	f
40ffe4cf-0749-4df4-a506-adb53c04fbaa	458df769-f773-4440-b046-dc0402845fb5	f
40ffe4cf-0749-4df4-a506-adb53c04fbaa	b423bb3b-f055-4d8d-b992-c6e3985d1a64	f
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	6a128298-4bf1-4304-9124-030764e0e225	t
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	t
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	t
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	7a4f455e-c88b-45d2-8abd-efdb708c45f9	t
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	t
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	t
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	0b231b36-629d-4fc8-a6a4-606375734206	f
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	f
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	a2eeef6b-9869-43e0-baa6-6ac34fc46a96	f
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	458df769-f773-4440-b046-dc0402845fb5	f
f36a51c9-a2d4-4906-8c17-4b0b79122b9f	b423bb3b-f055-4d8d-b992-c6e3985d1a64	f
14f6f8b9-24a0-41f2-9e80-b093a6241b59	6a128298-4bf1-4304-9124-030764e0e225	t
14f6f8b9-24a0-41f2-9e80-b093a6241b59	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	t
14f6f8b9-24a0-41f2-9e80-b093a6241b59	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	t
14f6f8b9-24a0-41f2-9e80-b093a6241b59	7a4f455e-c88b-45d2-8abd-efdb708c45f9	t
14f6f8b9-24a0-41f2-9e80-b093a6241b59	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	t
14f6f8b9-24a0-41f2-9e80-b093a6241b59	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	t
14f6f8b9-24a0-41f2-9e80-b093a6241b59	0b231b36-629d-4fc8-a6a4-606375734206	f
14f6f8b9-24a0-41f2-9e80-b093a6241b59	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	f
14f6f8b9-24a0-41f2-9e80-b093a6241b59	a2eeef6b-9869-43e0-baa6-6ac34fc46a96	f
14f6f8b9-24a0-41f2-9e80-b093a6241b59	458df769-f773-4440-b046-dc0402845fb5	f
14f6f8b9-24a0-41f2-9e80-b093a6241b59	b423bb3b-f055-4d8d-b992-c6e3985d1a64	f
8a3c298b-765d-4ce0-8feb-d70d8587de21	6a128298-4bf1-4304-9124-030764e0e225	t
8a3c298b-765d-4ce0-8feb-d70d8587de21	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	t
8a3c298b-765d-4ce0-8feb-d70d8587de21	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	t
8a3c298b-765d-4ce0-8feb-d70d8587de21	7a4f455e-c88b-45d2-8abd-efdb708c45f9	t
8a3c298b-765d-4ce0-8feb-d70d8587de21	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	t
8a3c298b-765d-4ce0-8feb-d70d8587de21	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	t
8a3c298b-765d-4ce0-8feb-d70d8587de21	0b231b36-629d-4fc8-a6a4-606375734206	f
8a3c298b-765d-4ce0-8feb-d70d8587de21	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	f
8a3c298b-765d-4ce0-8feb-d70d8587de21	a2eeef6b-9869-43e0-baa6-6ac34fc46a96	f
8a3c298b-765d-4ce0-8feb-d70d8587de21	458df769-f773-4440-b046-dc0402845fb5	f
8a3c298b-765d-4ce0-8feb-d70d8587de21	b423bb3b-f055-4d8d-b992-c6e3985d1a64	f
350810c9-0768-4aa7-8551-4846e646b8ab	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
350810c9-0768-4aa7-8551-4846e646b8ab	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
350810c9-0768-4aa7-8551-4846e646b8ab	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
350810c9-0768-4aa7-8551-4846e646b8ab	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
350810c9-0768-4aa7-8551-4846e646b8ab	044b7aef-c043-4bea-8fb3-2078d448192e	t
350810c9-0768-4aa7-8551-4846e646b8ab	71a78d49-e449-4a9f-98bf-ff58c661938b	t
350810c9-0768-4aa7-8551-4846e646b8ab	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
350810c9-0768-4aa7-8551-4846e646b8ab	608397de-37a4-4fc9-b02e-5ad83e535563	f
350810c9-0768-4aa7-8551-4846e646b8ab	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
350810c9-0768-4aa7-8551-4846e646b8ab	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
350810c9-0768-4aa7-8551-4846e646b8ab	695a97cb-59f3-41ca-98f3-093e916993b0	f
7e87c8df-434a-4862-ae3e-573224e1762f	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
7e87c8df-434a-4862-ae3e-573224e1762f	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
7e87c8df-434a-4862-ae3e-573224e1762f	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
7e87c8df-434a-4862-ae3e-573224e1762f	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
7e87c8df-434a-4862-ae3e-573224e1762f	044b7aef-c043-4bea-8fb3-2078d448192e	t
7e87c8df-434a-4862-ae3e-573224e1762f	71a78d49-e449-4a9f-98bf-ff58c661938b	t
7e87c8df-434a-4862-ae3e-573224e1762f	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
7e87c8df-434a-4862-ae3e-573224e1762f	608397de-37a4-4fc9-b02e-5ad83e535563	f
7e87c8df-434a-4862-ae3e-573224e1762f	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
7e87c8df-434a-4862-ae3e-573224e1762f	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
7e87c8df-434a-4862-ae3e-573224e1762f	695a97cb-59f3-41ca-98f3-093e916993b0	f
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	044b7aef-c043-4bea-8fb3-2078d448192e	t
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	71a78d49-e449-4a9f-98bf-ff58c661938b	t
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	608397de-37a4-4fc9-b02e-5ad83e535563	f
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
cbfb3bbf-26f1-4dfc-bd8c-71fc83720438	695a97cb-59f3-41ca-98f3-093e916993b0	f
81e526a0-e939-4487-ae0c-69757e669b61	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
81e526a0-e939-4487-ae0c-69757e669b61	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
81e526a0-e939-4487-ae0c-69757e669b61	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
81e526a0-e939-4487-ae0c-69757e669b61	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
81e526a0-e939-4487-ae0c-69757e669b61	044b7aef-c043-4bea-8fb3-2078d448192e	t
81e526a0-e939-4487-ae0c-69757e669b61	71a78d49-e449-4a9f-98bf-ff58c661938b	t
81e526a0-e939-4487-ae0c-69757e669b61	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
81e526a0-e939-4487-ae0c-69757e669b61	608397de-37a4-4fc9-b02e-5ad83e535563	f
81e526a0-e939-4487-ae0c-69757e669b61	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
81e526a0-e939-4487-ae0c-69757e669b61	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
81e526a0-e939-4487-ae0c-69757e669b61	695a97cb-59f3-41ca-98f3-093e916993b0	f
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	044b7aef-c043-4bea-8fb3-2078d448192e	t
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	71a78d49-e449-4a9f-98bf-ff58c661938b	t
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	608397de-37a4-4fc9-b02e-5ad83e535563	f
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	695a97cb-59f3-41ca-98f3-093e916993b0	f
717a9e61-3f16-4378-b057-814ff141a9f3	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
717a9e61-3f16-4378-b057-814ff141a9f3	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
717a9e61-3f16-4378-b057-814ff141a9f3	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
717a9e61-3f16-4378-b057-814ff141a9f3	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
717a9e61-3f16-4378-b057-814ff141a9f3	044b7aef-c043-4bea-8fb3-2078d448192e	t
717a9e61-3f16-4378-b057-814ff141a9f3	71a78d49-e449-4a9f-98bf-ff58c661938b	t
717a9e61-3f16-4378-b057-814ff141a9f3	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
717a9e61-3f16-4378-b057-814ff141a9f3	608397de-37a4-4fc9-b02e-5ad83e535563	f
717a9e61-3f16-4378-b057-814ff141a9f3	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
717a9e61-3f16-4378-b057-814ff141a9f3	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
717a9e61-3f16-4378-b057-814ff141a9f3	695a97cb-59f3-41ca-98f3-093e916993b0	f
717a9e61-3f16-4378-b057-814ff141a9f3	c0ed0785-8ab9-44a0-91df-89c89cc1b802	t
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	044b7aef-c043-4bea-8fb3-2078d448192e	t
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	71a78d49-e449-4a9f-98bf-ff58c661938b	t
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	608397de-37a4-4fc9-b02e-5ad83e535563	f
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
d4e53d8d-f07f-47b2-b291-1b6c423bc52f	695a97cb-59f3-41ca-98f3-093e916993b0	f
5a35a12e-6b3e-4d21-987e-68021934e0eb	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
5a35a12e-6b3e-4d21-987e-68021934e0eb	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
5a35a12e-6b3e-4d21-987e-68021934e0eb	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
5a35a12e-6b3e-4d21-987e-68021934e0eb	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
5a35a12e-6b3e-4d21-987e-68021934e0eb	044b7aef-c043-4bea-8fb3-2078d448192e	t
5a35a12e-6b3e-4d21-987e-68021934e0eb	71a78d49-e449-4a9f-98bf-ff58c661938b	t
5a35a12e-6b3e-4d21-987e-68021934e0eb	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
5a35a12e-6b3e-4d21-987e-68021934e0eb	608397de-37a4-4fc9-b02e-5ad83e535563	f
5a35a12e-6b3e-4d21-987e-68021934e0eb	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
5a35a12e-6b3e-4d21-987e-68021934e0eb	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
5a35a12e-6b3e-4d21-987e-68021934e0eb	695a97cb-59f3-41ca-98f3-093e916993b0	f
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	a829bb80-9a8b-48f6-95a7-afb8443c7eb0	t
\.


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
b423bb3b-f055-4d8d-b992-c6e3985d1a64	e6845610-9e9a-41cd-9e12-ae1115edfdd0
695a97cb-59f3-41ca-98f3-093e916993b0	63e6defb-d304-4d2f-876e-fade47bbea7b
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component (id, name, parent_id, provider_id, provider_type, realm_id, sub_type) FROM stdin;
a1a1784e-7a03-4a06-a261-99681d3dfa45	rsa-generated	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	rsa-generated	org.keycloak.keys.KeyProvider	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N
8d10f522-c10e-43e6-b485-59141a1137ef	rsa-enc-generated	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	rsa-enc-generated	org.keycloak.keys.KeyProvider	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N
1536750b-10fa-408d-874e-3a9c87671ddc	hmac-generated-hs512	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	hmac-generated	org.keycloak.keys.KeyProvider	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N
86134b45-678f-440a-aa09-48e844659bde	aes-generated	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	aes-generated	org.keycloak.keys.KeyProvider	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N
5570e268-8e91-48dd-bc3e-944360e11976	Trusted Hosts	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	anonymous
fc8da99a-8295-43eb-b43d-8fa7cdc32276	Consent Required	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	anonymous
77361037-22c9-4412-84d5-59f323bca328	Full Scope Disabled	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	anonymous
c07b27b2-4858-4b2e-b0e9-0249601e9320	Max Clients Limit	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	anonymous
52cde8e7-484e-46bd-a225-2f73b3473d0b	Allowed Protocol Mapper Types	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	anonymous
357e3664-4e4b-4bbd-96ab-4d9b1d8ab63c	Allowed Client Scopes	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	anonymous
34aa5263-d697-4f92-9abd-ef0766ecd543	Allowed Protocol Mapper Types	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	authenticated
cbd2492d-79fe-48a2-9415-9a172ad2a815	Allowed Client Scopes	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	authenticated
3a02ee0d-f862-41b2-a5a0-163e8d46d10c	Trusted Hosts	1652565b-23ef-42a5-9b2c-1287d008e1e3	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	anonymous
74cc3123-6a30-40fa-8426-3933bc6373ba	Allowed Client Scopes	1652565b-23ef-42a5-9b2c-1287d008e1e3	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	authenticated
00b1d8cd-9234-4564-ae4a-8bc1614fbfb8	Allowed Client Scopes	1652565b-23ef-42a5-9b2c-1287d008e1e3	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	anonymous
5342d9e6-53a9-49c9-9cef-ab33aafb7a16	Allowed Protocol Mapper Types	1652565b-23ef-42a5-9b2c-1287d008e1e3	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	authenticated
d83f0fc0-5d0d-4e02-9d92-a14a16380577	Consent Required	1652565b-23ef-42a5-9b2c-1287d008e1e3	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	anonymous
d92cd8f3-c088-406c-bc98-11a6e70ed0f3	Full Scope Disabled	1652565b-23ef-42a5-9b2c-1287d008e1e3	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	anonymous
d873e09c-c693-4c80-873d-5465e0ea1677	Allowed Protocol Mapper Types	1652565b-23ef-42a5-9b2c-1287d008e1e3	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	anonymous
763777f9-0c34-42ec-83a5-859c283b1981	Max Clients Limit	1652565b-23ef-42a5-9b2c-1287d008e1e3	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	anonymous
f1f1586a-5225-48de-8548-509452ee1a3a	hmac-generated-hs512	1652565b-23ef-42a5-9b2c-1287d008e1e3	hmac-generated	org.keycloak.keys.KeyProvider	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N
a9c40149-a33f-47c5-b526-d9c2f52a14c2	rsa-enc-generated	1652565b-23ef-42a5-9b2c-1287d008e1e3	rsa-enc-generated	org.keycloak.keys.KeyProvider	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N
bb7a6fc0-3eb9-4bd8-a8d6-d89d417b37d3	rsa-generated	1652565b-23ef-42a5-9b2c-1287d008e1e3	rsa-generated	org.keycloak.keys.KeyProvider	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N
12a1924a-0a9c-4c60-8d7a-a0ec8c7333dc	aes-generated	1652565b-23ef-42a5-9b2c-1287d008e1e3	aes-generated	org.keycloak.keys.KeyProvider	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N
e87c746b-7ef9-4404-b8e7-cc3cb07c9f8f	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	declarative-user-profile	org.keycloak.userprofile.UserProfileProvider	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N
\.


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component_config (id, component_id, name, value) FROM stdin;
79ca57cf-df81-4431-a5ab-d062113896b5	1536750b-10fa-408d-874e-3a9c87671ddc	algorithm	HS512
0d8b2972-c31d-42c4-b024-2913c080b51a	1536750b-10fa-408d-874e-3a9c87671ddc	secret	rvwnOlj0b2fhJl8eug_bP2VjG_UFLEDEgtu1gdrODtT-gWDfy6RjYeEs2YpxxeUVXsw_63IbLBcXK-8w79hptY32lvbdoANTvgG4ESgOl8EhCk74sIAffkX5aie3dBNBQsktE73ZzCFAMxr1sZqaqWWBttJyw0fnMNAsJN73WL0
063bee46-f643-4512-88be-d2e1b5c647ab	1536750b-10fa-408d-874e-3a9c87671ddc	kid	1e912223-e7e8-48d5-a54e-3962ecf3fd9a
cc07d199-8deb-4a52-b71c-fed73c1df06f	1536750b-10fa-408d-874e-3a9c87671ddc	priority	100
ba67a1fb-67c1-41cf-a050-8b43b6f49aec	a1a1784e-7a03-4a06-a261-99681d3dfa45	certificate	MIICmzCCAYMCBgGbPGARYzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUxMjIwMTUyNjI3WhcNMzUxMjIwMTUyODA3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCzzee+Mq6yyGqP3Pj4AJkCqZlyS+NmlO7kIuVOulPyrEjD1hs50uMwPbZqMk88+a7e4ZJj3XmKgrvlRuL4m3NxcbNYNV/7b/p0pjXT9zRP1t3vL6XYI9nsSjzEHuBpiVUDgQjg9idFHmkHlouaS4yUE6RvIVNcly4zlQHBNlOncoSYg9iFra6NDqONWwZVNak2Thi23VjNewv60TQNjYQR/hDHNS5FvHEigJmLyqStU7rmcoJkU3xEdkqmEyYQNtkvHoUbfGJc7wNrYKKN0sKEDhTxITqbryTufPE/J6poosBs/oiOWnX+/t/nNDeTMjMVMPLINzmlGEJ10N5aqENfAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAEvD5iHmjadpfF5sSpbd+ld+6je0x30ZrMtBZDXafyZNHs2GxPes1LrDn+lxssnbfFT8mbVH3w9sYEybeoDBLpS/4yRpWUJ2Go48XniWmz1OHuTp9qpnFh+YvQbSOnqlpH+LUYJKD6vLB7pFuvCA28QSzU2pciEhRG1jcP86D+GFRt1R0vQvLqiCOke3tvMUwYudiJdEVIkA0NR1sLJ/dSfSQMWeub20cSyCWTMaEGDJnEvPe4kTf9LbJ/829AFer6c2Le+FQMTmZvWe/b0qU6uSOMdjQiZgqpykrUQEfDcb9fDVSCCQg693eqyuFdQNu0B+5uy9krY6LZ/WTTyCmBE=
6bbcbf07-0c05-4f85-9a0b-ce440e4ba58b	a1a1784e-7a03-4a06-a261-99681d3dfa45	keyUse	SIG
06d88198-7928-4b5d-b17f-b89c614d7aac	a1a1784e-7a03-4a06-a261-99681d3dfa45	privateKey	MIIEowIBAAKCAQEAs83nvjKusshqj9z4+ACZAqmZckvjZpTu5CLlTrpT8qxIw9YbOdLjMD22ajJPPPmu3uGSY915ioK75Ubi+JtzcXGzWDVf+2/6dKY10/c0T9bd7y+l2CPZ7Eo8xB7gaYlVA4EI4PYnRR5pB5aLmkuMlBOkbyFTXJcuM5UBwTZTp3KEmIPYha2ujQ6jjVsGVTWpNk4Ytt1YzXsL+tE0DY2EEf4QxzUuRbxxIoCZi8qkrVO65nKCZFN8RHZKphMmEDbZLx6FG3xiXO8Da2CijdLChA4U8SE6m68k7nzxPyeqaKLAbP6Ijlp1/v7f5zQ3kzIzFTDyyDc5pRhCddDeWqhDXwIDAQABAoIBAEJENVAmSrduYMOzq3hvc/UEv55dtKn2YtLmv39T8aOC9nBipPcbL4r0e5nI/+YXmWjgVr0Cf4xaYVh/VyBL3nCleHUeesjmvLYoGbeMqJVyOaow89zkXakVtS6MuKV8rT3U3QpX/iIdspTO2ZWcmWtrj9M7Q4dg2nC9Tn/Af3U7A9hvd8tSgf/HVSgeX7fWINZFaIDh6bRru41qdKihGVnMB3x3gXPk4QkgFoH1H83ejfMTGiM4v65LexKL/UpcLEyv0/h95pa/pp+Ml5VVcXt9CoCPjjNfAUM8NfTJTuPwciysK33IGYf7Jaoz62r1M59V22pBqX72fzAoxffsO7UCgYEA2EJeYKXtmOFdU6BpqhluipwDGYJAJe64DSy/uSXLgQDEyNA5UQ8y8sCmUmVMP1YeDJt28Zzeg43/ricup9qK17Yhbd2Jfi/p85GOhqvvEzGcc/TjH7cevOQIpcGG8hQSdGtDCycq5yvj1G8YGz+V24mCS4DmxZnr06VA8SiZwrsCgYEA1NiP7npKFCF8K4z8TNCxlK46EqgcZRmaHvyjwSHwCwnqxwudWXb5iQCUg8POYgCIl6xsRDb2r9sIdWVoKiK6DuRsPVNe2Gd7C3CKMFbIvTkjh/cxDhhwKGx/3eix42rdjQjw9vpfFdO1OEcL9OkiE+iTifHpue5rPCPKUdh/0a0CgYAVQQiXhRdB5DxQ4L4hypgTpVukoSl+0ORj3xcEslM63YF5nwVTEyRVuVtfU7dXrjYL1SeufVVdJpKPYihytMbahnromlJOBZV/q7mPQMyhXUncF6BO2Kd7twmmiMujdRePO49+RB4yVBzzHuwGmYw35F7a3tNPbl5AEci9KtlZywKBgA89AfD86FjQnOcxTM7jEhOm9ZloV8AVOSeGxuKI33qq1xgxCK7jCbJ5TCiy2A/EIgNZ4NZxaO/mKpDdFbwOiGuQhv9M/LlZj0GeaQZU8EI72QNe+zAbJ8x9GBp3EmVJvVrfjQDho/UYFx1UWNLL7himyglSPH2HSD4iAdYiPeRxAoGBANZPPf8IQaIKKTLQi7atxXhid+oCy8zQzuiN/XbZAgDdS74PpmR9KFK1w06oZ+qLWboGxmnu86P86+Snetm+WRbmP74AIrLBgqFlf8bhzLSVLG03LCMYT2gMKSTEKWksUkAooXUdXOK8FPacypr2T/y1alT3vUPYqs6b3LCSevNe
93222ddf-ab26-44cc-983f-18d6dc64ec45	a1a1784e-7a03-4a06-a261-99681d3dfa45	priority	100
4bff6d84-5e61-43be-a129-c18989d77b5d	8d10f522-c10e-43e6-b485-59141a1137ef	algorithm	RSA-OAEP
a37863e7-938f-4be5-b86d-c68eada6c909	8d10f522-c10e-43e6-b485-59141a1137ef	keyUse	ENC
eca0ecde-1d06-415a-97b3-e37b711e3633	8d10f522-c10e-43e6-b485-59141a1137ef	priority	100
c60970ab-5bad-484d-9598-e2dee9c88779	8d10f522-c10e-43e6-b485-59141a1137ef	certificate	MIICmzCCAYMCBgGbPGAR1zANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUxMjIwMTUyNjI3WhcNMzUxMjIwMTUyODA3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDnjZFDquhr5KBIwiGSQr9x9Il3oUfplp6mVp1cTS5URK6HTwUOiZKWTWuJTSw7bEJ04qoKTYzCPJrJSoePx4iZAISUcN27lCY/T3qvoOmLIZ0WwQczX6BbpkcYkXzQV2DvC6WKnJye7UKtSsa3/lm7SwHs359Iyx3Ts9g7EvFUFW+NOAQDImUxtVqeLKzPAOPqg7Bvu+jQa7fffiOY9NDxp9RA9sE6ges8pjpilRJGw0MyiNK5TGNSrZFbCwTtO5ywegR/ePe/d/Mgq8dYicjH+65WQkXPXRzRzTjsNzkh2mkeC/a6uPrLNCLxZM3NAXbBFjwpUdAU5+HuTBjDE9LhAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAMJxi8W3yiczCPgf8RXftq3X0c65Jfjz+4+bWucb5EeQT0vfJM1TFspqM8xfPtwMZwXGR+MWxEhXP1rAxKdr0Jxy6MjB6ku/9uIQRvoiYOVjU3JoEywP0XLCfZlOUJoPRerRLHC7W2Z5cIkWRsk0KXfREN5qElU1JRSToENE9DAcllQkRyhEvPNVeC19bWiuurGoFMJJ59HyZTafCeWXl5Z3B/PA0Pu/2eJ5RfWXgevn/vR+AjNJ3n0mfK3/Mz/xLa/s24OSOJJAJmR0aekuXtJm05+uApDnCXt4iRbwzFaUCoHNxMmIIy/Dq0tTgEX3TsAJ7/D9x/FoFgKRqyVVz/o=
01cd54e8-7d54-4738-ad3b-4b04bfb98586	8d10f522-c10e-43e6-b485-59141a1137ef	privateKey	MIIEpAIBAAKCAQEA542RQ6roa+SgSMIhkkK/cfSJd6FH6ZaepladXE0uVESuh08FDomSlk1riU0sO2xCdOKqCk2MwjyayUqHj8eImQCElHDdu5QmP096r6DpiyGdFsEHM1+gW6ZHGJF80Fdg7wulipycnu1CrUrGt/5Zu0sB7N+fSMsd07PYOxLxVBVvjTgEAyJlMbVaniyszwDj6oOwb7vo0Gu3334jmPTQ8afUQPbBOoHrPKY6YpUSRsNDMojSuUxjUq2RWwsE7TucsHoEf3j3v3fzIKvHWInIx/uuVkJFz10c0c047Dc5IdppHgv2urj6yzQi8WTNzQF2wRY8KVHQFOfh7kwYwxPS4QIDAQABAoIBABdQRyR3hEA8vDCnLychRlJMazzaxblMm3um8+ATu0rrwWDJQXqVumccs2uXFBGFlGldWv5/kWELJhCHSv/ceLHi/fZOKN0WjQVJ1NHzEyCZiU39sGJpSeWAZ98e4uC9M3rOAuRiYViVDeYRxdFHsDQt2KtHVqvHG6Exld9YyGiNMO9vUQ85Ikl2oCSnQr6s8J9uxAbaaXt5gG/xoyuLo2QYhJsXjB2EyxR+nvXXf/PcCRWQhxGsel6TR0Lq+i4FyOnfGCV12ZjSNOpqP4kSKyk7U7kXpwpMBpJ4yD9KYG8cYvQMA/6eIvFLwSw/uBuTbfJRpPFDnmpygHXlJm9fNEMCgYEA9HGtQZSDWkib29QPX3xgIfZ22d3t6Cvr48hYpYJ3YO5+AqiPSbUGLNbW4vqRSxX/cMOQA+HdaJnHMDqWYCEdyEo3wEZmdO2C55jEBJBJKL/HkTlO6YxklE+TF+Bc+rgST6IXFfcc+fW6GfUEY7zBwGZMYyi016EHE//bUR3y4aMCgYEA8n/hQcfdlR64Uybcl9WUO+9hJRvdeCkCk6a18pZVIVfNR+HXIpfHkWvQzE1c6+XKcGPuDl0COwaVploUMP08CQ9VpQ6v4zkp/kvmXblOy9tV7UKvbBe1v/MDxDP2p1bgDdQQp6F7jCfLrxgBCccsgdB0j/ieYS6IQSleUbi8KasCgYBE4/y2LMrQGQKD88HZYU4ehD1+rUMtWaODcKU7EAfg85Xj3el0FmaFII8zLPbhuHNjLlpaHb+uiRhQCVL0CKFCH1iTAcRCU+W+q5kiyB82MsZlsUcCHyUBf2OvKPZLWrEebEohUKGD+LLYOetgyIO6W5pPn9tHogRCqKsAs3YODQKBgQC/00za/kFX7p8cl8c0DG1gI/ISqsI8hSRWrC+NoEHjSFNIo2vNH4dsj37xvdjdej7zPPlZP1W+X20N1H/YaNmOySSUltOnyNZhJKUsSqP8Opr0PiYKOY86MgAuunRI1z4RcklicSkMK4bCERjxJS8d2Un7gU23zllWQmUr/BhMVQKBgQDS8jQUpeJWC9KdUhk3WeivMaK7wPKQD6p5nZYJzJuhd3l4HktGfAaOALYoofj6zFUs48s+BaYcGmizfiqtG0c4BYsvhPWi4pVtnp1B+qhXanVociXc/wshyWfL52sF+GiAhjfPxdzNlkPASX90cGb6tXw+ds05ogOlO/4gRnlnwg==
8dc8df9c-8c74-4511-b940-48636d80d132	86134b45-678f-440a-aa09-48e844659bde	secret	8lyN7QjwIPTtKtk8EQeKZQ
08c2fcc6-444c-42ac-8545-ca839ce6cb44	86134b45-678f-440a-aa09-48e844659bde	priority	100
060dd2eb-cd79-4af3-974c-b946665c2322	86134b45-678f-440a-aa09-48e844659bde	kid	515fb199-6363-41e2-8a8f-5fab9db7effe
7be2f296-0b8c-464c-9781-94144ce14ffa	c07b27b2-4858-4b2e-b0e9-0249601e9320	max-clients	200
efb18068-efb2-44b7-ace7-5239cb8f1f5f	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	saml-user-attribute-mapper
89151418-e536-4267-86fe-a329345576a7	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
d707a8e9-14b5-4f13-bd5e-9804330b2ba0	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	saml-role-list-mapper
f6a0887d-3b44-42a7-a28b-badd27be59d2	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	oidc-address-mapper
b5b22116-ca1e-41cf-a4b5-c87f48b48f7c	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
e35d6196-3ff1-4e1e-8284-5f5520611fd8	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	saml-user-property-mapper
d6c6f628-cb69-4f1c-8f55-3a1ccfc49acf	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	oidc-full-name-mapper
86ed0fdb-73aa-4dfa-a2d7-a37c39198e3a	52cde8e7-484e-46bd-a225-2f73b3473d0b	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
a8fbca56-abb0-4856-a891-f6705f98fa59	5570e268-8e91-48dd-bc3e-944360e11976	host-sending-registration-request-must-match	true
1237032c-5222-49f8-9186-9da3b9b358f9	5570e268-8e91-48dd-bc3e-944360e11976	client-uris-must-match	true
ca3301dc-5aee-4e79-82c5-e9e66ed8cb43	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	saml-role-list-mapper
20ea81a1-adf2-4f6b-a5cf-f9b395df4bad	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
47c07576-e89b-43f6-864f-335df7ef14b5	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	oidc-address-mapper
5844edf1-6cae-4cdb-a0fd-17a5d45a9353	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
6624334e-2ae3-4e53-9f9f-ab4432b92f6f	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	saml-user-attribute-mapper
b0525461-ad15-4e4d-8776-6c0526030ce9	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	saml-user-property-mapper
2878709d-f0b3-46a9-8663-a6e73e1acecd	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	oidc-full-name-mapper
a8e13864-d608-4df8-95d4-77764efd683d	34aa5263-d697-4f92-9abd-ef0766ecd543	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
9ef62484-9159-48e1-b6b4-e5636a1e253d	357e3664-4e4b-4bbd-96ab-4d9b1d8ab63c	allow-default-scopes	true
6bbafa9a-d4bb-4613-8ca0-88fe52851120	cbd2492d-79fe-48a2-9415-9a172ad2a815	allow-default-scopes	true
c9af8f72-dab2-4c54-b167-ef7aeeba0edb	3a02ee0d-f862-41b2-a5a0-163e8d46d10c	client-uris-must-match	true
62f37f07-ce95-46a3-9452-c7e66482b918	3a02ee0d-f862-41b2-a5a0-163e8d46d10c	host-sending-registration-request-must-match	true
1b4abce1-264e-430d-b4dd-1b472c2e1f37	74cc3123-6a30-40fa-8426-3933bc6373ba	allow-default-scopes	true
4e681af2-97b0-4efd-9f01-c94b56200698	f1f1586a-5225-48de-8548-509452ee1a3a	priority	100
3468fa33-bf21-40f8-85a1-6ed9002ec905	f1f1586a-5225-48de-8548-509452ee1a3a	algorithm	HS512
c06e3290-203a-4a0b-a4f0-536a5d926000	f1f1586a-5225-48de-8548-509452ee1a3a	kid	b6f4d9bc-1bbe-4fe4-8596-e15e3606688f
4e69f63e-152f-43f8-a9a3-158498ac1045	f1f1586a-5225-48de-8548-509452ee1a3a	secret	q4PS4nwwBwm_qTveZgFZFI8YccI6Ct7Pws3i9xe2c0G91dm6ZcgT32h1EnNFjKTWLAB8LTxIZ_t4GBWV0Qdxv_g1kA5vktRmBkoHk_1a3G5yRgsFMp8sxCUwio6kNQP_YbL8xCaEH58eZAdh-P9xidlhjlZM7R_cz0Uke2E-sJU
d883174d-15f7-494d-810a-d58e8d57ac4a	a9c40149-a33f-47c5-b526-d9c2f52a14c2	privateKey	MIIEpAIBAAKCAQEAx6mZulXG3ymqbgWWC1Ogx5RVJOa7SNbxdqJrOgkTiwzVkP+abEa41mLXwtzav9wRcKKTQS1QGjdt3eKS/UM8CtDRaEWd56KlODkS3a3fEbEqGQiXzFl08ffrHQxE98wqRhB8KCDM95P6YMkBK9rMOOT5+WT9wLOUsRY2qEF6xKR8tbHnQlDdnLREn2RS2+ZKfk6ITEaE2YMA2VePo90jfddRtlIU8eJMeRkZxoE86+Dw1yEcDYj7uazmaqElUYu0DFlo5gzqBbVPvj2TcI0z8ezPLxsYKbcmU0P96x2IY06kRAYFKQ/c0DpLtMczHMeFs/7jwiww+PTyCpIwZpVKFQIDAQABAoIBAE9fo575eal+8WNysg8HrGubEuwsE7klxfFRKUp1kEDflclia7vus4161uZ/ETFjpcU+xEaNYoJBldo3OBMZ1vU/xXfr8RXESWVb/x2EgSER6rfv/BS/XWfSFLREC+jsz8Nxy0HSpFkqCUfPsLkD7tsRYDTeiqhAW/S4bXsfKNSiETNP6NPTEwbXn9tLcsB7adegOuNVkha6KQ+499OKmkn7Sx6/a7U2ee7QdJmOTADVlgwfbrIHTJBz3Zcd8EkIDTYddKKXJIN6QhCJITFQLaVya5myDntN385vyk4f68R6SRfJhPvG2Hf/Z0dQllN5s6/cFFp1Y5WnGCvWMXsC15MCgYEA88oUgdXqxv1RcaK3YboCtpX1MnU2u5tzXMHsJ+oKtSXzp+LbkbG8qF0jnCSJkC0B3ck0oHXgAXL1QwjNrqp/esd9Ew9ZB+AxYhr1omcmUwo0g9ySyk/JYhjsjr4BPcR6XCbiqXmLNayDIqidO9eHdFI51178bwv++3VrO42FZG8CgYEA0am3U1Ec9dbVEYAasTchirXMeblI2dmpgyVyHufgeVUyOcQH6ZOYzfM6BIXkEQmhkfWOPnh3uqkhMqO37WEtWDRNZl7QTw0V3NZmBrzkvAMwCZr7gGq65scaHjngiT88skC7QS6iEH1ko7FUUvmwRMae2RS5XUm5xrOW3ueSY7sCgYEA3yqY1TXWwqv31zdl+a8GdtAVckg8f0bRNxNKNEuZ27PPNVuFNfznP5RrWa9UwkeBEt7yLwVYttreS6wOZRsssV9WTpFZJc2ER1N4kl8shQ2tfxv2v/6D0ioQuqaSilGG1T6/dPaPieXO8XY64SHunHv8+Pu5x4nKs7QMIqrtdj8CgYA1DgVeCACUFTEFpK0cex75wtdjVgehWPsUPL2MJJEhIvX6uChoavkX5Jyh2F/GD/HaxZChLkrd6T6FWfiJETYwQ8vyQ7vixSTrJTXcLqCTExts0tMhw+BX1bo+O9cd4+qwEMFR1UMdeR2mbpEwDg8U2E4KELx3Ztij934OGftpUQKBgQCc0b6TbKyUKJxF3AtpkxjHyUNSeyHO296F8Uc+4D4xJES4A7dDBAFxZ45WDzXd7fTx56e14mer53jTaiAFvDUC5g4Hqtspr2vvV+EF6+YhtuFnFeLfowXU61ZKZ2BphSXC+aNRPwYGHSoUsPKknKA5pvUQu+ZAkGf888KZEhnRIA==
6855197f-d87c-45ff-b179-47d74e4c00d0	a9c40149-a33f-47c5-b526-d9c2f52a14c2	priority	100
7e030ce4-7cb5-4404-82be-dd905f913700	a9c40149-a33f-47c5-b526-d9c2f52a14c2	certificate	MIICpzCCAY8CBgGbPGBVqzANBgkqhkiG9w0BAQsFADAXMRUwEwYDVQQDDAxjYWxlbmRhci1hcHAwHhcNMjUxMjIwMTUyNjQ1WhcNMzUxMjIwMTUyODI1WjAXMRUwEwYDVQQDDAxjYWxlbmRhci1hcHAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHqZm6VcbfKapuBZYLU6DHlFUk5rtI1vF2oms6CROLDNWQ/5psRrjWYtfC3Nq/3BFwopNBLVAaN23d4pL9QzwK0NFoRZ3noqU4ORLdrd8RsSoZCJfMWXTx9+sdDET3zCpGEHwoIMz3k/pgyQEr2sw45Pn5ZP3As5SxFjaoQXrEpHy1sedCUN2ctESfZFLb5kp+TohMRoTZgwDZV4+j3SN911G2UhTx4kx5GRnGgTzr4PDXIRwNiPu5rOZqoSVRi7QMWWjmDOoFtU++PZNwjTPx7M8vGxgptyZTQ/3rHYhjTqREBgUpD9zQOku0xzMcx4Wz/uPCLDD49PIKkjBmlUoVAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAAVbnOJlPg9UdezhQ0H6IsWt5zLTPy2MDWf4Njuhc/TlSUC5l7D1vomOgdimm/U5ySKSJK8WAA8OOYO3JP0ktubOEBq3eLqszgHKQOYeKDxWzeio5ZeMtJIk2F4gYaEM6X814IfS/7uaHkgnzTXF7EsV8+muGyy42MQmtAve5MzOrQve9Va/WyRBA77uJ4K3j5W6eym/1PMAyXlyO+NESvssjrDLmoHz9E5qdDEDwdNFWyLDr6bLgRevNkt+hRzCYD0e211ghHcZewSgp3QgM2pkSS8uLt0cANg//KRO8QdHscblm2pYXbBBQZm/yI993B5q0NfYyNi7hhOuF73+LU=
1425cd88-6aff-459e-bbf6-344c3f5f9079	a9c40149-a33f-47c5-b526-d9c2f52a14c2	algorithm	RSA-OAEP
9c257643-502f-4fb6-b59f-f8b6d144ca89	00b1d8cd-9234-4564-ae4a-8bc1614fbfb8	allow-default-scopes	true
fc32e324-5883-4275-bd8c-742b1ea8410c	bb7a6fc0-3eb9-4bd8-a8d6-d89d417b37d3	priority	100
bfce25ff-4c6d-479b-9de6-ff35a4e0c21b	bb7a6fc0-3eb9-4bd8-a8d6-d89d417b37d3	privateKey	MIIEpAIBAAKCAQEA283EHqAOHOoW3OJ+vg/ZtVka7Rgh2d58PWr5Ei97Um19G67N+C/oVttZn9NMBiYTkK3WUcYvl7P2h2vahD8nmvTg7pl+10CcnS7wpwlqoVqVobAdrCxjh3iGm8jiTBDpwbd1iNaWockyQ3rGN1pQaXiJSXN7idQtSTlL8ydowjLgy4yfB1S9ClaKjkHIDtUlM1xaq26HYVpnOILfDxHl2bQaoaj5OGjvxMWM2FnZ708TcMm1rHYJxpsHtkmcLOHsAYAyySlCBUu87eQBMEpP84hB2VVwlRk0fhakXbpU8qTO5FNeUypR2GQ1E7IemMZakizVcp6OE53LSoSqOXJPFQIDAQABAoIBAF+yu0gQLITXQIQEEuWCNinYNTp0DszyKop9CBssVBeDtvw2A9QiW5hxYRiOYOOucUdFAHJTBMaaYmP8h8ObUY2MP2BysQBbz7Q5yyoWlffRXiNq78hV/TFuvsCV2jz/Ah9G1mPw9d1ToVAy5JkV97ur8K3rmyZbnCnsyc4AYwJlYNpaXghT3T7t6JuReo1iMU5GR3JqDpbpXsIkJLOLUExK+K9hmqoL5KtMAUjiIEPJ/7EfLoFYHxa5uMERo0FZPF1tr1auV0Y4tkFduBKoNWoB9T/cykGpm79+N6YtCi0ASitqupoAqzOjVSrI9mjWz8cmnDLfmGfd0fL1AT815+MCgYEA8BCRX1a7DNvTZJ5qUqxNq9rM/kt13eK9Ol2p6yi+ylkR8fa6AGJMkM2r9fIsZQqaulSIA8VKv7UUgz3YWWODx3AXo1FCAnU9YZ6C8uBNidye1FT7a2EzPL8eabzghVRnBaH2Eh8DP8ztyJtchWabxAFn2RYqUuDi1tRCiy1KHHMCgYEA6mTnKD+9N2Bz+xihs8ba+nYDlwbqht0A2N0+bSvcfcC+iYZ5OWkMOoK6bZte3jqV8mq0Io799ZhFlDaswC7AGu9oHSm3SzidsAkdp6zG39iNwCHICYzPp8mTIwGZBGdsXMBIGM0ztu2DmKIbPk2mWsbrojYnoGbS25W3/OhNzFcCgYBIEgFCqQwQyTIGhBSRa08KJ+7g7RCeo4KBsjrf8WSN5P2hMZwXn2szEbvtY132m59mDxiiYSmWsitNV1TLSTf3uOwvyKZTjJT36JmRhstgdw5r2nN8gjraotnjjqOtA3DGXSA9wne8QK6mShYVqn9a8b0WjDP6m68eJa0wkVEthwKBgQC45SmXDViEQ1iZ/R8pQjbglZFVZEZCZjlR2Ixy78N5iz6CG4qqp9vWl+LZrVMTeCFqXZOFI0jfn+Na/Bofa4FsfeeiAZMuChYRk89JwjgKwbdnlP5H0kTH9XFUjuEWoULQk3kL32ro5MkG8PEOn5AXUYz0o0V0+UdhoePF47Xi9wKBgQCceOoZB+PrYQGcu4zyScWKJKC4iS7ffHjIZRGeFsY97XI+9Pckk2nke2QboeukT3q0dntz0C6QRQSbAzwIwYSRCdcN9no877SVTX6A8E43VH1dbhI8XCMeyEI9ijaiTusqwEO8yuIgeKNbIZE+mwsPZUE2UrYQ6OCl5cq3SxfGzA==
2162d67a-274f-4cf9-83fa-f3c3adc478e0	bb7a6fc0-3eb9-4bd8-a8d6-d89d417b37d3	certificate	MIICpzCCAY8CBgGbPGBWLzANBgkqhkiG9w0BAQsFADAXMRUwEwYDVQQDDAxjYWxlbmRhci1hcHAwHhcNMjUxMjIwMTUyNjQ1WhcNMzUxMjIwMTUyODI1WjAXMRUwEwYDVQQDDAxjYWxlbmRhci1hcHAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDbzcQeoA4c6hbc4n6+D9m1WRrtGCHZ3nw9avkSL3tSbX0brs34L+hW21mf00wGJhOQrdZRxi+Xs/aHa9qEPyea9ODumX7XQJydLvCnCWqhWpWhsB2sLGOHeIabyOJMEOnBt3WI1pahyTJDesY3WlBpeIlJc3uJ1C1JOUvzJ2jCMuDLjJ8HVL0KVoqOQcgO1SUzXFqrbodhWmc4gt8PEeXZtBqhqPk4aO/ExYzYWdnvTxNwybWsdgnGmwe2SZws4ewBgDLJKUIFS7zt5AEwSk/ziEHZVXCVGTR+FqRdulTypM7kU15TKlHYZDUTsh6YxlqSLNVyno4TnctKhKo5ck8VAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAE/v8VPD7wh9VPhw8WgyLvwqRj+KCsXSER/JADU6tXqWGj4vezWJ3wJ6Dd7yobYnCoo9ZkfE5UbjpOHgDR3gY5x0J1zibwwZA/mKKYA0fG5fEijW/c8zTJMJtSVTPYMRp7PIwdPdFfn3O/SaQHY7PjLn6IZJ0pVjCowjrriL2lyptlf7EFBAwXxuNldizpeot8LgrzZVNDs3t7AFCesX/nvf6UrjOPgu9kCF9WK3Y/fcliRL9CuVyDIuYhdeGxL2CCXOGPXAO7EvmxqISzAgSEGh2GX8jvOrnJq/xn9Q3RaC3N0/wAh97YN4sxBqiguXxCR+ayd13OFJRGXMamdL9rk=
a988fe54-5e6e-4765-ad45-0b04a71b3716	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	oidc-full-name-mapper
c775c5bb-6e5d-4a68-84b2-9ba8d589e26f	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
6b7825fb-7164-401a-841e-6069524fcf83	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
597aee57-1244-46f9-94ae-97c4769617d2	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	oidc-address-mapper
70a191fa-2df0-43d4-8649-a4cd4dd48c1f	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	saml-user-attribute-mapper
216bb64d-4cda-4032-a45b-713cce6b5e12	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	saml-role-list-mapper
8dbbd735-51e8-49cd-a28a-fbd71df801ed	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
295008ef-7fe4-4c32-88d6-f8bf6bbe13cd	5342d9e6-53a9-49c9-9cef-ab33aafb7a16	allowed-protocol-mapper-types	saml-user-property-mapper
de9c57c7-29c3-41a5-960e-6e2fc945140e	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	oidc-full-name-mapper
1fea3c50-0cc0-4784-a014-05925ddb15c6	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	saml-user-attribute-mapper
636df5cd-88af-4724-8d2a-5147f6bd3d41	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
d1fcee2d-0d2c-4300-af39-eb6ae800ef80	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	saml-role-list-mapper
7a749e80-b58a-4b7a-b8b3-b4852def093f	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
b1654f8b-7e1e-45b3-be39-2ea7a1c976ec	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	saml-user-property-mapper
d9100498-fd3b-4686-a628-74dcf364d63b	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	oidc-address-mapper
a2b16f8f-c75f-4afe-9a2b-a9ee1986817b	d873e09c-c693-4c80-873d-5465e0ea1677	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
ebd8ae96-f52e-4861-b3fa-702b0f44ac9e	12a1924a-0a9c-4c60-8d7a-a0ec8c7333dc	kid	7e8750f1-5009-41d3-bd96-9ff32dcae532
e020ae19-b795-4126-8e5b-10beeb16f9b1	12a1924a-0a9c-4c60-8d7a-a0ec8c7333dc	priority	100
5bf21f40-1bcb-4d19-b346-30660ea25724	12a1924a-0a9c-4c60-8d7a-a0ec8c7333dc	secret	WtTqyMWoJdxEGSZLir5Iag
04cd3f83-ab7e-479d-895f-1a1723ccc441	763777f9-0c34-42ec-83a5-859c283b1981	max-clients	200
3a5fefec-e630-4352-b9df-a74f3ad3bffd	e87c746b-7ef9-4404-b8e7-cc3cb07c9f8f	kc.user.profile.config	{"attributes":[{"name":"username","displayName":"${username}","validations":{"length":{"min":3,"max":255},"username-prohibited-characters":{},"up-username-not-idn-homograph":{}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"email","displayName":"${email}","validations":{"email":{},"length":{"max":255}},"required":{"roles":["user"]},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"firstName","displayName":"${firstName}","validations":{"length":{"max":255},"person-name-prohibited-characters":{}},"required":{"roles":["user"]},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"lastName","displayName":"${lastName}","validations":{"length":{"max":255},"person-name-prohibited-characters":{}},"required":{"roles":["user"]},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false}],"groups":[{"name":"user-metadata","displayHeader":"User metadata","displayDescription":"Attributes, which refer to user metadata"}],"unmanagedAttributePolicy":"ENABLED"}
\.


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.composite_role (composite, child_role) FROM stdin;
79218c9f-454f-40a1-b3f5-d9249faf72bd	707d598e-a543-4ba1-bb3d-e141e764aa5b
79218c9f-454f-40a1-b3f5-d9249faf72bd	1105bea3-1322-44ea-8d48-5408d1351037
79218c9f-454f-40a1-b3f5-d9249faf72bd	fd613257-2a10-4b46-86e6-7e812b559cfa
79218c9f-454f-40a1-b3f5-d9249faf72bd	9be355b8-d882-4914-97e6-377aa4af54de
79218c9f-454f-40a1-b3f5-d9249faf72bd	492ddfd5-b053-4695-a72f-906ca6b712ba
79218c9f-454f-40a1-b3f5-d9249faf72bd	e9522873-3163-4419-b801-676a6152ef55
79218c9f-454f-40a1-b3f5-d9249faf72bd	922f5679-a607-494c-96ca-5773945619fa
79218c9f-454f-40a1-b3f5-d9249faf72bd	5b97bceb-8f10-4682-9d2b-eb64b1509456
79218c9f-454f-40a1-b3f5-d9249faf72bd	8ab66fd6-89ba-484d-95cc-76842e24cd13
79218c9f-454f-40a1-b3f5-d9249faf72bd	ba414760-f917-4d6c-991c-9947ef38df61
79218c9f-454f-40a1-b3f5-d9249faf72bd	97a4e1d9-35fd-431a-87db-807edbcfd653
79218c9f-454f-40a1-b3f5-d9249faf72bd	64beb3da-1014-449c-83c6-1cd61b91395e
79218c9f-454f-40a1-b3f5-d9249faf72bd	3360a49e-8171-43d3-bf1e-eb2f066f63a6
79218c9f-454f-40a1-b3f5-d9249faf72bd	6e9d525f-a0c0-4f45-b6cf-d9427c3cd5d7
79218c9f-454f-40a1-b3f5-d9249faf72bd	86c5e154-f7e0-4d90-8bea-0042772254c5
79218c9f-454f-40a1-b3f5-d9249faf72bd	89c8ee7d-b4bb-4073-8007-fd2bd9736118
79218c9f-454f-40a1-b3f5-d9249faf72bd	09a16fef-d13f-4e51-a6c0-0e30bfe6c271
79218c9f-454f-40a1-b3f5-d9249faf72bd	6bd4027f-9516-4191-926d-57eca16ac4bd
492ddfd5-b053-4695-a72f-906ca6b712ba	89c8ee7d-b4bb-4073-8007-fd2bd9736118
9be355b8-d882-4914-97e6-377aa4af54de	86c5e154-f7e0-4d90-8bea-0042772254c5
9be355b8-d882-4914-97e6-377aa4af54de	6bd4027f-9516-4191-926d-57eca16ac4bd
bf02c521-c207-48fc-a51b-b2ca9dc134b7	5e6bce17-7a12-4230-aa9b-828f15ad453c
bf02c521-c207-48fc-a51b-b2ca9dc134b7	5356de8a-d807-40ed-bf58-09445a81d829
5356de8a-d807-40ed-bf58-09445a81d829	9506a523-d655-4cf3-b20a-5f99e800de1f
1cdadcc3-01a7-476b-a2e8-424e8b4caf8a	708dda5d-4095-4f82-99e8-9a8daaa88264
79218c9f-454f-40a1-b3f5-d9249faf72bd	fda7675b-9903-45dc-a5b7-6522ac88cc33
bf02c521-c207-48fc-a51b-b2ca9dc134b7	e6845610-9e9a-41cd-9e12-ae1115edfdd0
bf02c521-c207-48fc-a51b-b2ca9dc134b7	01396822-57f4-47cb-b3da-149112ae9581
79218c9f-454f-40a1-b3f5-d9249faf72bd	e5d99de7-22d9-4cef-9929-3592a2d81732
79218c9f-454f-40a1-b3f5-d9249faf72bd	9b82d49a-83a1-476c-ae5e-8d35eb163fd0
79218c9f-454f-40a1-b3f5-d9249faf72bd	1d2a4df4-f3b0-450e-9de2-79fffdf6ab28
79218c9f-454f-40a1-b3f5-d9249faf72bd	e2ec48a9-94a3-4e11-a4a5-1d77a13e8337
79218c9f-454f-40a1-b3f5-d9249faf72bd	a54cf6b4-9bff-4a4b-b29e-fd7e7e3a7bfe
79218c9f-454f-40a1-b3f5-d9249faf72bd	e875f977-c2c9-4037-9239-3cbb92374b84
79218c9f-454f-40a1-b3f5-d9249faf72bd	c6c2c494-c4ca-4872-a26a-14cde70029b0
79218c9f-454f-40a1-b3f5-d9249faf72bd	02145cf3-48a1-439f-8c7b-91ae6db6dc6e
79218c9f-454f-40a1-b3f5-d9249faf72bd	16162279-ca4d-4e33-8a5e-ea68d25e863f
79218c9f-454f-40a1-b3f5-d9249faf72bd	ab0712dd-1de9-4bc0-9234-2b82737fa641
79218c9f-454f-40a1-b3f5-d9249faf72bd	d28c6e28-6699-4a44-8f87-dc32b4c4e541
79218c9f-454f-40a1-b3f5-d9249faf72bd	efda9ca4-323d-452c-bd46-1dae751b15fd
79218c9f-454f-40a1-b3f5-d9249faf72bd	3695c5db-842d-4155-ad00-a730a728597b
79218c9f-454f-40a1-b3f5-d9249faf72bd	b48a389f-641d-4fce-9456-d3601325a338
79218c9f-454f-40a1-b3f5-d9249faf72bd	a6a86418-9deb-4ace-9ac5-10e81b1b4ce4
79218c9f-454f-40a1-b3f5-d9249faf72bd	e7a67c07-58e1-45d4-b942-b12eb49a5ef2
79218c9f-454f-40a1-b3f5-d9249faf72bd	92a07849-7596-43d2-9136-f371dc0c6023
1d2a4df4-f3b0-450e-9de2-79fffdf6ab28	b48a389f-641d-4fce-9456-d3601325a338
1d2a4df4-f3b0-450e-9de2-79fffdf6ab28	92a07849-7596-43d2-9136-f371dc0c6023
e2ec48a9-94a3-4e11-a4a5-1d77a13e8337	a6a86418-9deb-4ace-9ac5-10e81b1b4ce4
05de4c8d-1778-4806-ac3a-ced4cb6da030	9310d0c5-d54f-453b-85f9-bd4669728521
05de4c8d-1778-4806-ac3a-ced4cb6da030	dd504cb7-ad5f-4ece-87e8-f53f6b5bb1c6
05de4c8d-1778-4806-ac3a-ced4cb6da030	6c1e0236-6ab8-4985-9531-f61268629094
05de4c8d-1778-4806-ac3a-ced4cb6da030	40614e2d-0e38-4a63-bba4-0234eb7919f3
05de4c8d-1778-4806-ac3a-ced4cb6da030	5caafde7-e289-410d-9b30-1a823afc1525
05de4c8d-1778-4806-ac3a-ced4cb6da030	cd97619a-e9da-4068-bd5d-acc41f457af6
05de4c8d-1778-4806-ac3a-ced4cb6da030	40d70c77-0a6a-4dfb-9f6e-d0ef50e3d0c3
05de4c8d-1778-4806-ac3a-ced4cb6da030	b5034743-7234-49ef-85e3-1256d1d24a09
05de4c8d-1778-4806-ac3a-ced4cb6da030	5afe6c9a-cd9e-4d35-91ee-f81759775e09
05de4c8d-1778-4806-ac3a-ced4cb6da030	83e236b0-2957-41d3-8a4a-8eb09ca301dc
05de4c8d-1778-4806-ac3a-ced4cb6da030	d1a9ea82-dbb6-46e7-bd14-0fa7746bbf5d
05de4c8d-1778-4806-ac3a-ced4cb6da030	eb6d8d7e-011e-47f0-ac3d-1427b5c22489
05de4c8d-1778-4806-ac3a-ced4cb6da030	47045c88-9194-4ffe-8c02-184cc4d47522
05de4c8d-1778-4806-ac3a-ced4cb6da030	1a9454ed-3a78-499a-863f-225c96f95133
05de4c8d-1778-4806-ac3a-ced4cb6da030	3382f509-f968-4e9c-94fb-f5e2d11cf4b5
05de4c8d-1778-4806-ac3a-ced4cb6da030	5fc723c5-58b0-48c7-9e19-de74a4e7510f
05de4c8d-1778-4806-ac3a-ced4cb6da030	bc0fb1a7-6a1f-49f9-8fa2-0d9f4f1e5ff5
05de4c8d-1778-4806-ac3a-ced4cb6da030	5b08f177-2581-4770-a13e-e44119044d98
0d3dd597-b404-43bf-acd0-77a8e4341fbc	c596da9d-0428-444c-bc6b-0b915fd5f122
0d3dd597-b404-43bf-acd0-77a8e4341fbc	ad846c62-b4e8-4720-8eac-e654a8ff62e9
0d3dd597-b404-43bf-acd0-77a8e4341fbc	63e6defb-d304-4d2f-876e-fade47bbea7b
0d3dd597-b404-43bf-acd0-77a8e4341fbc	8053125f-3173-4edb-acf9-0523668b6991
5fc723c5-58b0-48c7-9e19-de74a4e7510f	1a9454ed-3a78-499a-863f-225c96f95133
5fc723c5-58b0-48c7-9e19-de74a4e7510f	3382f509-f968-4e9c-94fb-f5e2d11cf4b5
8053125f-3173-4edb-acf9-0523668b6991	dd1bb602-b3bc-4055-8bfe-001507d1db64
9310d0c5-d54f-453b-85f9-bd4669728521	5afe6c9a-cd9e-4d35-91ee-f81759775e09
96ec1fc0-e587-4d18-8f41-fd524b0979f6	2f2c01c9-260f-47df-b0b0-fe7c6f1db20e
79218c9f-454f-40a1-b3f5-d9249faf72bd	e1c7fc56-3676-4876-a635-6717928b3d62
\.


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority, version) FROM stdin;
9495ad72-013b-4a17-adf3-32f2ca82e796	\N	password	4403891a-616c-43d6-b6d1-d43c13010991	1766244508774	\N	{"value":"7tivfnTum2zytu6radVXuuIUgoSmJNpfVGhMsFY9xFg=","salt":"EoRRYxZBicbzj+bzE0u0Gw==","additionalParameters":{}}	{"hashIterations":5,"algorithm":"argon2","additionalParameters":{"hashLength":["32"],"memory":["7168"],"type":["id"],"version":["1.3"],"parallelism":["1"]}}	10	0
33dbc042-c773-4618-8286-660481eaf8d2	\N	password	93b5339f-a3a3-45b8-b343-25ca1b6f9d7b	1784241662006	\N	{"value":"fSCZ7jJT8rxb0aWog17/HyZ3ly27CDuo04A8GIVJ1tc=","salt":"QnmcOl/heecNs3jO7NVo9w==","additionalParameters":{}}	{"hashIterations":5,"algorithm":"argon2","additionalParameters":{"hashLength":["32"],"memory":["7168"],"type":["id"],"version":["1.3"],"parallelism":["1"]}}	10	0
cbf88a21-c31d-4607-a0ca-7a46c299115d	\N	password	2e7ebdbe-6a8a-488d-8495-1bee73197811	1784241763055	\N	{"value":"/Vd+Xq5YmObZbyxpmYjNks74bZOBVOQ7XDHxVJkvyG8=","salt":"mrH/lVfJe8m58ecyzJDUlA==","additionalParameters":{}}	{"hashIterations":5,"algorithm":"argon2","additionalParameters":{"hashLength":["32"],"memory":["7168"],"type":["id"],"version":["1.3"],"parallelism":["1"]}}	10	0
489e63ed-0cad-4b43-ac3d-44050a94cfae	\N	password	b17cc54a-817c-4cfc-b8d6-3aa4d6c32dc2	1784243813857	\N	{"value":"+3fIO5Z1eYPftVKt9DGIWjevpBynkPjbrec5e4n+rGY=","salt":"MQGZu0J02EqOnUwjFzlRKA==","additionalParameters":{}}	{"hashIterations":5,"algorithm":"argon2","additionalParameters":{"hashLength":["32"],"memory":["7168"],"type":["id"],"version":["1.3"],"parallelism":["1"]}}	10	0
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/jpa-changelog-1.0.0.Final.xml	2025-12-20 15:26:25.959399	1	EXECUTED	9:6f1016664e21e16d26517a4418f5e3df	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.33.0	\N	\N	6244380077
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/db2-jpa-changelog-1.0.0.Final.xml	2025-12-20 15:26:26.055362	2	MARK_RAN	9:828775b1596a07d1200ba1d49e5e3941	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.33.0	\N	\N	6244380077
1.1.0.Beta1	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Beta1.xml	2025-12-20 15:26:26.653672	3	EXECUTED	9:5f090e44a7d595883c1fb61f4b41fd38	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...		\N	4.33.0	\N	\N	6244380077
1.1.0.Final	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Final.xml	2025-12-20 15:26:26.773384	4	EXECUTED	9:c07e577387a3d2c04d1adc9aaad8730e	renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	6244380077
1.2.0.Beta1	psilva@redhat.com	META-INF/jpa-changelog-1.2.0.Beta1.xml	2025-12-20 15:26:28.237519	5	EXECUTED	9:b68ce996c655922dbcd2fe6b6ae72686	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.33.0	\N	\N	6244380077
1.2.0.Beta1	psilva@redhat.com	META-INF/db2-jpa-changelog-1.2.0.Beta1.xml	2025-12-20 15:26:28.290499	6	MARK_RAN	9:543b5c9989f024fe35c6f6c5a97de88e	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.33.0	\N	\N	6244380077
1.2.0.RC1	bburke@redhat.com	META-INF/jpa-changelog-1.2.0.CR1.xml	2025-12-20 15:26:29.841432	7	EXECUTED	9:765afebbe21cf5bbca048e632df38336	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.33.0	\N	\N	6244380077
1.2.0.RC1	bburke@redhat.com	META-INF/db2-jpa-changelog-1.2.0.CR1.xml	2025-12-20 15:26:29.892379	8	MARK_RAN	9:db4a145ba11a6fdaefb397f6dbf829a1	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.33.0	\N	\N	6244380077
1.2.0.Final	keycloak	META-INF/jpa-changelog-1.2.0.Final.xml	2025-12-20 15:26:30.071588	9	EXECUTED	9:9d05c7be10cdb873f8bcb41bc3a8ab23	update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT		\N	4.33.0	\N	\N	6244380077
1.3.0	bburke@redhat.com	META-INF/jpa-changelog-1.3.0.xml	2025-12-20 15:26:31.551507	10	EXECUTED	9:18593702353128d53111f9b1ff0b82b8	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...		\N	4.33.0	\N	\N	6244380077
1.4.0	bburke@redhat.com	META-INF/jpa-changelog-1.4.0.xml	2025-12-20 15:26:32.786421	11	EXECUTED	9:6122efe5f090e41a85c0f1c9e52cbb62	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.33.0	\N	\N	6244380077
1.4.0	bburke@redhat.com	META-INF/db2-jpa-changelog-1.4.0.xml	2025-12-20 15:26:32.837463	12	MARK_RAN	9:e1ff28bf7568451453f844c5d54bb0b5	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.33.0	\N	\N	6244380077
1.5.0	bburke@redhat.com	META-INF/jpa-changelog-1.5.0.xml	2025-12-20 15:26:33.541521	13	EXECUTED	9:7af32cd8957fbc069f796b61217483fd	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.33.0	\N	\N	6244380077
1.6.1_from15	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2025-12-20 15:26:33.851484	14	EXECUTED	9:6005e15e84714cd83226bf7879f54190	addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...		\N	4.33.0	\N	\N	6244380077
1.6.1_from16-pre	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2025-12-20 15:26:33.900444	15	MARK_RAN	9:bf656f5a2b055d07f314431cae76f06c	delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
1.6.1_from16	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2025-12-20 15:26:33.975564	16	MARK_RAN	9:f8dadc9284440469dcf71e25ca6ab99b	dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...		\N	4.33.0	\N	\N	6244380077
1.6.1	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2025-12-20 15:26:34.095422	17	EXECUTED	9:d41d8cd98f00b204e9800998ecf8427e	empty		\N	4.33.0	\N	\N	6244380077
1.7.0	bburke@redhat.com	META-INF/jpa-changelog-1.7.0.xml	2025-12-20 15:26:34.879494	18	EXECUTED	9:3368ff0be4c2855ee2dd9ca813b38d8e	createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...		\N	4.33.0	\N	\N	6244380077
1.8.0	mposolda@redhat.com	META-INF/jpa-changelog-1.8.0.xml	2025-12-20 15:26:35.535464	19	EXECUTED	9:8ac2fb5dd030b24c0570a763ed75ed20	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.33.0	\N	\N	6244380077
1.8.0-2	keycloak	META-INF/jpa-changelog-1.8.0.xml	2025-12-20 15:26:35.688349	20	EXECUTED	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.33.0	\N	\N	6244380077
22.0.5-24031	keycloak	META-INF/jpa-changelog-22.0.0.xml	2025-12-20 15:27:37.751338	119	MARK_RAN	9:a60d2d7b315ec2d3eba9e2f145f9df28	customChange		\N	4.33.0	\N	\N	6244380077
1.8.0	mposolda@redhat.com	META-INF/db2-jpa-changelog-1.8.0.xml	2025-12-20 15:26:35.749459	21	MARK_RAN	9:831e82914316dc8a57dc09d755f23c51	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.33.0	\N	\N	6244380077
1.8.0-2	keycloak	META-INF/db2-jpa-changelog-1.8.0.xml	2025-12-20 15:26:35.822369	22	MARK_RAN	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.33.0	\N	\N	6244380077
1.9.0	mposolda@redhat.com	META-INF/jpa-changelog-1.9.0.xml	2025-12-20 15:26:36.954667	23	EXECUTED	9:bc3d0f9e823a69dc21e23e94c7a94bb1	update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...		\N	4.33.0	\N	\N	6244380077
1.9.1	keycloak	META-INF/jpa-changelog-1.9.1.xml	2025-12-20 15:26:37.125341	24	EXECUTED	9:c9999da42f543575ab790e76439a2679	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.33.0	\N	\N	6244380077
1.9.1	keycloak	META-INF/db2-jpa-changelog-1.9.1.xml	2025-12-20 15:26:37.171426	25	MARK_RAN	9:0d6c65c6f58732d81569e77b10ba301d	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.33.0	\N	\N	6244380077
1.9.2	keycloak	META-INF/jpa-changelog-1.9.2.xml	2025-12-20 15:26:41.750467	26	EXECUTED	9:fc576660fc016ae53d2d4778d84d86d0	createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...		\N	4.33.0	\N	\N	6244380077
authz-2.0.0	psilva@redhat.com	META-INF/jpa-changelog-authz-2.0.0.xml	2025-12-20 15:26:42.717516	27	EXECUTED	9:43ed6b0da89ff77206289e87eaa9c024	createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...		\N	4.33.0	\N	\N	6244380077
authz-2.5.1	psilva@redhat.com	META-INF/jpa-changelog-authz-2.5.1.xml	2025-12-20 15:26:42.83671	28	EXECUTED	9:44bae577f551b3738740281eceb4ea70	update tableName=RESOURCE_SERVER_POLICY		\N	4.33.0	\N	\N	6244380077
2.1.0-KEYCLOAK-5461	bburke@redhat.com	META-INF/jpa-changelog-2.1.0.xml	2025-12-20 15:26:43.535477	29	EXECUTED	9:bd88e1f833df0420b01e114533aee5e8	createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...		\N	4.33.0	\N	\N	6244380077
2.2.0	bburke@redhat.com	META-INF/jpa-changelog-2.2.0.xml	2025-12-20 15:26:43.785568	30	EXECUTED	9:a7022af5267f019d020edfe316ef4371	addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...		\N	4.33.0	\N	\N	6244380077
2.3.0	bburke@redhat.com	META-INF/jpa-changelog-2.3.0.xml	2025-12-20 15:26:44.27567	31	EXECUTED	9:fc155c394040654d6a79227e56f5e25a	createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...		\N	4.33.0	\N	\N	6244380077
2.4.0	bburke@redhat.com	META-INF/jpa-changelog-2.4.0.xml	2025-12-20 15:26:44.460434	32	EXECUTED	9:eac4ffb2a14795e5dc7b426063e54d88	customChange		\N	4.33.0	\N	\N	6244380077
2.5.0	bburke@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2025-12-20 15:26:44.685476	33	EXECUTED	9:54937c05672568c4c64fc9524c1e9462	customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
2.5.0-unicode-oracle	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2025-12-20 15:26:44.734924	34	MARK_RAN	9:f9753208029f582525ed12011a19d054	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.33.0	\N	\N	6244380077
2.5.0-unicode-other-dbs	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2025-12-20 15:26:45.414437	35	EXECUTED	9:33d72168746f81f98ae3a1e8e0ca3554	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.33.0	\N	\N	6244380077
2.5.0-duplicate-email-support	slawomir@dabek.name	META-INF/jpa-changelog-2.5.0.xml	2025-12-20 15:26:45.556479	36	EXECUTED	9:61b6d3d7a4c0e0024b0c839da283da0c	addColumn tableName=REALM		\N	4.33.0	\N	\N	6244380077
2.5.0-unique-group-names	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2025-12-20 15:26:45.676452	37	EXECUTED	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	6244380077
2.5.1	bburke@redhat.com	META-INF/jpa-changelog-2.5.1.xml	2025-12-20 15:26:45.819397	38	EXECUTED	9:a2b870802540cb3faa72098db5388af3	addColumn tableName=FED_USER_CONSENT		\N	4.33.0	\N	\N	6244380077
3.0.0	bburke@redhat.com	META-INF/jpa-changelog-3.0.0.xml	2025-12-20 15:26:45.937606	39	EXECUTED	9:132a67499ba24bcc54fb5cbdcfe7e4c0	addColumn tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	6244380077
3.2.0-fix	keycloak	META-INF/jpa-changelog-3.2.0.xml	2025-12-20 15:26:45.982358	40	MARK_RAN	9:938f894c032f5430f2b0fafb1a243462	addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS		\N	4.33.0	\N	\N	6244380077
3.2.0-fix-with-keycloak-5416	keycloak	META-INF/jpa-changelog-3.2.0.xml	2025-12-20 15:26:46.052554	41	MARK_RAN	9:845c332ff1874dc5d35974b0babf3006	dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS		\N	4.33.0	\N	\N	6244380077
3.2.0-fix-offline-sessions	hmlnarik	META-INF/jpa-changelog-3.2.0.xml	2025-12-20 15:26:46.264425	42	EXECUTED	9:fc86359c079781adc577c5a217e4d04c	customChange		\N	4.33.0	\N	\N	6244380077
3.2.0-fixed	keycloak	META-INF/jpa-changelog-3.2.0.xml	2025-12-20 15:27:05.575602	43	EXECUTED	9:59a64800e3c0d09b825f8a3b444fa8f4	addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...		\N	4.33.0	\N	\N	6244380077
3.3.0	keycloak	META-INF/jpa-changelog-3.3.0.xml	2025-12-20 15:27:05.698429	44	EXECUTED	9:d48d6da5c6ccf667807f633fe489ce88	addColumn tableName=USER_ENTITY		\N	4.33.0	\N	\N	6244380077
26.5.0-org-id-charset-mysql	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:53:02.056559	174	MARK_RAN	9:3564cacb2892098d8d3ab5987e51f72a	customChange		\N	4.33.0	\N	\N	8517571809
authz-3.4.0.CR1-resource-server-pk-change-part1	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2025-12-20 15:27:05.868446	45	EXECUTED	9:dde36f7973e80d71fceee683bc5d2951	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE		\N	4.33.0	\N	\N	6244380077
authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2025-12-20 15:27:06.05545	46	EXECUTED	9:b855e9b0a406b34fa323235a0cf4f640	customChange		\N	4.33.0	\N	\N	6244380077
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2025-12-20 15:27:06.103612	47	MARK_RAN	9:51abbacd7b416c50c4421a8cabf7927e	dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE		\N	4.33.0	\N	\N	6244380077
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2025-12-20 15:27:08.089575	48	EXECUTED	9:bdc99e567b3398bac83263d375aad143	addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...		\N	4.33.0	\N	\N	6244380077
authn-3.4.0.CR1-refresh-token-max-reuse	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2025-12-20 15:27:08.21566	49	EXECUTED	9:d198654156881c46bfba39abd7769e69	addColumn tableName=REALM		\N	4.33.0	\N	\N	6244380077
3.4.0	keycloak	META-INF/jpa-changelog-3.4.0.xml	2025-12-20 15:27:08.792426	50	EXECUTED	9:cfdd8736332ccdd72c5256ccb42335db	addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...		\N	4.33.0	\N	\N	6244380077
3.4.0-KEYCLOAK-5230	hmlnarik@redhat.com	META-INF/jpa-changelog-3.4.0.xml	2025-12-20 15:27:13.692377	51	EXECUTED	9:7c84de3d9bd84d7f077607c1a4dcb714	createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...		\N	4.33.0	\N	\N	6244380077
3.4.1	psilva@redhat.com	META-INF/jpa-changelog-3.4.1.xml	2025-12-20 15:27:13.806529	52	EXECUTED	9:5a6bb36cbefb6a9d6928452c0852af2d	modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
3.4.2	keycloak	META-INF/jpa-changelog-3.4.2.xml	2025-12-20 15:27:13.923533	53	EXECUTED	9:8f23e334dbc59f82e0a328373ca6ced0	update tableName=REALM		\N	4.33.0	\N	\N	6244380077
3.4.2-KEYCLOAK-5172	mkanis@redhat.com	META-INF/jpa-changelog-3.4.2.xml	2025-12-20 15:27:14.055455	54	EXECUTED	9:9156214268f09d970cdf0e1564d866af	update tableName=CLIENT		\N	4.33.0	\N	\N	6244380077
4.0.0-KEYCLOAK-6335	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2025-12-20 15:27:14.195447	55	EXECUTED	9:db806613b1ed154826c02610b7dbdf74	createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS		\N	4.33.0	\N	\N	6244380077
4.0.0-CLEANUP-UNUSED-TABLE	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2025-12-20 15:27:14.313609	56	EXECUTED	9:229a041fb72d5beac76bb94a5fa709de	dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING		\N	4.33.0	\N	\N	6244380077
4.0.0-KEYCLOAK-6228	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2025-12-20 15:27:15.151458	57	EXECUTED	9:079899dade9c1e683f26b2aa9ca6ff04	dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...		\N	4.33.0	\N	\N	6244380077
4.0.0-KEYCLOAK-5579-fixed	mposolda@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2025-12-20 15:27:21.187645	58	EXECUTED	9:139b79bcbbfe903bb1c2d2a4dbf001d9	dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...		\N	4.33.0	\N	\N	6244380077
authz-4.0.0.CR1	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.CR1.xml	2025-12-20 15:27:21.5924	59	EXECUTED	9:b55738ad889860c625ba2bf483495a04	createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...		\N	4.33.0	\N	\N	6244380077
authz-4.0.0.Beta3	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.Beta3.xml	2025-12-20 15:27:21.756424	60	EXECUTED	9:e0057eac39aa8fc8e09ac6cfa4ae15fe	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY		\N	4.33.0	\N	\N	6244380077
authz-4.2.0.Final	mhajas@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2025-12-20 15:27:22.015703	61	EXECUTED	9:42a33806f3a0443fe0e7feeec821326c	createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...		\N	4.33.0	\N	\N	6244380077
authz-4.2.0.Final-KEYCLOAK-9944	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2025-12-20 15:27:22.133818	62	EXECUTED	9:9968206fca46eecc1f51db9c024bfe56	addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS		\N	4.33.0	\N	\N	6244380077
4.2.0-KEYCLOAK-6313	wadahiro@gmail.com	META-INF/jpa-changelog-4.2.0.xml	2025-12-20 15:27:22.251368	63	EXECUTED	9:92143a6daea0a3f3b8f598c97ce55c3d	addColumn tableName=REQUIRED_ACTION_PROVIDER		\N	4.33.0	\N	\N	6244380077
4.3.0-KEYCLOAK-7984	wadahiro@gmail.com	META-INF/jpa-changelog-4.3.0.xml	2025-12-20 15:27:22.365522	64	EXECUTED	9:82bab26a27195d889fb0429003b18f40	update tableName=REQUIRED_ACTION_PROVIDER		\N	4.33.0	\N	\N	6244380077
4.6.0-KEYCLOAK-7950	psilva@redhat.com	META-INF/jpa-changelog-4.6.0.xml	2025-12-20 15:27:22.48235	65	EXECUTED	9:e590c88ddc0b38b0ae4249bbfcb5abc3	update tableName=RESOURCE_SERVER_RESOURCE		\N	4.33.0	\N	\N	6244380077
4.6.0-KEYCLOAK-8377	keycloak	META-INF/jpa-changelog-4.6.0.xml	2025-12-20 15:27:23.072472	66	EXECUTED	9:5c1f475536118dbdc38d5d7977950cc0	createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...		\N	4.33.0	\N	\N	6244380077
4.6.0-KEYCLOAK-8555	gideonray@gmail.com	META-INF/jpa-changelog-4.6.0.xml	2025-12-20 15:27:23.599383	67	EXECUTED	9:e7c9f5f9c4d67ccbbcc215440c718a17	createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT		\N	4.33.0	\N	\N	6244380077
4.7.0-KEYCLOAK-1267	sguilhen@redhat.com	META-INF/jpa-changelog-4.7.0.xml	2025-12-20 15:27:23.737512	68	EXECUTED	9:88e0bfdda924690d6f4e430c53447dd5	addColumn tableName=REALM		\N	4.33.0	\N	\N	6244380077
4.7.0-KEYCLOAK-7275	keycloak	META-INF/jpa-changelog-4.7.0.xml	2025-12-20 15:27:24.44735	69	EXECUTED	9:f53177f137e1c46b6a88c59ec1cb5218	renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...		\N	4.33.0	\N	\N	6244380077
4.8.0-KEYCLOAK-8835	sguilhen@redhat.com	META-INF/jpa-changelog-4.8.0.xml	2025-12-20 15:27:24.635574	70	EXECUTED	9:a74d33da4dc42a37ec27121580d1459f	addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM		\N	4.33.0	\N	\N	6244380077
authz-7.0.0-KEYCLOAK-10443	psilva@redhat.com	META-INF/jpa-changelog-authz-7.0.0.xml	2025-12-20 15:27:24.764736	71	EXECUTED	9:fd4ade7b90c3b67fae0bfcfcb42dfb5f	addColumn tableName=RESOURCE_SERVER		\N	4.33.0	\N	\N	6244380077
8.0.0-adding-credential-columns	keycloak	META-INF/jpa-changelog-8.0.0.xml	2025-12-20 15:27:25.038572	72	EXECUTED	9:aa072ad090bbba210d8f18781b8cebf4	addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL		\N	4.33.0	\N	\N	6244380077
8.0.0-updating-credential-data-not-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2025-12-20 15:27:25.284467	73	EXECUTED	9:1ae6be29bab7c2aa376f6983b932be37	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.33.0	\N	\N	6244380077
8.0.0-updating-credential-data-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2025-12-20 15:27:25.331393	74	MARK_RAN	9:14706f286953fc9a25286dbd8fb30d97	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.33.0	\N	\N	6244380077
8.0.0-credential-cleanup-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2025-12-20 15:27:26.035818	75	EXECUTED	9:2b9cc12779be32c5b40e2e67711a218b	dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...		\N	4.33.0	\N	\N	6244380077
8.0.0-resource-tag-support	keycloak	META-INF/jpa-changelog-8.0.0.xml	2025-12-20 15:27:26.568342	76	EXECUTED	9:91fa186ce7a5af127a2d7a91ee083cc5	addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	4.33.0	\N	\N	6244380077
9.0.0-always-display-client	keycloak	META-INF/jpa-changelog-9.0.0.xml	2025-12-20 15:27:26.685534	77	EXECUTED	9:6335e5c94e83a2639ccd68dd24e2e5ad	addColumn tableName=CLIENT		\N	4.33.0	\N	\N	6244380077
9.0.0-drop-constraints-for-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2025-12-20 15:27:26.734571	78	MARK_RAN	9:6bdb5658951e028bfe16fa0a8228b530	dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...		\N	4.33.0	\N	\N	6244380077
9.0.0-increase-column-size-federated-fk	keycloak	META-INF/jpa-changelog-9.0.0.xml	2025-12-20 15:27:27.077548	79	EXECUTED	9:d5bc15a64117ccad481ce8792d4c608f	modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...		\N	4.33.0	\N	\N	6244380077
9.0.0-recreate-constraints-after-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2025-12-20 15:27:27.12539	80	MARK_RAN	9:077cba51999515f4d3e7ad5619ab592c	addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...		\N	4.33.0	\N	\N	6244380077
9.0.1-add-index-to-client.client_id	keycloak	META-INF/jpa-changelog-9.0.1.xml	2025-12-20 15:27:27.666541	81	EXECUTED	9:be969f08a163bf47c6b9e9ead8ac2afb	createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT		\N	4.33.0	\N	\N	6244380077
9.0.1-KEYCLOAK-12579-drop-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2025-12-20 15:27:27.716423	82	MARK_RAN	9:6d3bb4408ba5a72f39bd8a0b301ec6e3	dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	6244380077
9.0.1-KEYCLOAK-12579-add-not-null-constraint	keycloak	META-INF/jpa-changelog-9.0.1.xml	2025-12-20 15:27:27.881451	83	EXECUTED	9:966bda61e46bebf3cc39518fbed52fa7	addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	6244380077
9.0.1-KEYCLOAK-12579-recreate-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2025-12-20 15:27:27.927442	84	MARK_RAN	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	6244380077
9.0.1-add-index-to-events	keycloak	META-INF/jpa-changelog-9.0.1.xml	2025-12-20 15:27:28.450515	85	EXECUTED	9:7d93d602352a30c0c317e6a609b56599	createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	6244380077
map-remove-ri	keycloak	META-INF/jpa-changelog-11.0.0.xml	2025-12-20 15:27:28.593592	86	EXECUTED	9:71c5969e6cdd8d7b6f47cebc86d37627	dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9		\N	4.33.0	\N	\N	6244380077
map-remove-ri	keycloak	META-INF/jpa-changelog-12.0.0.xml	2025-12-20 15:27:28.829456	87	EXECUTED	9:a9ba7d47f065f041b7da856a81762021	dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...		\N	4.33.0	\N	\N	6244380077
12.1.0-add-realm-localization-table	keycloak	META-INF/jpa-changelog-12.0.0.xml	2025-12-20 15:27:28.977465	88	EXECUTED	9:fffabce2bc01e1a8f5110d5278500065	createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS		\N	4.33.0	\N	\N	6244380077
default-roles	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:29.191551	89	EXECUTED	9:fa8a5b5445e3857f4b010bafb5009957	addColumn tableName=REALM; customChange		\N	4.33.0	\N	\N	6244380077
default-roles-cleanup	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:29.333866	90	EXECUTED	9:67ac3241df9a8582d591c5ed87125f39	dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES		\N	4.33.0	\N	\N	6244380077
13.0.0-KEYCLOAK-16844	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:29.849424	91	EXECUTED	9:ad1194d66c937e3ffc82386c050ba089	createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
map-remove-ri-13.0.0	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:30.083382	92	EXECUTED	9:d9be619d94af5a2f5d07b9f003543b91	dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...		\N	4.33.0	\N	\N	6244380077
13.0.0-KEYCLOAK-17992-drop-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:30.13039	93	MARK_RAN	9:544d201116a0fcc5a5da0925fbbc3bde	dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT		\N	4.33.0	\N	\N	6244380077
13.0.0-increase-column-size-federated	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:30.299402	94	EXECUTED	9:43c0c1055b6761b4b3e89de76d612ccf	modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT		\N	4.33.0	\N	\N	6244380077
13.0.0-KEYCLOAK-17992-recreate-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:30.344457	95	MARK_RAN	9:8bd711fd0330f4fe980494ca43ab1139	addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...		\N	4.33.0	\N	\N	6244380077
json-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-13.0.0.xml	2025-12-20 15:27:30.54839	96	EXECUTED	9:e07d2bc0970c348bb06fb63b1f82ddbf	addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE		\N	4.33.0	\N	\N	6244380077
14.0.0-KEYCLOAK-11019	keycloak	META-INF/jpa-changelog-14.0.0.xml	2025-12-20 15:27:31.904672	97	EXECUTED	9:24fb8611e97f29989bea412aa38d12b7	createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
14.0.0-KEYCLOAK-18286	keycloak	META-INF/jpa-changelog-14.0.0.xml	2025-12-20 15:27:31.953416	98	MARK_RAN	9:259f89014ce2506ee84740cbf7163aa7	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
14.0.0-KEYCLOAK-18286-revert	keycloak	META-INF/jpa-changelog-14.0.0.xml	2025-12-20 15:27:32.159445	99	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
14.0.0-KEYCLOAK-18286-supported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2025-12-20 15:27:32.704555	100	EXECUTED	9:60ca84a0f8c94ec8c3504a5a3bc88ee8	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
14.0.0-KEYCLOAK-18286-unsupported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2025-12-20 15:27:32.752361	101	MARK_RAN	9:d3d977031d431db16e2c181ce49d73e9	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
KEYCLOAK-17267-add-index-to-user-attributes	keycloak	META-INF/jpa-changelog-14.0.0.xml	2025-12-20 15:27:33.287571	102	EXECUTED	9:0b305d8d1277f3a89a0a53a659ad274c	createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE		\N	4.33.0	\N	\N	6244380077
KEYCLOAK-18146-add-saml-art-binding-identifier	keycloak	META-INF/jpa-changelog-14.0.0.xml	2025-12-20 15:27:33.470464	103	EXECUTED	9:2c374ad2cdfe20e2905a84c8fac48460	customChange		\N	4.33.0	\N	\N	6244380077
15.0.0-KEYCLOAK-18467	keycloak	META-INF/jpa-changelog-15.0.0.xml	2025-12-20 15:27:33.676386	104	EXECUTED	9:47a760639ac597360a8219f5b768b4de	addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...		\N	4.33.0	\N	\N	6244380077
17.0.0-9562	keycloak	META-INF/jpa-changelog-17.0.0.xml	2025-12-20 15:27:34.191399	105	EXECUTED	9:a6272f0576727dd8cad2522335f5d99e	createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY		\N	4.33.0	\N	\N	6244380077
18.0.0-10625-IDX_ADMIN_EVENT_TIME	keycloak	META-INF/jpa-changelog-18.0.0.xml	2025-12-20 15:27:34.69742	106	EXECUTED	9:015479dbd691d9cc8669282f4828c41d	createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY		\N	4.33.0	\N	\N	6244380077
18.0.15-30992-index-consent	keycloak	META-INF/jpa-changelog-18.0.15.xml	2025-12-20 15:27:35.314453	107	EXECUTED	9:80071ede7a05604b1f4906f3bf3b00f0	createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE		\N	4.33.0	\N	\N	6244380077
19.0.0-10135	keycloak	META-INF/jpa-changelog-19.0.0.xml	2025-12-20 15:27:35.514447	108	EXECUTED	9:9518e495fdd22f78ad6425cc30630221	customChange		\N	4.33.0	\N	\N	6244380077
20.0.0-12964-supported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2025-12-20 15:27:36.019444	109	EXECUTED	9:e5f243877199fd96bcc842f27a1656ac	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.33.0	\N	\N	6244380077
20.0.0-12964-supported-dbs-edb-migration	keycloak	META-INF/jpa-changelog-20.0.0.xml	2025-12-20 15:27:36.630495	110	EXECUTED	9:a6b18a8e38062df5793edbe064f4aecd	dropIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE; createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.33.0	\N	\N	6244380077
20.0.0-12964-unsupported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2025-12-20 15:27:36.678409	111	MARK_RAN	9:1a6fcaa85e20bdeae0a9ce49b41946a5	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.33.0	\N	\N	6244380077
client-attributes-string-accomodation-fixed-pre-drop-index	keycloak	META-INF/jpa-changelog-20.0.0.xml	2025-12-20 15:27:36.820499	112	EXECUTED	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
client-attributes-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-20.0.0.xml	2025-12-20 15:27:37.011485	113	EXECUTED	9:3f332e13e90739ed0c35b0b25b7822ca	addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
client-attributes-string-accomodation-fixed-post-create-index	keycloak	META-INF/jpa-changelog-20.0.0.xml	2025-12-20 15:27:37.059423	114	MARK_RAN	9:bd2bd0fc7768cf0845ac96a8786fa735	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
21.0.2-17277	keycloak	META-INF/jpa-changelog-21.0.2.xml	2025-12-20 15:27:37.264609	115	EXECUTED	9:7ee1f7a3fb8f5588f171fb9a6ab623c0	customChange		\N	4.33.0	\N	\N	6244380077
21.1.0-19404	keycloak	META-INF/jpa-changelog-21.1.0.xml	2025-12-20 15:27:37.439398	116	EXECUTED	9:3d7e830b52f33676b9d64f7f2b2ea634	modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER		\N	4.33.0	\N	\N	6244380077
21.1.0-19404-2	keycloak	META-INF/jpa-changelog-21.1.0.xml	2025-12-20 15:27:37.49142	117	MARK_RAN	9:627d032e3ef2c06c0e1f73d2ae25c26c	addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...		\N	4.33.0	\N	\N	6244380077
22.0.0-17484-updated	keycloak	META-INF/jpa-changelog-22.0.0.xml	2025-12-20 15:27:37.7034	118	EXECUTED	9:90af0bfd30cafc17b9f4d6eccd92b8b3	customChange		\N	4.33.0	\N	\N	6244380077
23.0.0-12062	keycloak	META-INF/jpa-changelog-23.0.0.xml	2025-12-20 15:27:37.963625	120	EXECUTED	9:2168fbe728fec46ae9baf15bf80927b8	addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG		\N	4.33.0	\N	\N	6244380077
23.0.0-17258	keycloak	META-INF/jpa-changelog-23.0.0.xml	2025-12-20 15:27:38.081365	121	EXECUTED	9:36506d679a83bbfda85a27ea1864dca8	addColumn tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	6244380077
24.0.0-9758	keycloak	META-INF/jpa-changelog-24.0.0.xml	2025-12-20 15:27:39.961456	122	EXECUTED	9:502c557a5189f600f0f445a9b49ebbce	addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...		\N	4.33.0	\N	\N	6244380077
24.0.0-9758-2	keycloak	META-INF/jpa-changelog-24.0.0.xml	2025-12-20 15:27:40.163588	123	EXECUTED	9:bf0fdee10afdf597a987adbf291db7b2	customChange		\N	4.33.0	\N	\N	6244380077
24.0.0-26618-drop-index-if-present	keycloak	META-INF/jpa-changelog-24.0.0.xml	2025-12-20 15:27:40.349419	124	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
24.0.0-26618-reindex	keycloak	META-INF/jpa-changelog-24.0.0.xml	2025-12-20 15:27:40.882498	125	EXECUTED	9:08707c0f0db1cef6b352db03a60edc7f	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
24.0.0-26618-edb-migration	keycloak	META-INF/jpa-changelog-24.0.0.xml	2025-12-20 15:27:41.524531	126	EXECUTED	9:2f684b29d414cd47efe3a3599f390741	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES; createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
24.0.2-27228	keycloak	META-INF/jpa-changelog-24.0.2.xml	2025-12-20 15:27:41.723447	127	EXECUTED	9:eaee11f6b8aa25d2cc6a84fb86fc6238	customChange		\N	4.33.0	\N	\N	6244380077
24.0.2-27967-drop-index-if-present	keycloak	META-INF/jpa-changelog-24.0.2.xml	2025-12-20 15:27:41.769491	128	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
24.0.2-27967-reindex	keycloak	META-INF/jpa-changelog-24.0.2.xml	2025-12-20 15:27:41.84142	129	MARK_RAN	9:d3d977031d431db16e2c181ce49d73e9	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-tables	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:42.028494	130	EXECUTED	9:deda2df035df23388af95bbd36c17cef	addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-index-creation	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:42.54036	131	EXECUTED	9:3e96709818458ae49f3c679ae58d263a	createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-index-cleanup-uss-createdon	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:42.731431	132	EXECUTED	9:78ab4fc129ed5e8265dbcc3485fba92f	dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-index-cleanup-uss-preload	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:42.921397	133	EXECUTED	9:de5f7c1f7e10994ed8b62e621d20eaab	dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-index-cleanup-uss-by-usersess	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:43.112478	134	EXECUTED	9:6eee220d024e38e89c799417ec33667f	dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-index-cleanup-css-preload	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:43.299408	135	EXECUTED	9:5411d2fb2891d3e8d63ddb55dfa3c0c9	dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-index-2-mysql	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:43.346364	136	MARK_RAN	9:b7ef76036d3126bb83c2423bf4d449d6	createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-28265-index-2-not-mysql	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:43.851489	137	EXECUTED	9:23396cf51ab8bc1ae6f0cac7f9f6fcf7	createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	6244380077
25.0.0-org	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:44.049416	138	EXECUTED	9:5c859965c2c9b9c72136c360649af157	createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN		\N	4.33.0	\N	\N	6244380077
unique-consentuser	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:44.326495	139	EXECUTED	9:5857626a2ea8767e9a6c66bf3a2cb32f	customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...		\N	4.33.0	\N	\N	6244380077
unique-consentuser-edb-migration	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:44.470437	140	MARK_RAN	9:5857626a2ea8767e9a6c66bf3a2cb32f	customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...		\N	4.33.0	\N	\N	6244380077
unique-consentuser-mysql	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:44.541481	141	MARK_RAN	9:b79478aad5adaa1bc428e31563f55e8e	customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...		\N	4.33.0	\N	\N	6244380077
25.0.0-28861-index-creation	keycloak	META-INF/jpa-changelog-25.0.0.xml	2025-12-20 15:27:45.483572	142	EXECUTED	9:b9acb58ac958d9ada0fe12a5d4794ab1	createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET		\N	4.33.0	\N	\N	6244380077
26.0.0-org-alias	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:45.673506	143	EXECUTED	9:6ef7d63e4412b3c2d66ed179159886a4	addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG		\N	4.33.0	\N	\N	6244380077
26.0.0-org-group	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:45.932396	144	EXECUTED	9:da8e8087d80ef2ace4f89d8c5b9ca223	addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange		\N	4.33.0	\N	\N	6244380077
26.0.0-org-indexes	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:46.452413	145	EXECUTED	9:79b05dcd610a8c7f25ec05135eec0857	createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN		\N	4.33.0	\N	\N	6244380077
26.0.0-org-group-membership	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:46.623735	146	EXECUTED	9:a6ace2ce583a421d89b01ba2a28dc2d4	addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP		\N	4.33.0	\N	\N	6244380077
31296-persist-revoked-access-tokens	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:46.769351	147	EXECUTED	9:64ef94489d42a358e8304b0e245f0ed4	createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN		\N	4.33.0	\N	\N	6244380077
31725-index-persist-revoked-access-tokens	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:47.275642	148	EXECUTED	9:b994246ec2bf7c94da881e1d28782c7b	createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN		\N	4.33.0	\N	\N	6244380077
26.0.0-idps-for-login	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:48.321374	149	EXECUTED	9:51f5fffadf986983d4bd59582c6c1604	addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange		\N	4.33.0	\N	\N	6244380077
26.0.0-32583-drop-redundant-index-on-client-session	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:48.506426	150	EXECUTED	9:24972d83bf27317a055d234187bb4af9	dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	6244380077
26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:48.781391	151	EXECUTED	9:febdc0f47f2ed241c59e60f58c3ceea5	dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...		\N	4.33.0	\N	\N	6244380077
26.0.0-33201-org-redirect-url	keycloak	META-INF/jpa-changelog-26.0.0.xml	2025-12-20 15:27:48.903354	152	EXECUTED	9:4d0e22b0ac68ebe9794fa9cb752ea660	addColumn tableName=ORG		\N	4.33.0	\N	\N	6244380077
29399-jdbc-ping-default	keycloak	META-INF/jpa-changelog-26.1.0.xml	2025-12-20 15:27:49.054418	153	EXECUTED	9:007dbe99d7203fca403b89d4edfdf21e	createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING		\N	4.33.0	\N	\N	6244380077
26.1.0-34013	keycloak	META-INF/jpa-changelog-26.1.0.xml	2025-12-20 15:27:49.217391	154	EXECUTED	9:e6b686a15759aef99a6d758a5c4c6a26	addColumn tableName=ADMIN_EVENT_ENTITY		\N	4.33.0	\N	\N	6244380077
26.1.0-34380	keycloak	META-INF/jpa-changelog-26.1.0.xml	2025-12-20 15:27:49.332455	155	EXECUTED	9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01	dropTable tableName=USERNAME_LOGIN_FAILURE		\N	4.33.0	\N	\N	6244380077
26.2.0-36750	keycloak	META-INF/jpa-changelog-26.2.0.xml	2025-12-20 15:27:49.453363	156	EXECUTED	9:b49ce951c22f7eb16480ff085640a33a	createTable tableName=SERVER_CONFIG		\N	4.33.0	\N	\N	6244380077
26.2.0-26106	keycloak	META-INF/jpa-changelog-26.2.0.xml	2025-12-20 15:27:49.57237	157	EXECUTED	9:b5877d5dab7d10ff3a9d209d7beb6680	addColumn tableName=CREDENTIAL		\N	4.33.0	\N	\N	6244380077
26.2.6-39866-duplicate	keycloak	META-INF/jpa-changelog-26.2.6.xml	2025-12-20 15:27:49.761412	158	EXECUTED	9:1dc67ccee24f30331db2cba4f372e40e	customChange		\N	4.33.0	\N	\N	6244380077
26.2.6-39866-uk	keycloak	META-INF/jpa-changelog-26.2.6.xml	2025-12-20 15:27:49.885418	159	EXECUTED	9:b70b76f47210cf0a5f4ef0e219eac7cd	addUniqueConstraint constraintName=UK_MIGRATION_VERSION, tableName=MIGRATION_MODEL		\N	4.33.0	\N	\N	6244380077
26.2.6-40088-duplicate	keycloak	META-INF/jpa-changelog-26.2.6.xml	2025-12-20 15:27:50.073599	160	EXECUTED	9:cc7e02ed69ab31979afb1982f9670e8f	customChange		\N	4.33.0	\N	\N	6244380077
26.2.6-40088-uk	keycloak	META-INF/jpa-changelog-26.2.6.xml	2025-12-20 15:27:50.187368	161	EXECUTED	9:5bb848128da7bc4595cc507383325241	addUniqueConstraint constraintName=UK_MIGRATION_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	4.33.0	\N	\N	6244380077
26.3.0-groups-description	keycloak	META-INF/jpa-changelog-26.3.0.xml	2025-12-20 15:27:50.304888	162	EXECUTED	9:e1a3c05574326fb5b246b73b9a4c4d49	addColumn tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	6244380077
26.4.0-40933-saml-encryption-attributes	keycloak	META-INF/jpa-changelog-26.4.0.xml	2025-12-20 15:27:50.486377	163	EXECUTED	9:7e9eaba362ca105efdda202303a4fe49	customChange		\N	4.33.0	\N	\N	6244380077
26.4.0-51321	keycloak	META-INF/jpa-changelog-26.4.0.xml	2025-12-20 15:27:50.993399	164	EXECUTED	9:34bab2bc56f75ffd7e347c580874e306	createIndex indexName=IDX_EVENT_ENTITY_USER_ID_TYPE, tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	6244380077
40343-workflow-state-table	keycloak	META-INF/jpa-changelog-26.4.0.xml	2025-12-20 15:27:52.015423	165	EXECUTED	9:ed3ab4723ceed210e5b5e60ac4562106	createTable tableName=WORKFLOW_STATE; addPrimaryKey constraintName=PK_WORKFLOW_STATE, tableName=WORKFLOW_STATE; addUniqueConstraint constraintName=UQ_WORKFLOW_RESOURCE, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_STEP, table...		\N	4.33.0	\N	\N	6244380077
26.5.0-index-offline-css-by-client	keycloak	META-INF/jpa-changelog-26.5.0.xml	2025-12-20 15:27:52.627437	166	EXECUTED	9:383e981ce95d16e32af757b7998820f7	createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	6244380077
26.5.0-index-offline-css-by-client-storage-provider	keycloak	META-INF/jpa-changelog-26.5.0.xml	2025-12-20 15:27:53.249373	167	EXECUTED	9:f5bc200e6fa7d7e483854dee535ca425	createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	6244380077
26.5.0-idp-config-allow-null	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:52:58.076422	168	EXECUTED	9:b667fb087874303b324c1af7fae4f606	dropDefaultValue columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=STORE_TOKEN, tableName=IDENTITY_PROVIDER; dropDefaultValue columnName...		\N	4.33.0	\N	\N	8517571809
26.5.0-remove-workflow-provider-id-column	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:52:59.286452	169	EXECUTED	9:d8eeb324484d45e946d03b953e168b21	dropIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; dropColumn columnName=WORKFLOW_PROVIDER_ID, tableName=WORKFLOW_STATE		\N	4.33.0	\N	\N	8517571809
26.5.0-add-remember-me	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:52:59.576497	170	EXECUTED	9:a7273ea8b21bd2f674c9c49141999f05	addColumn tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	8517571809
26.5.0-add-sess-refresh-idx	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:53:00.616701	171	EXECUTED	9:ce49383d317ccbcd3434d1f21172b0b7	createIndex indexName=IDX_USER_SESSION_EXPIRATION_CREATED, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	8517571809
26.5.0-add-sess-create-idx	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:53:01.651421	172	EXECUTED	9:aaee09e23a4d8468fbc5c51b7b314c58	createIndex indexName=IDX_USER_SESSION_EXPIRATION_LAST_REFRESH, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	8517571809
26.5.0-drop-sess-refresh-idx	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:53:01.982043	173	EXECUTED	9:f0082210b6ccbbaf81287c27aa23753c	dropIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	8517571809
26.5.0-invitations-table-fixed	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:53:02.316583	175	EXECUTED	9:fb71495ac8fbe4671b661586e09421d9	createTable tableName=ORG_INVITATION		\N	4.33.0	\N	\N	8517571809
26.5.0-invitations-table-fixed-fk	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-01-15 22:53:04.551527	176	EXECUTED	9:9238c60ff7fd4cfe87ffba19709c0394	addForeignKeyConstraint baseTableName=ORG_INVITATION, constraintName=FK_ORG_INVITATION_ORG, referencedTableName=ORG; createIndex indexName=IDX_ORG_INVITATION_ORG_ID, tableName=ORG_INVITATION; createIndex indexName=IDX_ORG_INVITATION_EMAIL, tableNa...		\N	4.33.0	\N	\N	8517571809
26.6.0-45009-broker-link-user-id	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-01-15 22:53:05.566467	177	EXECUTED	9:05026bbbc8d2ead5afcbda2f5fdf3a2b	createIndex indexName=IDX_BROKER_LINK_USER_ID, tableName=BROKER_LINK		\N	4.33.0	\N	\N	8517571809
26.6.0-45009-broker-link-identity-provider	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-01-15 22:53:06.57151	178	EXECUTED	9:7d9a0253c9de7be754efef8bba4265bd	createIndex indexName=IDX_BROKER_LINK_IDENTITY_PROVIDER, tableName=BROKER_LINK		\N	4.33.0	\N	\N	8517571809
26.5.0-idp-config-allow-null-fixed-drop-mssql-index	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-02-03 10:36:42.606539	179	MARK_RAN	9:50c51d2c98cd1d624eb1c485c3cf1f75	dropIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	0114998088
26.5.0-idp-config-allow-null-fixed-create-mssql-index	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-02-03 10:36:42.725764	180	MARK_RAN	9:dcbbb24c151c3b0b59f12fede23cc94d	createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	0114998088
26.5.0-mysql-mariadb-default-charset-collation	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-02-03 10:36:42.804344	181	MARK_RAN	9:1b383fa60d2db0a8952b365e725f9d16	customChange		\N	4.33.0	\N	\N	0114998088
26.5.0-invitations-table-fixed2	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-02-03 10:36:42.9358	182	MARK_RAN	9:322cb11fc03181903dcd67a54f8b3cf0	createTable tableName=ORG_INVITATION; addForeignKeyConstraint baseTableName=ORG_INVITATION, constraintName=FK_ORG_INVITATION_ORG, referencedTableName=ORG; createIndex indexName=IDX_ORG_INVITATION_ORG_ID, tableName=ORG_INVITATION; createIndex index...		\N	4.33.0	\N	\N	0114998088
26.6.0-org-group-relationship	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:15.442484	183	EXECUTED	9:05685853fba030f53548ac6bf23245e3	addColumn tableName=KEYCLOAK_GROUP; addForeignKeyConstraint baseTableName=KEYCLOAK_GROUP, constraintName=FK_GROUP_ORGANIZATION, referencedTableName=ORG; createIndex indexName=IDX_GROUP_ORG_ID, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	1045464070
26.6.0-44424-index-css-user-session-and-offline	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:16.437223	184	EXECUTED	9:a704d8598df241a3fd3cb91b6ab4b2d4	createIndex indexName=IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	1045464070
26.6.0-44424-create-realm-in-client-session	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:16.717144	185	EXECUTED	9:77dbbc72d943e98cfe472ba8cc56a31c	addColumn tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	1045464070
26.6.0-44424-set-realm-in-client-session	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:17.017009	186	EXECUTED	9:3964a3148d32a55ef81126e23cdf6721	customChange		\N	4.33.0	\N	\N	1045464070
26.6.0-44424-idx-css-realm-and-clients	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:17.967217	187	EXECUTED	9:a093877fff41185ac24103be80e00968	createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	1045464070
26.6.0-add-last-modified-timestamp-user	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:18.237246	188	EXECUTED	9:8aa583d2cdd9e913dff42fecd626c560	addColumn tableName=USER_ENTITY		\N	4.33.0	\N	\N	1045464070
26.6.0-add-timestamps-group	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:18.537781	189	EXECUTED	9:4363d45dc25105a3fc5db9ff6936b0a9	addColumn tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	1045464070
26.6.0-43829-user-created-timestamp-index	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:19.60305	190	EXECUTED	9:f2531a49b8bb21a7a97966d88fd1a411	createIndex indexName=IDX_USER_CREATED_TIMESTAMP, tableName=USER_ENTITY		\N	4.33.0	\N	\N	1045464070
26.6.0-48716-create-mssql-idp-index	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-06-09 22:51:19.676901	191	MARK_RAN	9:dcbbb24c151c3b0b59f12fede23cc94d	createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	1045464070
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
1000	f	\N	\N
\.


--
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.default_client_scope (realm_id, scope_id, default_scope) FROM stdin;
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	b423bb3b-f055-4d8d-b992-c6e3985d1a64	f
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	a8758e6c-a5f9-47f2-ac52-212d29c3857f	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	ae65f578-86a8-4db5-905a-55163c5d926e	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb	f
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	a2eeef6b-9869-43e0-baa6-6ac34fc46a96	f
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	458df769-f773-4440-b046-dc0402845fb5	f
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	6a128298-4bf1-4304-9124-030764e0e225	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	7a4f455e-c88b-45d2-8abd-efdb708c45f9	t
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0b231b36-629d-4fc8-a6a4-606375734206	f
1652565b-23ef-42a5-9b2c-1287d008e1e3	c99f8b05-2099-40ed-add4-836574a0e2ca	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	2b764e27-cfc6-4404-9e5c-6b2293345acb	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	71a78d49-e449-4a9f-98bf-ff58c661938b	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	fe2c10b6-c098-4994-a437-8dc3e6436d16	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	044b7aef-c043-4bea-8fb3-2078d448192e	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	545246f3-bd1a-4963-a7d3-cc5a1e0395bd	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	3c0d3651-9664-49a6-9ebf-7362ce4c9d88	t
1652565b-23ef-42a5-9b2c-1287d008e1e3	695a97cb-59f3-41ca-98f3-093e916993b0	f
1652565b-23ef-42a5-9b2c-1287d008e1e3	608397de-37a4-4fc9-b02e-5ad83e535563	f
1652565b-23ef-42a5-9b2c-1287d008e1e3	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec	f
1652565b-23ef-42a5-9b2c-1287d008e1e3	641b45b6-8a90-43f7-bfa1-cd5fba861549	f
1652565b-23ef-42a5-9b2c-1287d008e1e3	029760a1-2155-4b2d-b4d3-b88fc5e84b11	f
1652565b-23ef-42a5-9b2c-1287d008e1e3	a829bb80-9a8b-48f6-95a7-afb8443c7eb0	t
\.


--
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.event_entity (id, client_id, details_json, error, ip_address, realm_id, session_id, event_time, type, user_id, details_json_long_value) FROM stdin;
\.


--
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_attribute (id, name, user_id, realm_id, storage_provider_id, value, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
\.


--
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent (id, client_id, user_id, realm_id, storage_provider_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent_cl_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_credential (id, salt, type, created_date, user_id, realm_id, storage_provider_id, user_label, secret_data, credential_data, priority) FROM stdin;
\.


--
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_group_membership (group_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_required_action (required_action, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_role_mapping (role_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_identity (identity_provider, realm_id, federated_user_id, federated_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_user (id, storage_provider_id, realm_id) FROM stdin;
\.


--
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_attribute (id, name, value, group_id) FROM stdin;
\.


--
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_role_mapping (role_id, group_id) FROM stdin;
\.


--
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider (internal_id, enabled, provider_alias, provider_id, store_token, authenticate_by_default, realm_id, add_token_role, trust_email, first_broker_login_flow_id, post_broker_login_flow_id, provider_display_name, link_only, organization_id, hide_on_login) FROM stdin;
\.


--
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_config (identity_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_mapper (id, name, idp_alias, idp_mapper_name, realm_id) FROM stdin;
\.


--
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.idp_mapper_config (idp_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: jgroups_ping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.jgroups_ping (address, name, cluster_name, ip, coord) FROM stdin;
\.


--
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_group (id, name, parent_group, realm_id, type, description, org_id, created_timestamp, last_modified_timestamp) FROM stdin;
\.


--
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_role (id, client_realm_constraint, client_role, description, name, realm_id, client, realm) FROM stdin;
bf02c521-c207-48fc-a51b-b2ca9dc134b7	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	${role_default-roles}	default-roles-master	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N	\N
707d598e-a543-4ba1-bb3d-e141e764aa5b	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	${role_create-realm}	create-realm	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N	\N
79218c9f-454f-40a1-b3f5-d9249faf72bd	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	${role_admin}	admin	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N	\N
1105bea3-1322-44ea-8d48-5408d1351037	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_create-client}	create-client	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
fd613257-2a10-4b46-86e6-7e812b559cfa	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_view-realm}	view-realm	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
9be355b8-d882-4914-97e6-377aa4af54de	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_view-users}	view-users	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
492ddfd5-b053-4695-a72f-906ca6b712ba	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_view-clients}	view-clients	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
e9522873-3163-4419-b801-676a6152ef55	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_view-events}	view-events	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
922f5679-a607-494c-96ca-5773945619fa	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_view-identity-providers}	view-identity-providers	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
5b97bceb-8f10-4682-9d2b-eb64b1509456	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_view-authorization}	view-authorization	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
8ab66fd6-89ba-484d-95cc-76842e24cd13	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_manage-realm}	manage-realm	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
ba414760-f917-4d6c-991c-9947ef38df61	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_manage-users}	manage-users	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
97a4e1d9-35fd-431a-87db-807edbcfd653	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_manage-clients}	manage-clients	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
64beb3da-1014-449c-83c6-1cd61b91395e	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_manage-events}	manage-events	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
3360a49e-8171-43d3-bf1e-eb2f066f63a6	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_manage-identity-providers}	manage-identity-providers	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
6e9d525f-a0c0-4f45-b6cf-d9427c3cd5d7	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_manage-authorization}	manage-authorization	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
86c5e154-f7e0-4d90-8bea-0042772254c5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_query-users}	query-users	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
89c8ee7d-b4bb-4073-8007-fd2bd9736118	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_query-clients}	query-clients	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
09a16fef-d13f-4e51-a6c0-0e30bfe6c271	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_query-realms}	query-realms	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
6bd4027f-9516-4191-926d-57eca16ac4bd	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_query-groups}	query-groups	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
5e6bce17-7a12-4230-aa9b-828f15ad453c	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_view-profile}	view-profile	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
5356de8a-d807-40ed-bf58-09445a81d829	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_manage-account}	manage-account	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
9506a523-d655-4cf3-b20a-5f99e800de1f	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_manage-account-links}	manage-account-links	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
b539b39d-700f-485f-96df-30f221364aa4	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_view-applications}	view-applications	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
708dda5d-4095-4f82-99e8-9a8daaa88264	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_view-consent}	view-consent	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
1cdadcc3-01a7-476b-a2e8-424e8b4caf8a	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_manage-consent}	manage-consent	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
e34e4b5a-2413-4330-93c6-b9dcdd5f574d	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_view-groups}	view-groups	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
3a92c9ac-a4eb-49e2-94c7-886e53064161	4d71e58e-91b0-4847-961e-7ad77d04ac4a	t	${role_delete-account}	delete-account	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	4d71e58e-91b0-4847-961e-7ad77d04ac4a	\N
fda7675b-9903-45dc-a5b7-6522ac88cc33	14f6f8b9-24a0-41f2-9e80-b093a6241b59	t	${role_impersonation}	impersonation	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	14f6f8b9-24a0-41f2-9e80-b093a6241b59	\N
e2616ae9-29df-42f5-80a3-a2c5418c5df9	f36a51c9-a2d4-4906-8c17-4b0b79122b9f	t	${role_read-token}	read-token	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f36a51c9-a2d4-4906-8c17-4b0b79122b9f	\N
e6845610-9e9a-41cd-9e12-ae1115edfdd0	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	${role_offline-access}	offline_access	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N	\N
01396822-57f4-47cb-b3da-149112ae9581	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	${role_uma_authorization}	uma_authorization	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	\N	\N
0d3dd597-b404-43bf-acd0-77a8e4341fbc	1652565b-23ef-42a5-9b2c-1287d008e1e3	f	${role_default-roles}	default-roles-calendar-app	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N	\N
e5d99de7-22d9-4cef-9929-3592a2d81732	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_create-client}	create-client	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
9b82d49a-83a1-476c-ae5e-8d35eb163fd0	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_view-realm}	view-realm	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
1d2a4df4-f3b0-450e-9de2-79fffdf6ab28	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_view-users}	view-users	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
e2ec48a9-94a3-4e11-a4a5-1d77a13e8337	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_view-clients}	view-clients	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
a54cf6b4-9bff-4a4b-b29e-fd7e7e3a7bfe	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_view-events}	view-events	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
e875f977-c2c9-4037-9239-3cbb92374b84	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_view-identity-providers}	view-identity-providers	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
c6c2c494-c4ca-4872-a26a-14cde70029b0	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_view-authorization}	view-authorization	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
02145cf3-48a1-439f-8c7b-91ae6db6dc6e	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_manage-realm}	manage-realm	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
16162279-ca4d-4e33-8a5e-ea68d25e863f	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_manage-users}	manage-users	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
ab0712dd-1de9-4bc0-9234-2b82737fa641	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_manage-clients}	manage-clients	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
d28c6e28-6699-4a44-8f87-dc32b4c4e541	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_manage-events}	manage-events	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
efda9ca4-323d-452c-bd46-1dae751b15fd	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_manage-identity-providers}	manage-identity-providers	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
3695c5db-842d-4155-ad00-a730a728597b	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_manage-authorization}	manage-authorization	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
b48a389f-641d-4fce-9456-d3601325a338	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_query-users}	query-users	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
a6a86418-9deb-4ace-9ac5-10e81b1b4ce4	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_query-clients}	query-clients	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
e7a67c07-58e1-45d4-b942-b12eb49a5ef2	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_query-realms}	query-realms	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
92a07849-7596-43d2-9136-f371dc0c6023	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_query-groups}	query-groups	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
ad846c62-b4e8-4720-8eac-e654a8ff62e9	1652565b-23ef-42a5-9b2c-1287d008e1e3	f	${role_uma_authorization}	uma_authorization	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N	\N
63e6defb-d304-4d2f-876e-fade47bbea7b	1652565b-23ef-42a5-9b2c-1287d008e1e3	f	${role_offline-access}	offline_access	1652565b-23ef-42a5-9b2c-1287d008e1e3	\N	\N
dd504cb7-ad5f-4ece-87e8-f53f6b5bb1c6	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_impersonation}	impersonation	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
9310d0c5-d54f-453b-85f9-bd4669728521	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_view-clients}	view-clients	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
6c1e0236-6ab8-4985-9531-f61268629094	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_manage-identity-providers}	manage-identity-providers	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
05de4c8d-1778-4806-ac3a-ced4cb6da030	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_realm-admin}	realm-admin	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
5caafde7-e289-410d-9b30-1a823afc1525	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_manage-clients}	manage-clients	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
40614e2d-0e38-4a63-bba4-0234eb7919f3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_manage-realm}	manage-realm	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
cd97619a-e9da-4068-bd5d-acc41f457af6	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_manage-authorization}	manage-authorization	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
40d70c77-0a6a-4dfb-9f6e-d0ef50e3d0c3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_create-client}	create-client	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
b5034743-7234-49ef-85e3-1256d1d24a09	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_view-authorization}	view-authorization	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
5afe6c9a-cd9e-4d35-91ee-f81759775e09	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_query-clients}	query-clients	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
83e236b0-2957-41d3-8a4a-8eb09ca301dc	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_query-realms}	query-realms	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
d1a9ea82-dbb6-46e7-bd14-0fa7746bbf5d	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_view-identity-providers}	view-identity-providers	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
eb6d8d7e-011e-47f0-ac3d-1427b5c22489	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_view-realm}	view-realm	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
47045c88-9194-4ffe-8c02-184cc4d47522	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_manage-users}	manage-users	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
1a9454ed-3a78-499a-863f-225c96f95133	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_query-users}	query-users	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
3382f509-f968-4e9c-94fb-f5e2d11cf4b5	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_query-groups}	query-groups	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
bc0fb1a7-6a1f-49f9-8fa2-0d9f4f1e5ff5	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_view-events}	view-events	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
5fc723c5-58b0-48c7-9e19-de74a4e7510f	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_view-users}	view-users	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
5b08f177-2581-4770-a13e-e44119044d98	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	t	${role_manage-events}	manage-events	1652565b-23ef-42a5-9b2c-1287d008e1e3	d4e53d8d-f07f-47b2-b291-1b6c423bc52f	\N
145adeeb-8bd0-4324-a81c-d398c89335c2	81e526a0-e939-4487-ae0c-69757e669b61	t	${role_read-token}	read-token	1652565b-23ef-42a5-9b2c-1287d008e1e3	81e526a0-e939-4487-ae0c-69757e669b61	\N
e1602d02-4306-40fa-960b-54906ca21c19	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_delete-account}	delete-account	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
dd1bb602-b3bc-4055-8bfe-001507d1db64	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_manage-account-links}	manage-account-links	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
96ec1fc0-e587-4d18-8f41-fd524b0979f6	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_manage-consent}	manage-consent	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
2f2c01c9-260f-47df-b0b0-fe7c6f1db20e	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_view-consent}	view-consent	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
c596da9d-0428-444c-bc6b-0b915fd5f122	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_view-profile}	view-profile	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
95a52292-ce74-4d74-9384-b4a8a00d5f52	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_view-applications}	view-applications	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
2a53daa5-8a83-4c4a-a47b-04b0a9059e3c	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_view-groups}	view-groups	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
8053125f-3173-4edb-acf9-0523668b6991	350810c9-0768-4aa7-8551-4846e646b8ab	t	${role_manage-account}	manage-account	1652565b-23ef-42a5-9b2c-1287d008e1e3	350810c9-0768-4aa7-8551-4846e646b8ab	\N
e1c7fc56-3676-4876-a635-6717928b3d62	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	t	${role_impersonation}	impersonation	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	\N
\.


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.migration_model (id, version, update_time) FROM stdin;
6gq1n	26.4.7	1766244475
khjhx	26.5.1	1768517587
v2uv9	26.5.2	1770115004
704cx	26.5.5	1772802347
l4oed	26.6.3	1781045488
\.


--
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_client_session (user_session_id, client_id, offline_flag, "timestamp", data, client_storage_provider, external_client_id, version, realm_id) FROM stdin;
5rlwpY_AKwAkWEWeZTs_xOYS	8a3c298b-765d-4ce0-8feb-d70d8587de21	0	1786406322	{"authMethod":"openid-connect","redirectUri":"http://localhost:8080/admin/master/console/","notes":{"clientId":"8a3c298b-765d-4ce0-8feb-d70d8587de21","iss":"http://localhost:8080/realms/master","startedAt":"1786406321","response_type":"code","level-of-authentication":"-1","code_challenge_method":"S256","nonce":"c46f189f-c272-4811-8aa0-638886a13876","response_mode":"query","scope":"openid","userSessionStartedAt":"1786406321","redirect_uri":"http://localhost:8080/admin/master/console/","state":"ebb6558d-a8c9-4844-bcb0-5067b33508ba","code_challenge":"-Pc6pOBkub3PoszfZlg3UA6cCoqg7hYPFuJ-L2F9YK4"}}	local	local	1	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5
HmTbd31NaZZWdmC7NDEG0qWH	9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	0	1786407597	{"authMethod":"openid-connect","redirectUri":"http://localhost/assets/silent-check-sso.html","notes":{"clientId":"9cbadcae-a924-47ec-8e35-e6bd8e2ee33e","iss":"http://localhost:8080/realms/calendar-app","startedAt":"1786406299","response_type":"code","level-of-authentication":"-1","code_challenge_method":"S256","nonce":"2c1fcd98-05de-4ddd-ab71-ce673f6910d4","response_mode":"fragment","scope":"openid","userSessionStartedAt":"1786406299","redirect_uri":"http://localhost/assets/silent-check-sso.html","state":"cffdf1f8-1398-4ee1-a022-56f98db3e7ac","code_challenge":"020NSB1Y6Aq4Vpusr1YYOABJoAVtm-zNpzKYAV5mXKI","prompt":"none","SSO_AUTH":"true"}}	local	local	7	1652565b-23ef-42a5-9b2c-1287d008e1e3
PnFUW65dNImrGpu1l2O7V0hq	9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	0	1786407728	{"authMethod":"openid-connect","redirectUri":"http://localhost/assets/silent-check-sso.html","notes":{"clientId":"9cbadcae-a924-47ec-8e35-e6bd8e2ee33e","iss":"http://localhost:8080/realms/calendar-app","startedAt":"1786406337","response_type":"code","level-of-authentication":"-1","code_challenge_method":"S256","nonce":"de81fc33-2098-4660-b128-26998c0af33e","response_mode":"fragment","scope":"openid","userSessionStartedAt":"1786406337","redirect_uri":"http://localhost/assets/silent-check-sso.html","state":"a1ec2f41-fff3-4cfb-81c2-90e9f3ae061e","code_challenge":"r-mRt7QdHTQie04gvvMP0t2J6-w0y36wMMjO34L7Twg","prompt":"none","SSO_AUTH":"true"}}	local	local	8	1652565b-23ef-42a5-9b2c-1287d008e1e3
Y9OZOYGpxNYJsZ73F4HG1Z51	8a3c298b-765d-4ce0-8feb-d70d8587de21	0	1786408265	{"authMethod":"openid-connect","redirectUri":"http://localhost:8080/admin/master/console/#/calendar-app/clients/9cbadcae-a924-47ec-8e35-e6bd8e2ee33e/settings","notes":{"clientId":"8a3c298b-765d-4ce0-8feb-d70d8587de21","iss":"http://localhost:8080/realms/master","startedAt":"1786407840","response_type":"code","level-of-authentication":"-1","code_challenge_method":"S256","nonce":"808f565b-4bac-42b3-bbea-de79e905bf8c","response_mode":"query","scope":"openid","userSessionStartedAt":"1786407840","redirect_uri":"http://localhost:8080/admin/master/console/#/calendar-app/clients/9cbadcae-a924-47ec-8e35-e6bd8e2ee33e/settings","state":"d2136775-1feb-4a92-82cd-38b3addccc38","code_challenge":"3RI2DU4WeT-lhAAs9zFmvSSQu4R8pfGwFNauUYLNM4Q","SSO_AUTH":"true"}}	local	local	3	\N
\.


--
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_user_session (user_session_id, user_id, realm_id, created_on, offline_flag, data, last_session_refresh, broker_session_id, version, remember_me) FROM stdin;
5rlwpY_AKwAkWEWeZTs_xOYS	4403891a-616c-43d6-b6d1-d43c13010991	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	1786406321	0	{"ipAddress":"10.42.0.88","authMethod":"openid-connect","rememberMe":false,"started":0,"notes":{"KC_DEVICE_NOTE":"eyJpcEFkZHJlc3MiOiIxMC40Mi4wLjg4Iiwib3MiOiJXaW5kb3dzIiwib3NWZXJzaW9uIjoiMTAiLCJicm93c2VyIjoiQ2hyb21lLzE1MS4wLjAiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9","AUTH_TIME":"1786406321","authenticators-completed":"{\\"b1307dd7-0ee9-4196-9230-4c98d5ce2f54\\":1786406321}"},"state":"LOGGED_IN"}	1786406322	\N	1	f
HmTbd31NaZZWdmC7NDEG0qWH	93b5339f-a3a3-45b8-b343-25ca1b6f9d7b	1652565b-23ef-42a5-9b2c-1287d008e1e3	1786406299	0	{"ipAddress":"10.42.0.88","authMethod":"openid-connect","rememberMe":false,"started":0,"notes":{"KC_DEVICE_NOTE":"eyJpcEFkZHJlc3MiOiIxMC40Mi4wLjg4Iiwib3MiOiJDaHJvbWUgT1MiLCJvc1ZlcnNpb24iOiIxNDU0MS4wLjAiLCJicm93c2VyIjoiQ2hyb21lLzE0Mi4wLjAiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9","AUTH_TIME":"1786406299","authenticators-completed":"{\\"0d4e0843-740a-44fe-bdc4-637ac469e00a\\":1786406298,\\"35a76044-41bb-4182-8ced-d9a6dba7f03f\\":1786406907}"},"state":"LOGGED_IN"}	1786407597	\N	7	f
PnFUW65dNImrGpu1l2O7V0hq	93b5339f-a3a3-45b8-b343-25ca1b6f9d7b	1652565b-23ef-42a5-9b2c-1287d008e1e3	1786406337	0	{"ipAddress":"10.42.0.88","authMethod":"openid-connect","rememberMe":false,"started":0,"notes":{"KC_DEVICE_NOTE":"eyJpcEFkZHJlc3MiOiIxMC40Mi4wLjg4Iiwib3MiOiJXaW5kb3dzIiwib3NWZXJzaW9uIjoiMTAiLCJicm93c2VyIjoiQ2hyb21lLzE1MS4wLjAiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9","AUTH_TIME":"1786406337","authenticators-completed":"{\\"0d4e0843-740a-44fe-bdc4-637ac469e00a\\":1786406337,\\"35a76044-41bb-4182-8ced-d9a6dba7f03f\\":1786407035}"},"state":"LOGGED_IN"}	1786407728	\N	8	f
Y9OZOYGpxNYJsZ73F4HG1Z51	4403891a-616c-43d6-b6d1-d43c13010991	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	1786407840	0	{"ipAddress":"192.168.65.3","authMethod":"openid-connect","rememberMe":false,"started":0,"notes":{"KC_DEVICE_NOTE":"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjY1LjMiLCJvcyI6Ik1hYyBPUyBYIiwib3NWZXJzaW9uIjoiMTAuMTUuNyIsImJyb3dzZXIiOiJTYWZhcmkvMjcuMCIsImRldmljZSI6Ik1hYyIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9","AUTH_TIME":"1786407840","authenticators-completed":"{\\"b1307dd7-0ee9-4196-9230-4c98d5ce2f54\\":1786407840,\\"0bffcf0d-199d-4a17-a062-89299cbd9d02\\":1786408265}"},"state":"LOGGED_IN"}	1786408265	\N	3	f
\.


--
-- Data for Name: org; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.org (id, enabled, realm_id, group_id, name, description, alias, redirect_url) FROM stdin;
\.


--
-- Data for Name: org_domain; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.org_domain (id, name, verified, org_id) FROM stdin;
\.


--
-- Data for Name: org_invitation; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.org_invitation (id, organization_id, email, first_name, last_name, created_at, expires_at, invite_link) FROM stdin;
\.


--
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.policy_config (policy_id, name, value) FROM stdin;
\.


--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
1de130e1-21b3-459e-a443-1b090813962d	audience resolve	openid-connect	oidc-audience-resolve-mapper	8ef6e188-3c3e-4adf-a84a-d34523a59afc	\N
3d020ea9-5283-4551-9856-ba4f46146ee5	role list	saml	saml-role-list-mapper	\N	a8758e6c-a5f9-47f2-ac52-212d29c3857f
d5c83457-97da-421e-9ac8-fca7ac6fc778	organization	saml	saml-organization-membership-mapper	\N	ae65f578-86a8-4db5-905a-55163c5d926e
4881ffc9-6ac8-42fd-b615-b6751e9a9e7c	full name	openid-connect	oidc-full-name-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
d976e953-e949-43fc-8462-6c6053192eac	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
43c7e239-7a72-4575-851c-c3ab4dba05b3	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
33f772e7-568e-4931-b8c7-567393dc0e5e	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
00d4463a-3221-4eb8-aaa5-4797a720f712	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
86073ac1-8fca-4e65-a295-022a27376ccb	username	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
032ec95e-b15e-4c34-87f9-23f816c1d167	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
3ba94dc2-5bfa-42b3-9336-99b356638fc8	website	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
344faedd-b756-42a9-a63e-850fbb11425a	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
bdc2c14f-f88c-4fdb-92ee-d34599709dab	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	0bf7ad84-7f83-4a14-8e98-c4baa13a9cd3
407fe9ef-e243-49d1-9890-25d256ef8285	email	openid-connect	oidc-usermodel-attribute-mapper	\N	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f
b7a4390e-45ab-4158-b166-410b34310baa	email verified	openid-connect	oidc-usermodel-property-mapper	\N	fe4d5cc4-44d4-4c35-8b7e-292970e58e8f
5e744806-25eb-4e1f-a009-9766771f2c04	address	openid-connect	oidc-address-mapper	\N	1ad2dfaf-7f37-4d9f-8529-0add5fd241eb
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	a2eeef6b-9869-43e0-baa6-6ac34fc46a96
79f58009-6290-4be0-b279-8093f4b06c5c	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	a2eeef6b-9869-43e0-baa6-6ac34fc46a96
318574c5-428f-4038-ba44-d0f442371f2f	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e
dc724b7d-2203-4389-82e2-e1c9d6950b40	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e
30074e20-f881-48e8-96d0-f2a26da1f174	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	6b0c9e24-97f8-40ed-ae68-6b5c8ee5ed2e
038e53d1-8d7d-4bc4-abec-6254e7f47e5a	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	10379fe8-c5f6-487a-9d5e-9c2e645d7f1b
7fa149d5-39da-4575-b5e2-69791660bba1	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	458df769-f773-4440-b046-dc0402845fb5
562f0e7d-83e7-4ed1-9488-73975d1d27c5	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	458df769-f773-4440-b046-dc0402845fb5
b2dc41a1-054a-4b7f-8b80-1d301ab7204d	acr loa level	openid-connect	oidc-acr-mapper	\N	6a128298-4bf1-4304-9124-030764e0e225
42674807-0b22-46ea-ac9f-4e80a9bd59ff	auth_time	openid-connect	oidc-usersessionmodel-note-mapper	\N	7a4f455e-c88b-45d2-8abd-efdb708c45f9
daee3050-4e6d-47fb-943d-3e4576d41017	sub	openid-connect	oidc-sub-mapper	\N	7a4f455e-c88b-45d2-8abd-efdb708c45f9
440c0e6c-b88f-404f-8dfb-2b3bf950ef7f	Client ID	openid-connect	oidc-usersessionmodel-note-mapper	\N	290d6728-2366-436a-ba2d-6be9e139ea3e
e9dc4d6e-d04b-4997-a663-e3766a704e93	Client Host	openid-connect	oidc-usersessionmodel-note-mapper	\N	290d6728-2366-436a-ba2d-6be9e139ea3e
85a519a5-164b-46e1-89f1-a28c6bb290a8	Client IP Address	openid-connect	oidc-usersessionmodel-note-mapper	\N	290d6728-2366-436a-ba2d-6be9e139ea3e
55184d8e-b791-4d80-8cf9-eeebd5a0d323	organization	openid-connect	oidc-organization-membership-mapper	\N	0b231b36-629d-4fc8-a6a4-606375734206
c9dfa44e-ac36-4400-85f3-aebd12e6f239	locale	openid-connect	oidc-usermodel-attribute-mapper	8a3c298b-765d-4ce0-8feb-d70d8587de21	\N
a7a1f0b7-7293-4f48-8048-2c17d1ded867	email verified	openid-connect	oidc-usermodel-property-mapper	\N	fe2c10b6-c098-4994-a437-8dc3e6436d16
4ef7e268-c2c5-438f-b5c0-df4cc020494b	email	openid-connect	oidc-usermodel-attribute-mapper	\N	fe2c10b6-c098-4994-a437-8dc3e6436d16
fa8bd57e-efee-46f5-a636-724ebe08dbe8	address	openid-connect	oidc-address-mapper	\N	608397de-37a4-4fc9-b02e-5ad83e535563
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	auth_time	openid-connect	oidc-usersessionmodel-note-mapper	\N	3c0d3651-9664-49a6-9ebf-7362ce4c9d88
15636a3e-c7be-40e5-8a42-ce1953c95448	sub	openid-connect	oidc-sub-mapper	\N	3c0d3651-9664-49a6-9ebf-7362ce4c9d88
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	Client Host	openid-connect	oidc-usersessionmodel-note-mapper	\N	c0ed0785-8ab9-44a0-91df-89c89cc1b802
d9d43213-23bd-40fb-a294-e05e35a67a88	Client ID	openid-connect	oidc-usersessionmodel-note-mapper	\N	c0ed0785-8ab9-44a0-91df-89c89cc1b802
8c719c51-0818-440a-a400-7ab7da871e59	Client IP Address	openid-connect	oidc-usersessionmodel-note-mapper	\N	c0ed0785-8ab9-44a0-91df-89c89cc1b802
3353fcfe-c232-4f68-88a4-279bd3191bf9	acr loa level	openid-connect	oidc-acr-mapper	\N	545246f3-bd1a-4963-a7d3-cc5a1e0395bd
38c45610-effa-40f6-af26-48ab762aed6c	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	ff83afd3-98b6-49d0-bf90-f4aa9b9f9714
914a8eb1-0b35-4c5c-a73e-0a3bf863b919	organization	saml	saml-organization-membership-mapper	\N	2b764e27-cfc6-4404-9e5c-6b2293345acb
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec
48b56c79-5cce-4d89-a071-0330285cd346	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	e30e56ad-03b4-4d49-91ff-7ae53fd7cfec
057b73b7-486e-4b7a-8f07-4092866c6e4b	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	641b45b6-8a90-43f7-bfa1-cd5fba861549
b5e65fdb-77d1-445c-9685-919d182a7529	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	641b45b6-8a90-43f7-bfa1-cd5fba861549
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	organization	openid-connect	oidc-organization-membership-mapper	\N	029760a1-2155-4b2d-b4d3-b88fc5e84b11
8233059e-0939-44fb-9b5f-8a53c89720a4	role list	saml	saml-role-list-mapper	\N	c99f8b05-2099-40ed-add4-836574a0e2ca
ce9d3162-89cc-449a-9ec1-4a2f66a6eb8c	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	044b7aef-c043-4bea-8fb3-2078d448192e
751e769e-2d8e-4747-b8b6-0d8e870cfba3	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	044b7aef-c043-4bea-8fb3-2078d448192e
e34e914b-4c08-45fd-af43-3cad286d1f81	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	044b7aef-c043-4bea-8fb3-2078d448192e
ba799df5-4de0-4ab4-9dab-83b0841700a4	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
191a3365-cf56-4f55-8263-d59a98b6e9bd	username	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
63024375-66ff-4098-a1ec-f77d86726651	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
c0040d01-a063-4a5c-9fb3-340979d63844	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
30241f14-1963-4742-a607-a32dd1c1fef0	website	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
c6c92f53-a26c-47bd-a8f2-635def718e08	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
a1b6412e-b94e-4720-a00b-97d045fb7791	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
da616591-7205-4a9e-9a83-2ab7b7de407e	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
9fde3182-4d4a-4b71-97e8-b32da499695b	full name	openid-connect	oidc-full-name-mapper	\N	71a78d49-e449-4a9f-98bf-ff58c661938b
08775ab5-df46-4b0c-b931-22a882952d8e	audience resolve	openid-connect	oidc-audience-resolve-mapper	7e87c8df-434a-4862-ae3e-573224e1762f	\N
37b48dd8-625c-496f-99cd-6404991e9489	locale	openid-connect	oidc-usermodel-attribute-mapper	5a35a12e-6b3e-4d21-987e-68021934e0eb	\N
5a0e5e22-22d4-481c-853e-fec06e60973d	audience-mapper	openid-connect	oidc-audience-mapper	\N	a829bb80-9a8b-48f6-95a7-afb8443c7eb0
1d2b2a60-8ba8-481d-9fe6-8068baa62cfd	user-business-id-mapper	openid-connect	jit-business-id-mapper	\N	a829bb80-9a8b-48f6-95a7-afb8443c7eb0
\.


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
3d020ea9-5283-4551-9856-ba4f46146ee5	false	single
3d020ea9-5283-4551-9856-ba4f46146ee5	Basic	attribute.nameformat
3d020ea9-5283-4551-9856-ba4f46146ee5	Role	attribute.name
00d4463a-3221-4eb8-aaa5-4797a720f712	true	introspection.token.claim
00d4463a-3221-4eb8-aaa5-4797a720f712	true	userinfo.token.claim
00d4463a-3221-4eb8-aaa5-4797a720f712	nickname	user.attribute
00d4463a-3221-4eb8-aaa5-4797a720f712	true	id.token.claim
00d4463a-3221-4eb8-aaa5-4797a720f712	true	access.token.claim
00d4463a-3221-4eb8-aaa5-4797a720f712	nickname	claim.name
00d4463a-3221-4eb8-aaa5-4797a720f712	String	jsonType.label
032ec95e-b15e-4c34-87f9-23f816c1d167	true	introspection.token.claim
032ec95e-b15e-4c34-87f9-23f816c1d167	true	userinfo.token.claim
032ec95e-b15e-4c34-87f9-23f816c1d167	profile	user.attribute
032ec95e-b15e-4c34-87f9-23f816c1d167	true	id.token.claim
032ec95e-b15e-4c34-87f9-23f816c1d167	true	access.token.claim
032ec95e-b15e-4c34-87f9-23f816c1d167	profile	claim.name
032ec95e-b15e-4c34-87f9-23f816c1d167	String	jsonType.label
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	true	introspection.token.claim
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	true	userinfo.token.claim
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	zoneinfo	user.attribute
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	true	id.token.claim
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	true	access.token.claim
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	zoneinfo	claim.name
2a978d4b-b9c0-45e9-bc13-fa17d67f3e35	String	jsonType.label
33f772e7-568e-4931-b8c7-567393dc0e5e	true	introspection.token.claim
33f772e7-568e-4931-b8c7-567393dc0e5e	true	userinfo.token.claim
33f772e7-568e-4931-b8c7-567393dc0e5e	middleName	user.attribute
33f772e7-568e-4931-b8c7-567393dc0e5e	true	id.token.claim
33f772e7-568e-4931-b8c7-567393dc0e5e	true	access.token.claim
33f772e7-568e-4931-b8c7-567393dc0e5e	middle_name	claim.name
33f772e7-568e-4931-b8c7-567393dc0e5e	String	jsonType.label
344faedd-b756-42a9-a63e-850fbb11425a	true	introspection.token.claim
344faedd-b756-42a9-a63e-850fbb11425a	true	userinfo.token.claim
344faedd-b756-42a9-a63e-850fbb11425a	locale	user.attribute
344faedd-b756-42a9-a63e-850fbb11425a	true	id.token.claim
344faedd-b756-42a9-a63e-850fbb11425a	true	access.token.claim
344faedd-b756-42a9-a63e-850fbb11425a	locale	claim.name
344faedd-b756-42a9-a63e-850fbb11425a	String	jsonType.label
3ba94dc2-5bfa-42b3-9336-99b356638fc8	true	introspection.token.claim
3ba94dc2-5bfa-42b3-9336-99b356638fc8	true	userinfo.token.claim
3ba94dc2-5bfa-42b3-9336-99b356638fc8	website	user.attribute
3ba94dc2-5bfa-42b3-9336-99b356638fc8	true	id.token.claim
3ba94dc2-5bfa-42b3-9336-99b356638fc8	true	access.token.claim
3ba94dc2-5bfa-42b3-9336-99b356638fc8	website	claim.name
3ba94dc2-5bfa-42b3-9336-99b356638fc8	String	jsonType.label
43c7e239-7a72-4575-851c-c3ab4dba05b3	true	introspection.token.claim
43c7e239-7a72-4575-851c-c3ab4dba05b3	true	userinfo.token.claim
43c7e239-7a72-4575-851c-c3ab4dba05b3	firstName	user.attribute
43c7e239-7a72-4575-851c-c3ab4dba05b3	true	id.token.claim
43c7e239-7a72-4575-851c-c3ab4dba05b3	true	access.token.claim
43c7e239-7a72-4575-851c-c3ab4dba05b3	given_name	claim.name
43c7e239-7a72-4575-851c-c3ab4dba05b3	String	jsonType.label
4881ffc9-6ac8-42fd-b615-b6751e9a9e7c	true	introspection.token.claim
4881ffc9-6ac8-42fd-b615-b6751e9a9e7c	true	userinfo.token.claim
4881ffc9-6ac8-42fd-b615-b6751e9a9e7c	true	id.token.claim
4881ffc9-6ac8-42fd-b615-b6751e9a9e7c	true	access.token.claim
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	true	introspection.token.claim
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	true	userinfo.token.claim
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	birthdate	user.attribute
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	true	id.token.claim
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	true	access.token.claim
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	birthdate	claim.name
56e7b6d4-d014-43e9-bb0a-f3fa9742c428	String	jsonType.label
86073ac1-8fca-4e65-a295-022a27376ccb	true	introspection.token.claim
86073ac1-8fca-4e65-a295-022a27376ccb	true	userinfo.token.claim
86073ac1-8fca-4e65-a295-022a27376ccb	username	user.attribute
86073ac1-8fca-4e65-a295-022a27376ccb	true	id.token.claim
86073ac1-8fca-4e65-a295-022a27376ccb	true	access.token.claim
86073ac1-8fca-4e65-a295-022a27376ccb	preferred_username	claim.name
86073ac1-8fca-4e65-a295-022a27376ccb	String	jsonType.label
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	true	introspection.token.claim
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	true	userinfo.token.claim
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	gender	user.attribute
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	true	id.token.claim
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	true	access.token.claim
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	gender	claim.name
9bd1da97-0bf8-4a8c-a027-b369d9606e4b	String	jsonType.label
bdc2c14f-f88c-4fdb-92ee-d34599709dab	true	introspection.token.claim
bdc2c14f-f88c-4fdb-92ee-d34599709dab	true	userinfo.token.claim
bdc2c14f-f88c-4fdb-92ee-d34599709dab	updatedAt	user.attribute
bdc2c14f-f88c-4fdb-92ee-d34599709dab	true	id.token.claim
bdc2c14f-f88c-4fdb-92ee-d34599709dab	true	access.token.claim
bdc2c14f-f88c-4fdb-92ee-d34599709dab	updated_at	claim.name
bdc2c14f-f88c-4fdb-92ee-d34599709dab	long	jsonType.label
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	true	introspection.token.claim
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	true	userinfo.token.claim
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	picture	user.attribute
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	true	id.token.claim
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	true	access.token.claim
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	picture	claim.name
c2e5e7cb-96b0-40b3-96e0-d95831d8a222	String	jsonType.label
d976e953-e949-43fc-8462-6c6053192eac	true	introspection.token.claim
d976e953-e949-43fc-8462-6c6053192eac	true	userinfo.token.claim
d976e953-e949-43fc-8462-6c6053192eac	lastName	user.attribute
d976e953-e949-43fc-8462-6c6053192eac	true	id.token.claim
d976e953-e949-43fc-8462-6c6053192eac	true	access.token.claim
d976e953-e949-43fc-8462-6c6053192eac	family_name	claim.name
d976e953-e949-43fc-8462-6c6053192eac	String	jsonType.label
407fe9ef-e243-49d1-9890-25d256ef8285	true	introspection.token.claim
407fe9ef-e243-49d1-9890-25d256ef8285	true	userinfo.token.claim
407fe9ef-e243-49d1-9890-25d256ef8285	email	user.attribute
407fe9ef-e243-49d1-9890-25d256ef8285	true	id.token.claim
407fe9ef-e243-49d1-9890-25d256ef8285	true	access.token.claim
407fe9ef-e243-49d1-9890-25d256ef8285	email	claim.name
407fe9ef-e243-49d1-9890-25d256ef8285	String	jsonType.label
b7a4390e-45ab-4158-b166-410b34310baa	true	introspection.token.claim
b7a4390e-45ab-4158-b166-410b34310baa	true	userinfo.token.claim
b7a4390e-45ab-4158-b166-410b34310baa	emailVerified	user.attribute
b7a4390e-45ab-4158-b166-410b34310baa	true	id.token.claim
b7a4390e-45ab-4158-b166-410b34310baa	true	access.token.claim
b7a4390e-45ab-4158-b166-410b34310baa	email_verified	claim.name
b7a4390e-45ab-4158-b166-410b34310baa	boolean	jsonType.label
5e744806-25eb-4e1f-a009-9766771f2c04	formatted	user.attribute.formatted
5e744806-25eb-4e1f-a009-9766771f2c04	country	user.attribute.country
5e744806-25eb-4e1f-a009-9766771f2c04	true	introspection.token.claim
5e744806-25eb-4e1f-a009-9766771f2c04	postal_code	user.attribute.postal_code
5e744806-25eb-4e1f-a009-9766771f2c04	true	userinfo.token.claim
5e744806-25eb-4e1f-a009-9766771f2c04	street	user.attribute.street
5e744806-25eb-4e1f-a009-9766771f2c04	true	id.token.claim
5e744806-25eb-4e1f-a009-9766771f2c04	region	user.attribute.region
5e744806-25eb-4e1f-a009-9766771f2c04	true	access.token.claim
5e744806-25eb-4e1f-a009-9766771f2c04	locality	user.attribute.locality
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	true	introspection.token.claim
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	true	userinfo.token.claim
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	phoneNumber	user.attribute
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	true	id.token.claim
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	true	access.token.claim
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	phone_number	claim.name
6ef4b4ff-31f3-4f4e-8d36-3198359ffc70	String	jsonType.label
79f58009-6290-4be0-b279-8093f4b06c5c	true	introspection.token.claim
79f58009-6290-4be0-b279-8093f4b06c5c	true	userinfo.token.claim
79f58009-6290-4be0-b279-8093f4b06c5c	phoneNumberVerified	user.attribute
79f58009-6290-4be0-b279-8093f4b06c5c	true	id.token.claim
79f58009-6290-4be0-b279-8093f4b06c5c	true	access.token.claim
79f58009-6290-4be0-b279-8093f4b06c5c	phone_number_verified	claim.name
79f58009-6290-4be0-b279-8093f4b06c5c	boolean	jsonType.label
30074e20-f881-48e8-96d0-f2a26da1f174	true	introspection.token.claim
30074e20-f881-48e8-96d0-f2a26da1f174	true	access.token.claim
318574c5-428f-4038-ba44-d0f442371f2f	true	introspection.token.claim
318574c5-428f-4038-ba44-d0f442371f2f	true	multivalued
318574c5-428f-4038-ba44-d0f442371f2f	foo	user.attribute
318574c5-428f-4038-ba44-d0f442371f2f	true	access.token.claim
318574c5-428f-4038-ba44-d0f442371f2f	realm_access.roles	claim.name
318574c5-428f-4038-ba44-d0f442371f2f	String	jsonType.label
dc724b7d-2203-4389-82e2-e1c9d6950b40	true	introspection.token.claim
dc724b7d-2203-4389-82e2-e1c9d6950b40	true	multivalued
dc724b7d-2203-4389-82e2-e1c9d6950b40	foo	user.attribute
dc724b7d-2203-4389-82e2-e1c9d6950b40	true	access.token.claim
dc724b7d-2203-4389-82e2-e1c9d6950b40	resource_access.${client_id}.roles	claim.name
dc724b7d-2203-4389-82e2-e1c9d6950b40	String	jsonType.label
038e53d1-8d7d-4bc4-abec-6254e7f47e5a	true	introspection.token.claim
038e53d1-8d7d-4bc4-abec-6254e7f47e5a	true	access.token.claim
562f0e7d-83e7-4ed1-9488-73975d1d27c5	true	introspection.token.claim
562f0e7d-83e7-4ed1-9488-73975d1d27c5	true	multivalued
562f0e7d-83e7-4ed1-9488-73975d1d27c5	foo	user.attribute
562f0e7d-83e7-4ed1-9488-73975d1d27c5	true	id.token.claim
562f0e7d-83e7-4ed1-9488-73975d1d27c5	true	access.token.claim
562f0e7d-83e7-4ed1-9488-73975d1d27c5	groups	claim.name
562f0e7d-83e7-4ed1-9488-73975d1d27c5	String	jsonType.label
7fa149d5-39da-4575-b5e2-69791660bba1	true	introspection.token.claim
7fa149d5-39da-4575-b5e2-69791660bba1	true	userinfo.token.claim
7fa149d5-39da-4575-b5e2-69791660bba1	username	user.attribute
7fa149d5-39da-4575-b5e2-69791660bba1	true	id.token.claim
7fa149d5-39da-4575-b5e2-69791660bba1	true	access.token.claim
7fa149d5-39da-4575-b5e2-69791660bba1	upn	claim.name
7fa149d5-39da-4575-b5e2-69791660bba1	String	jsonType.label
b2dc41a1-054a-4b7f-8b80-1d301ab7204d	true	introspection.token.claim
b2dc41a1-054a-4b7f-8b80-1d301ab7204d	true	id.token.claim
b2dc41a1-054a-4b7f-8b80-1d301ab7204d	true	access.token.claim
42674807-0b22-46ea-ac9f-4e80a9bd59ff	AUTH_TIME	user.session.note
42674807-0b22-46ea-ac9f-4e80a9bd59ff	true	introspection.token.claim
42674807-0b22-46ea-ac9f-4e80a9bd59ff	true	id.token.claim
42674807-0b22-46ea-ac9f-4e80a9bd59ff	true	access.token.claim
42674807-0b22-46ea-ac9f-4e80a9bd59ff	auth_time	claim.name
42674807-0b22-46ea-ac9f-4e80a9bd59ff	long	jsonType.label
daee3050-4e6d-47fb-943d-3e4576d41017	true	introspection.token.claim
daee3050-4e6d-47fb-943d-3e4576d41017	true	access.token.claim
440c0e6c-b88f-404f-8dfb-2b3bf950ef7f	client_id	user.session.note
440c0e6c-b88f-404f-8dfb-2b3bf950ef7f	true	introspection.token.claim
440c0e6c-b88f-404f-8dfb-2b3bf950ef7f	true	id.token.claim
440c0e6c-b88f-404f-8dfb-2b3bf950ef7f	true	access.token.claim
440c0e6c-b88f-404f-8dfb-2b3bf950ef7f	client_id	claim.name
440c0e6c-b88f-404f-8dfb-2b3bf950ef7f	String	jsonType.label
85a519a5-164b-46e1-89f1-a28c6bb290a8	clientAddress	user.session.note
85a519a5-164b-46e1-89f1-a28c6bb290a8	true	introspection.token.claim
85a519a5-164b-46e1-89f1-a28c6bb290a8	true	id.token.claim
85a519a5-164b-46e1-89f1-a28c6bb290a8	true	access.token.claim
85a519a5-164b-46e1-89f1-a28c6bb290a8	clientAddress	claim.name
85a519a5-164b-46e1-89f1-a28c6bb290a8	String	jsonType.label
e9dc4d6e-d04b-4997-a663-e3766a704e93	clientHost	user.session.note
e9dc4d6e-d04b-4997-a663-e3766a704e93	true	introspection.token.claim
e9dc4d6e-d04b-4997-a663-e3766a704e93	true	id.token.claim
e9dc4d6e-d04b-4997-a663-e3766a704e93	true	access.token.claim
e9dc4d6e-d04b-4997-a663-e3766a704e93	clientHost	claim.name
e9dc4d6e-d04b-4997-a663-e3766a704e93	String	jsonType.label
55184d8e-b791-4d80-8cf9-eeebd5a0d323	true	introspection.token.claim
55184d8e-b791-4d80-8cf9-eeebd5a0d323	true	multivalued
55184d8e-b791-4d80-8cf9-eeebd5a0d323	true	id.token.claim
55184d8e-b791-4d80-8cf9-eeebd5a0d323	true	access.token.claim
55184d8e-b791-4d80-8cf9-eeebd5a0d323	organization	claim.name
55184d8e-b791-4d80-8cf9-eeebd5a0d323	String	jsonType.label
c9dfa44e-ac36-4400-85f3-aebd12e6f239	true	introspection.token.claim
c9dfa44e-ac36-4400-85f3-aebd12e6f239	true	userinfo.token.claim
c9dfa44e-ac36-4400-85f3-aebd12e6f239	locale	user.attribute
c9dfa44e-ac36-4400-85f3-aebd12e6f239	true	id.token.claim
c9dfa44e-ac36-4400-85f3-aebd12e6f239	true	access.token.claim
c9dfa44e-ac36-4400-85f3-aebd12e6f239	locale	claim.name
c9dfa44e-ac36-4400-85f3-aebd12e6f239	String	jsonType.label
4ef7e268-c2c5-438f-b5c0-df4cc020494b	true	introspection.token.claim
4ef7e268-c2c5-438f-b5c0-df4cc020494b	true	userinfo.token.claim
4ef7e268-c2c5-438f-b5c0-df4cc020494b	email	user.attribute
4ef7e268-c2c5-438f-b5c0-df4cc020494b	true	id.token.claim
4ef7e268-c2c5-438f-b5c0-df4cc020494b	true	access.token.claim
4ef7e268-c2c5-438f-b5c0-df4cc020494b	email	claim.name
4ef7e268-c2c5-438f-b5c0-df4cc020494b	String	jsonType.label
a7a1f0b7-7293-4f48-8048-2c17d1ded867	true	introspection.token.claim
a7a1f0b7-7293-4f48-8048-2c17d1ded867	true	userinfo.token.claim
a7a1f0b7-7293-4f48-8048-2c17d1ded867	emailVerified	user.attribute
a7a1f0b7-7293-4f48-8048-2c17d1ded867	true	id.token.claim
a7a1f0b7-7293-4f48-8048-2c17d1ded867	true	access.token.claim
a7a1f0b7-7293-4f48-8048-2c17d1ded867	email_verified	claim.name
a7a1f0b7-7293-4f48-8048-2c17d1ded867	boolean	jsonType.label
fa8bd57e-efee-46f5-a636-724ebe08dbe8	formatted	user.attribute.formatted
fa8bd57e-efee-46f5-a636-724ebe08dbe8	country	user.attribute.country
fa8bd57e-efee-46f5-a636-724ebe08dbe8	true	introspection.token.claim
fa8bd57e-efee-46f5-a636-724ebe08dbe8	postal_code	user.attribute.postal_code
fa8bd57e-efee-46f5-a636-724ebe08dbe8	true	userinfo.token.claim
fa8bd57e-efee-46f5-a636-724ebe08dbe8	street	user.attribute.street
fa8bd57e-efee-46f5-a636-724ebe08dbe8	true	id.token.claim
fa8bd57e-efee-46f5-a636-724ebe08dbe8	region	user.attribute.region
fa8bd57e-efee-46f5-a636-724ebe08dbe8	true	access.token.claim
fa8bd57e-efee-46f5-a636-724ebe08dbe8	locality	user.attribute.locality
15636a3e-c7be-40e5-8a42-ce1953c95448	true	introspection.token.claim
15636a3e-c7be-40e5-8a42-ce1953c95448	true	access.token.claim
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	AUTH_TIME	user.session.note
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	true	introspection.token.claim
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	true	userinfo.token.claim
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	true	id.token.claim
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	true	access.token.claim
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	auth_time	claim.name
1ef51a5a-bc2b-4b0c-bca0-c7386acc600f	long	jsonType.label
8c719c51-0818-440a-a400-7ab7da871e59	clientAddress	user.session.note
8c719c51-0818-440a-a400-7ab7da871e59	true	id.token.claim
8c719c51-0818-440a-a400-7ab7da871e59	true	introspection.token.claim
8c719c51-0818-440a-a400-7ab7da871e59	true	access.token.claim
8c719c51-0818-440a-a400-7ab7da871e59	clientAddress	claim.name
8c719c51-0818-440a-a400-7ab7da871e59	String	jsonType.label
d9d43213-23bd-40fb-a294-e05e35a67a88	client_id	user.session.note
d9d43213-23bd-40fb-a294-e05e35a67a88	true	id.token.claim
d9d43213-23bd-40fb-a294-e05e35a67a88	true	introspection.token.claim
d9d43213-23bd-40fb-a294-e05e35a67a88	true	access.token.claim
d9d43213-23bd-40fb-a294-e05e35a67a88	client_id	claim.name
d9d43213-23bd-40fb-a294-e05e35a67a88	String	jsonType.label
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	clientHost	user.session.note
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	true	introspection.token.claim
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	true	userinfo.token.claim
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	true	id.token.claim
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	true	access.token.claim
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	clientHost	claim.name
eaaf693b-2c41-4016-8c9a-6fcd335d5bc8	String	jsonType.label
d9d43213-23bd-40fb-a294-e05e35a67a88	true	userinfo.token.claim
8c719c51-0818-440a-a400-7ab7da871e59	true	userinfo.token.claim
3353fcfe-c232-4f68-88a4-279bd3191bf9	true	id.token.claim
3353fcfe-c232-4f68-88a4-279bd3191bf9	true	introspection.token.claim
3353fcfe-c232-4f68-88a4-279bd3191bf9	true	access.token.claim
3353fcfe-c232-4f68-88a4-279bd3191bf9	true	userinfo.token.claim
38c45610-effa-40f6-af26-48ab762aed6c	true	introspection.token.claim
38c45610-effa-40f6-af26-48ab762aed6c	true	access.token.claim
48b56c79-5cce-4d89-a071-0330285cd346	true	introspection.token.claim
48b56c79-5cce-4d89-a071-0330285cd346	true	userinfo.token.claim
48b56c79-5cce-4d89-a071-0330285cd346	phoneNumberVerified	user.attribute
48b56c79-5cce-4d89-a071-0330285cd346	true	id.token.claim
48b56c79-5cce-4d89-a071-0330285cd346	true	access.token.claim
48b56c79-5cce-4d89-a071-0330285cd346	phone_number_verified	claim.name
48b56c79-5cce-4d89-a071-0330285cd346	boolean	jsonType.label
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	true	introspection.token.claim
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	true	userinfo.token.claim
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	phoneNumber	user.attribute
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	true	id.token.claim
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	true	access.token.claim
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	phone_number	claim.name
b6b689d7-aad3-4408-a03e-0a2dc2f8b3f2	String	jsonType.label
057b73b7-486e-4b7a-8f07-4092866c6e4b	true	introspection.token.claim
057b73b7-486e-4b7a-8f07-4092866c6e4b	true	multivalued
057b73b7-486e-4b7a-8f07-4092866c6e4b	true	userinfo.token.claim
057b73b7-486e-4b7a-8f07-4092866c6e4b	foo	user.attribute
057b73b7-486e-4b7a-8f07-4092866c6e4b	true	id.token.claim
057b73b7-486e-4b7a-8f07-4092866c6e4b	true	access.token.claim
057b73b7-486e-4b7a-8f07-4092866c6e4b	groups	claim.name
057b73b7-486e-4b7a-8f07-4092866c6e4b	String	jsonType.label
b5e65fdb-77d1-445c-9685-919d182a7529	true	introspection.token.claim
b5e65fdb-77d1-445c-9685-919d182a7529	true	userinfo.token.claim
b5e65fdb-77d1-445c-9685-919d182a7529	username	user.attribute
b5e65fdb-77d1-445c-9685-919d182a7529	true	id.token.claim
b5e65fdb-77d1-445c-9685-919d182a7529	true	access.token.claim
b5e65fdb-77d1-445c-9685-919d182a7529	upn	claim.name
b5e65fdb-77d1-445c-9685-919d182a7529	String	jsonType.label
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	true	introspection.token.claim
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	true	multivalued
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	true	userinfo.token.claim
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	true	id.token.claim
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	true	access.token.claim
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	organization	claim.name
5af59c1a-85d9-4074-ad32-f8cdbcf490fb	String	jsonType.label
8233059e-0939-44fb-9b5f-8a53c89720a4	false	single
8233059e-0939-44fb-9b5f-8a53c89720a4	Basic	attribute.nameformat
8233059e-0939-44fb-9b5f-8a53c89720a4	Role	attribute.name
751e769e-2d8e-4747-b8b6-0d8e870cfba3	foo	user.attribute
751e769e-2d8e-4747-b8b6-0d8e870cfba3	true	introspection.token.claim
751e769e-2d8e-4747-b8b6-0d8e870cfba3	true	access.token.claim
751e769e-2d8e-4747-b8b6-0d8e870cfba3	realm_access.roles	claim.name
751e769e-2d8e-4747-b8b6-0d8e870cfba3	String	jsonType.label
751e769e-2d8e-4747-b8b6-0d8e870cfba3	true	multivalued
ce9d3162-89cc-449a-9ec1-4a2f66a6eb8c	true	introspection.token.claim
ce9d3162-89cc-449a-9ec1-4a2f66a6eb8c	true	access.token.claim
e34e914b-4c08-45fd-af43-3cad286d1f81	foo	user.attribute
e34e914b-4c08-45fd-af43-3cad286d1f81	true	introspection.token.claim
e34e914b-4c08-45fd-af43-3cad286d1f81	true	access.token.claim
e34e914b-4c08-45fd-af43-3cad286d1f81	resource_access.${client_id}.roles	claim.name
e34e914b-4c08-45fd-af43-3cad286d1f81	String	jsonType.label
e34e914b-4c08-45fd-af43-3cad286d1f81	true	multivalued
191a3365-cf56-4f55-8263-d59a98b6e9bd	true	introspection.token.claim
191a3365-cf56-4f55-8263-d59a98b6e9bd	true	userinfo.token.claim
191a3365-cf56-4f55-8263-d59a98b6e9bd	username	user.attribute
191a3365-cf56-4f55-8263-d59a98b6e9bd	true	id.token.claim
191a3365-cf56-4f55-8263-d59a98b6e9bd	true	access.token.claim
191a3365-cf56-4f55-8263-d59a98b6e9bd	preferred_username	claim.name
191a3365-cf56-4f55-8263-d59a98b6e9bd	String	jsonType.label
30241f14-1963-4742-a607-a32dd1c1fef0	true	introspection.token.claim
30241f14-1963-4742-a607-a32dd1c1fef0	true	userinfo.token.claim
30241f14-1963-4742-a607-a32dd1c1fef0	website	user.attribute
30241f14-1963-4742-a607-a32dd1c1fef0	true	id.token.claim
30241f14-1963-4742-a607-a32dd1c1fef0	true	access.token.claim
30241f14-1963-4742-a607-a32dd1c1fef0	website	claim.name
30241f14-1963-4742-a607-a32dd1c1fef0	String	jsonType.label
63024375-66ff-4098-a1ec-f77d86726651	true	introspection.token.claim
63024375-66ff-4098-a1ec-f77d86726651	true	userinfo.token.claim
63024375-66ff-4098-a1ec-f77d86726651	middleName	user.attribute
63024375-66ff-4098-a1ec-f77d86726651	true	id.token.claim
63024375-66ff-4098-a1ec-f77d86726651	true	access.token.claim
63024375-66ff-4098-a1ec-f77d86726651	middle_name	claim.name
63024375-66ff-4098-a1ec-f77d86726651	String	jsonType.label
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	true	introspection.token.claim
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	true	userinfo.token.claim
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	firstName	user.attribute
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	true	id.token.claim
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	true	access.token.claim
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	given_name	claim.name
893e1b1e-b01d-4677-bc7b-7d1b78b82c27	String	jsonType.label
9fde3182-4d4a-4b71-97e8-b32da499695b	true	id.token.claim
9fde3182-4d4a-4b71-97e8-b32da499695b	true	introspection.token.claim
9fde3182-4d4a-4b71-97e8-b32da499695b	true	access.token.claim
9fde3182-4d4a-4b71-97e8-b32da499695b	true	userinfo.token.claim
a1b6412e-b94e-4720-a00b-97d045fb7791	true	introspection.token.claim
a1b6412e-b94e-4720-a00b-97d045fb7791	true	userinfo.token.claim
a1b6412e-b94e-4720-a00b-97d045fb7791	locale	user.attribute
a1b6412e-b94e-4720-a00b-97d045fb7791	true	id.token.claim
a1b6412e-b94e-4720-a00b-97d045fb7791	true	access.token.claim
a1b6412e-b94e-4720-a00b-97d045fb7791	locale	claim.name
a1b6412e-b94e-4720-a00b-97d045fb7791	String	jsonType.label
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	true	introspection.token.claim
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	true	userinfo.token.claim
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	profile	user.attribute
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	true	id.token.claim
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	true	access.token.claim
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	profile	claim.name
a32061e1-9d4e-4017-8a3e-2e7a3bdea062	String	jsonType.label
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	true	introspection.token.claim
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	true	userinfo.token.claim
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	updatedAt	user.attribute
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	true	id.token.claim
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	true	access.token.claim
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	updated_at	claim.name
a915c3b4-a3a7-4b76-bec6-c2ec64ec863d	long	jsonType.label
ba799df5-4de0-4ab4-9dab-83b0841700a4	true	introspection.token.claim
ba799df5-4de0-4ab4-9dab-83b0841700a4	true	userinfo.token.claim
ba799df5-4de0-4ab4-9dab-83b0841700a4	gender	user.attribute
ba799df5-4de0-4ab4-9dab-83b0841700a4	true	id.token.claim
ba799df5-4de0-4ab4-9dab-83b0841700a4	true	access.token.claim
ba799df5-4de0-4ab4-9dab-83b0841700a4	gender	claim.name
ba799df5-4de0-4ab4-9dab-83b0841700a4	String	jsonType.label
c0040d01-a063-4a5c-9fb3-340979d63844	true	introspection.token.claim
c0040d01-a063-4a5c-9fb3-340979d63844	true	userinfo.token.claim
c0040d01-a063-4a5c-9fb3-340979d63844	picture	user.attribute
c0040d01-a063-4a5c-9fb3-340979d63844	true	id.token.claim
c0040d01-a063-4a5c-9fb3-340979d63844	true	access.token.claim
c0040d01-a063-4a5c-9fb3-340979d63844	picture	claim.name
c0040d01-a063-4a5c-9fb3-340979d63844	String	jsonType.label
c6c92f53-a26c-47bd-a8f2-635def718e08	true	introspection.token.claim
c6c92f53-a26c-47bd-a8f2-635def718e08	true	userinfo.token.claim
c6c92f53-a26c-47bd-a8f2-635def718e08	lastName	user.attribute
c6c92f53-a26c-47bd-a8f2-635def718e08	true	id.token.claim
c6c92f53-a26c-47bd-a8f2-635def718e08	true	access.token.claim
c6c92f53-a26c-47bd-a8f2-635def718e08	family_name	claim.name
c6c92f53-a26c-47bd-a8f2-635def718e08	String	jsonType.label
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	true	introspection.token.claim
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	true	userinfo.token.claim
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	zoneinfo	user.attribute
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	true	id.token.claim
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	true	access.token.claim
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	zoneinfo	claim.name
ca7f05d2-4075-4816-9f06-2a8944e3f5c9	String	jsonType.label
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	true	introspection.token.claim
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	true	userinfo.token.claim
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	birthdate	user.attribute
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	true	id.token.claim
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	true	access.token.claim
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	birthdate	claim.name
d2ec9cf9-dbf5-45cf-b761-de59a53eac6a	String	jsonType.label
da616591-7205-4a9e-9a83-2ab7b7de407e	true	introspection.token.claim
da616591-7205-4a9e-9a83-2ab7b7de407e	true	userinfo.token.claim
da616591-7205-4a9e-9a83-2ab7b7de407e	nickname	user.attribute
da616591-7205-4a9e-9a83-2ab7b7de407e	true	id.token.claim
da616591-7205-4a9e-9a83-2ab7b7de407e	true	access.token.claim
da616591-7205-4a9e-9a83-2ab7b7de407e	nickname	claim.name
da616591-7205-4a9e-9a83-2ab7b7de407e	String	jsonType.label
37b48dd8-625c-496f-99cd-6404991e9489	true	introspection.token.claim
37b48dd8-625c-496f-99cd-6404991e9489	true	userinfo.token.claim
37b48dd8-625c-496f-99cd-6404991e9489	locale	user.attribute
37b48dd8-625c-496f-99cd-6404991e9489	true	id.token.claim
37b48dd8-625c-496f-99cd-6404991e9489	true	access.token.claim
37b48dd8-625c-496f-99cd-6404991e9489	locale	claim.name
37b48dd8-625c-496f-99cd-6404991e9489	String	jsonType.label
5a0e5e22-22d4-481c-853e-fec06e60973d	calendar-app-client	included.client.audience
5a0e5e22-22d4-481c-853e-fec06e60973d	false	id.token.claim
5a0e5e22-22d4-481c-853e-fec06e60973d	false	lightweight.claim
5a0e5e22-22d4-481c-853e-fec06e60973d	true	access.token.claim
5a0e5e22-22d4-481c-853e-fec06e60973d	true	introspection.token.claim
1d2b2a60-8ba8-481d-9fe6-8068baa62cfd	true	id.token.claim
1d2b2a60-8ba8-481d-9fe6-8068baa62cfd	false	lightweight.claim
1d2b2a60-8ba8-481d-9fe6-8068baa62cfd	true	access.token.claim
1d2b2a60-8ba8-481d-9fe6-8068baa62cfd	businessId	claim.name
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me, default_role) FROM stdin;
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	60	300	300	\N	\N	\N	t	f	0	\N	master	0	\N	f	f	f	f	NONE	1800	36000	f	f	14f6f8b9-24a0-41f2-9e80-b093a6241b59	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	224b11d3-88ea-4ee9-a5e0-051b55299d1a	90b27b86-5648-4555-bbfc-27739bee8f2b	00a49858-181c-4aae-8a27-98ca7ca3d760	636065c1-7996-4483-9229-67e1610250c7	96dc9628-e2d7-4b0a-92a3-a0b62504335d	2592000	f	900	t	f	b0140a14-44d7-4458-b36e-4c48a29ff011	0	f	0	0	bf02c521-c207-48fc-a51b-b2ca9dc134b7
1652565b-23ef-42a5-9b2c-1287d008e1e3	60	300	300	base			t	f	0	calendar-app	calendar-app	0	\N	t	f	t	f	NONE	1800	36000	f	f	02b7abeb-6f9a-49f8-ba6a-90c11fcf43c1	1800	t	fr	f	f	f	t	0	1	30	6	HmacSHA1	totp	b8fb4903-d21c-4879-8727-7637040e2ede	b8d9d69e-0fe6-4523-9af6-dfc9945291e8	b397b41d-8afa-4256-a9b7-46e40deba4cd	1a0eca8f-abe5-46d6-a604-02a41a250054	bf20bc53-f76e-463f-bbff-8bbde86391a0	2592000	f	900	t	f	0612e240-eb19-46b7-8fe4-1cbefc6e7ec4	0	f	0	0	0d3dd597-b404-43bf-acd0-77a8e4341fbc
\.


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_attribute (name, realm_id, value) FROM stdin;
_browser_header.contentSecurityPolicyReportOnly	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	
_browser_header.xContentTypeOptions	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	nosniff
_browser_header.referrerPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	no-referrer
_browser_header.xRobotsTag	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	none
_browser_header.xFrameOptions	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	SAMEORIGIN
_browser_header.contentSecurityPolicy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.strictTransportSecurity	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	max-age=31536000; includeSubDomains
bruteForceProtected	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	false
permanentLockout	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	false
maxTemporaryLockouts	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0
bruteForceStrategy	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	MULTIPLE
maxFailureWaitSeconds	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	900
minimumQuickLoginWaitSeconds	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	60
waitIncrementSeconds	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	60
quickLoginCheckMilliSeconds	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	1000
maxDeltaTimeSeconds	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	43200
failureFactor	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	30
realmReusableOtpCode	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	false
defaultSignatureAlgorithm	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	RS256
offlineSessionMaxLifespanEnabled	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	false
offlineSessionMaxLifespan	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	5184000
actionTokenGeneratedByAdminLifespan	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	43200
actionTokenGeneratedByUserLifespan	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	300
oauth2DeviceCodeLifespan	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	600
oauth2DevicePollingInterval	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	5
webAuthnPolicyRpEntityName	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	keycloak
webAuthnPolicySignatureAlgorithms	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	ES256,RS256
webAuthnPolicyRpId	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	
webAuthnPolicyAttestationConveyancePreference	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	not specified
webAuthnPolicyAuthenticatorAttachment	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	not specified
webAuthnPolicyRequireResidentKey	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	not specified
webAuthnPolicyUserVerificationRequirement	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	not specified
webAuthnPolicyCreateTimeout	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0
webAuthnPolicyAvoidSameAuthenticatorRegister	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	false
webAuthnPolicyRpEntityNamePasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	keycloak
webAuthnPolicySignatureAlgorithmsPasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	ES256,RS256
webAuthnPolicyRpIdPasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	
webAuthnPolicyAttestationConveyancePreferencePasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	not specified
webAuthnPolicyAuthenticatorAttachmentPasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	not specified
webAuthnPolicyRequireResidentKeyPasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	Yes
webAuthnPolicyUserVerificationRequirementPasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	required
webAuthnPolicyCreateTimeoutPasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	false
cibaBackchannelTokenDeliveryMode	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	poll
cibaExpiresIn	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	120
cibaInterval	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	5
cibaAuthRequestedUserHint	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	login_hint
parRequestUriLifespan	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	60
firstBrokerLoginFlowId	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	0c323123-fce0-4bdb-84cc-9beb3f4d0266
_browser_header.contentSecurityPolicyReportOnly	1652565b-23ef-42a5-9b2c-1287d008e1e3	
_browser_header.xContentTypeOptions	1652565b-23ef-42a5-9b2c-1287d008e1e3	nosniff
_browser_header.referrerPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	no-referrer
_browser_header.xRobotsTag	1652565b-23ef-42a5-9b2c-1287d008e1e3	none
_browser_header.xFrameOptions	1652565b-23ef-42a5-9b2c-1287d008e1e3	SAMEORIGIN
_browser_header.contentSecurityPolicy	1652565b-23ef-42a5-9b2c-1287d008e1e3	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.strictTransportSecurity	1652565b-23ef-42a5-9b2c-1287d008e1e3	max-age=31536000; includeSubDomains
bruteForceProtected	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
permanentLockout	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
maxTemporaryLockouts	1652565b-23ef-42a5-9b2c-1287d008e1e3	0
bruteForceStrategy	1652565b-23ef-42a5-9b2c-1287d008e1e3	MULTIPLE
maxFailureWaitSeconds	1652565b-23ef-42a5-9b2c-1287d008e1e3	900
minimumQuickLoginWaitSeconds	1652565b-23ef-42a5-9b2c-1287d008e1e3	60
waitIncrementSeconds	1652565b-23ef-42a5-9b2c-1287d008e1e3	60
quickLoginCheckMilliSeconds	1652565b-23ef-42a5-9b2c-1287d008e1e3	1000
maxDeltaTimeSeconds	1652565b-23ef-42a5-9b2c-1287d008e1e3	43200
failureFactor	1652565b-23ef-42a5-9b2c-1287d008e1e3	30
realmReusableOtpCode	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
displayName	1652565b-23ef-42a5-9b2c-1287d008e1e3	
displayNameHtml	1652565b-23ef-42a5-9b2c-1287d008e1e3	
defaultSignatureAlgorithm	1652565b-23ef-42a5-9b2c-1287d008e1e3	RS256
offlineSessionMaxLifespanEnabled	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
offlineSessionMaxLifespan	1652565b-23ef-42a5-9b2c-1287d008e1e3	5184000
clientSessionIdleTimeout	1652565b-23ef-42a5-9b2c-1287d008e1e3	0
clientSessionMaxLifespan	1652565b-23ef-42a5-9b2c-1287d008e1e3	0
clientOfflineSessionIdleTimeout	1652565b-23ef-42a5-9b2c-1287d008e1e3	0
clientOfflineSessionMaxLifespan	1652565b-23ef-42a5-9b2c-1287d008e1e3	0
actionTokenGeneratedByAdminLifespan	1652565b-23ef-42a5-9b2c-1287d008e1e3	43200
actionTokenGeneratedByUserLifespan	1652565b-23ef-42a5-9b2c-1287d008e1e3	300
oauth2DeviceCodeLifespan	1652565b-23ef-42a5-9b2c-1287d008e1e3	600
oauth2DevicePollingInterval	1652565b-23ef-42a5-9b2c-1287d008e1e3	5
organizationsEnabled	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
adminPermissionsEnabled	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
webAuthnPolicyRpEntityName	1652565b-23ef-42a5-9b2c-1287d008e1e3	keycloak
webAuthnPolicySignatureAlgorithms	1652565b-23ef-42a5-9b2c-1287d008e1e3	ES256,RS256
webAuthnPolicyRpId	1652565b-23ef-42a5-9b2c-1287d008e1e3	
webAuthnPolicyAttestationConveyancePreference	1652565b-23ef-42a5-9b2c-1287d008e1e3	not specified
webAuthnPolicyAuthenticatorAttachment	1652565b-23ef-42a5-9b2c-1287d008e1e3	not specified
webAuthnPolicyRequireResidentKey	1652565b-23ef-42a5-9b2c-1287d008e1e3	not specified
webAuthnPolicyUserVerificationRequirement	1652565b-23ef-42a5-9b2c-1287d008e1e3	not specified
webAuthnPolicyCreateTimeout	1652565b-23ef-42a5-9b2c-1287d008e1e3	0
webAuthnPolicyAvoidSameAuthenticatorRegister	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
webAuthnPolicyRpEntityNamePasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	keycloak
webAuthnPolicySignatureAlgorithmsPasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	ES256,RS256
webAuthnPolicyRpIdPasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	
webAuthnPolicyAttestationConveyancePreferencePasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	not specified
webAuthnPolicyAuthenticatorAttachmentPasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	not specified
webAuthnPolicyRequireResidentKeyPasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	Yes
webAuthnPolicyUserVerificationRequirementPasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	required
webAuthnPolicyCreateTimeoutPasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	0
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
cibaBackchannelTokenDeliveryMode	1652565b-23ef-42a5-9b2c-1287d008e1e3	poll
cibaExpiresIn	1652565b-23ef-42a5-9b2c-1287d008e1e3	120
cibaInterval	1652565b-23ef-42a5-9b2c-1287d008e1e3	5
cibaAuthRequestedUserHint	1652565b-23ef-42a5-9b2c-1287d008e1e3	login_hint
parRequestUriLifespan	1652565b-23ef-42a5-9b2c-1287d008e1e3	60
firstBrokerLoginFlowId	1652565b-23ef-42a5-9b2c-1287d008e1e3	0863d1a2-330e-438b-ae06-8ad99e238ebc
saml.signature.algorithm	1652565b-23ef-42a5-9b2c-1287d008e1e3	
frontendUrl	1652565b-23ef-42a5-9b2c-1287d008e1e3	
acr.loa.map	1652565b-23ef-42a5-9b2c-1287d008e1e3	{}
darkMode	1652565b-23ef-42a5-9b2c-1287d008e1e3	true
verifiableCredentialsEnabled	1652565b-23ef-42a5-9b2c-1287d008e1e3	false
client-policies.profiles	1652565b-23ef-42a5-9b2c-1287d008e1e3	{"profiles":[]}
client-policies.policies	1652565b-23ef-42a5-9b2c-1287d008e1e3	{"policies":[]}
\.


--
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
\.


--
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_enabled_event_types (realm_id, value) FROM stdin;
\.


--
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_events_listeners (realm_id, value) FROM stdin;
30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	jboss-logging
1652565b-23ef-42a5-9b2c-1287d008e1e3	jboss-logging
\.


--
-- Data for Name: realm_localizations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_localizations (realm_id, locale, texts) FROM stdin;
\.


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
password	password	t	t	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5
password	password	t	t	1652565b-23ef-42a5-9b2c-1287d008e1e3
\.


--
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_smtp_config (realm_id, value, name) FROM stdin;
\.


--
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_supported_locales (realm_id, value) FROM stdin;
1652565b-23ef-42a5-9b2c-1287d008e1e3	en
1652565b-23ef-42a5-9b2c-1287d008e1e3	fr
\.


--
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.redirect_uris (client_id, value) FROM stdin;
4d71e58e-91b0-4847-961e-7ad77d04ac4a	/realms/master/account/*
8ef6e188-3c3e-4adf-a84a-d34523a59afc	/realms/master/account/*
8a3c298b-765d-4ce0-8feb-d70d8587de21	/admin/master/console/*
350810c9-0768-4aa7-8551-4846e646b8ab	/realms/calendar-app/account/*
7e87c8df-434a-4862-ae3e-573224e1762f	/realms/calendar-app/account/*
717a9e61-3f16-4378-b057-814ff141a9f3	/*
5a35a12e-6b3e-4d21-987e-68021934e0eb	/admin/calendar-app/console/*
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost/*
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost:80/*
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost:4200/*
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost:8081/*
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost/*
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	*
\.


--
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_config (required_action_id, value, name) FROM stdin;
\.


--
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_provider (id, alias, name, realm_id, enabled, default_action, provider_id, priority) FROM stdin;
85270f6a-e669-4cdd-80ce-65a22418bd6f	VERIFY_EMAIL	Verify Email	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	VERIFY_EMAIL	50
a06f7e38-996f-48cb-a194-95d7a5da8ee9	UPDATE_PROFILE	Update Profile	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	UPDATE_PROFILE	40
f9bdaafe-5753-4cc9-b8b0-bc89422a21e3	CONFIGURE_TOTP	Configure OTP	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	CONFIGURE_TOTP	10
612038f8-783f-4ab5-ad4a-d4f449c8252c	UPDATE_PASSWORD	Update Password	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	UPDATE_PASSWORD	30
c3c21811-5b46-4750-8e3b-e5e784e2008f	TERMS_AND_CONDITIONS	Terms and Conditions	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	f	TERMS_AND_CONDITIONS	20
7f561a18-0031-4d7d-b93f-707fd81ee658	delete_account	Delete Account	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	f	delete_account	60
67a83041-27fe-4374-b840-213deb14aa9f	delete_credential	Delete Credential	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	delete_credential	110
7f1a00e6-e76b-4096-bef2-08420e1490c9	update_user_locale	Update User Locale	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	update_user_locale	1000
73e5fc05-e52d-441c-9772-455a28ef4cac	UPDATE_EMAIL	Update Email	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	f	f	UPDATE_EMAIL	70
23997bce-3647-4e12-8cf2-283badbc6e1d	CONFIGURE_RECOVERY_AUTHN_CODES	Recovery Authentication Codes	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	CONFIGURE_RECOVERY_AUTHN_CODES	130
4259f67f-0290-493c-91f7-28dab4109fb6	webauthn-register	Webauthn Register	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	webauthn-register	80
086ce109-a74e-415f-b49a-1fef4f6fc6c3	webauthn-register-passwordless	Webauthn Register Passwordless	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	webauthn-register-passwordless	90
dfd39bc7-a2f0-4d2a-9271-b8c01f84a13d	VERIFY_PROFILE	Verify Profile	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	VERIFY_PROFILE	100
6100534e-2fda-40ce-91f6-a5bd29d68da0	idp_link	Linking Identity Provider	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	t	f	idp_link	120
ab345e4a-ad4e-489c-87b8-2f8a44c5600e	CONFIGURE_TOTP	Configure OTP	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	CONFIGURE_TOTP	10
f3e0e445-0c41-4a19-9e0c-afacc0898971	TERMS_AND_CONDITIONS	Terms and Conditions	1652565b-23ef-42a5-9b2c-1287d008e1e3	f	f	TERMS_AND_CONDITIONS	20
3a6b3f41-1379-4cf0-ac65-0c79a61455bb	UPDATE_PASSWORD	Update Password	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	UPDATE_PASSWORD	30
d832debc-9260-429a-8eb0-71e40260f5ad	UPDATE_PROFILE	Update Profile	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	UPDATE_PROFILE	40
68f3009e-da0b-45f4-a22d-1709bd441b3c	VERIFY_EMAIL	Verify Email	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	VERIFY_EMAIL	50
9d50f271-9296-4aa3-9319-74822e62f512	delete_account	Delete Account	1652565b-23ef-42a5-9b2c-1287d008e1e3	f	f	delete_account	60
5e41403d-df5c-4e01-9219-beda064c9586	UPDATE_EMAIL	Update Email	1652565b-23ef-42a5-9b2c-1287d008e1e3	f	f	UPDATE_EMAIL	70
1d2cdde3-eda3-4aa2-8db8-91de8f3437c2	webauthn-register	Webauthn Register	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	webauthn-register	80
84e2959e-105b-4449-b941-e898a73e2fa6	webauthn-register-passwordless	Webauthn Register Passwordless	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	webauthn-register-passwordless	90
8262de4e-2e77-4ba3-baca-1fe1d119c918	VERIFY_PROFILE	Verify Profile	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	VERIFY_PROFILE	100
1a054d91-211b-4353-9c4e-1e0afa51df60	delete_credential	Delete Credential	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	delete_credential	110
a8e731e2-812b-4d67-8084-ffb7d477e88e	idp_link	Linking Identity Provider	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	idp_link	120
fc393d88-ae10-4317-8a34-67b1b1a98ade	CONFIGURE_RECOVERY_AUTHN_CODES	Recovery Authentication Codes	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	CONFIGURE_RECOVERY_AUTHN_CODES	130
db26710a-7513-4a62-9b29-f4e614ba3fab	update_user_locale	Update User Locale	1652565b-23ef-42a5-9b2c-1287d008e1e3	t	f	update_user_locale	1000
\.


--
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_attribute (id, name, value, resource_id) FROM stdin;
\.


--
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_policy (resource_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_scope (resource_id, scope_id) FROM stdin;
\.


--
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server (id, allow_rs_remote_mgmt, policy_enforce_mode, decision_strategy) FROM stdin;
\.


--
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_perm_ticket (id, owner, requester, created_timestamp, granted_timestamp, resource_id, scope_id, resource_server_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_policy (id, name, description, type, decision_strategy, logic, resource_server_id, owner) FROM stdin;
\.


--
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_resource (id, name, type, icon_uri, owner, resource_server_id, owner_managed_access, display_name) FROM stdin;
\.


--
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_scope (id, name, icon_uri, resource_server_id, display_name) FROM stdin;
\.


--
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_uris (resource_id, value) FROM stdin;
\.


--
-- Data for Name: revoked_token; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.revoked_token (id, expire) FROM stdin;
\.


--
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.role_attribute (id, role_id, name, value) FROM stdin;
\.


--
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_mapping (client_id, role_id) FROM stdin;
8ef6e188-3c3e-4adf-a84a-d34523a59afc	5356de8a-d807-40ed-bf58-09445a81d829
8ef6e188-3c3e-4adf-a84a-d34523a59afc	e34e4b5a-2413-4330-93c6-b9dcdd5f574d
7e87c8df-434a-4862-ae3e-573224e1762f	2a53daa5-8a83-4c4a-a47b-04b0a9059e3c
7e87c8df-434a-4862-ae3e-573224e1762f	8053125f-3173-4edb-acf9-0523668b6991
\.


--
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_policy (scope_id, policy_id) FROM stdin;
\.


--
-- Data for Name: server_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.server_config (server_config_key, value, version) FROM stdin;
crt_jgroups	{"prvKey":"MIIEpAIBAAKCAQEApSuz1YA4wFpiq7FkKQr2sXOHo186/eCGciIggc58v8Qs1NTc7aYvUAOAeqcGjnvLs6gORjQylcExB/qiEtl5vuKSw3xfQglQNs4/9vMr18t373JFY7oVc89AWI2OO1klq2bq3HzYAZ4aDcsEeDMjnuWT2UzT2WZxR9Wz7YZMhGkdx9rchIfVWWDpDpCQZvPKiYmPOpdnv99So0q8VYGGfjj2QnaAHCTg1GvHmLy2AH/k3jzyluClG80kKMC7mCdppcqPYiifpcsTo++BhpsKepdInw1bNMzPZlAmsh9m6kJAmfW7sL3Au5Qjcy99BKT3pjmlt7MmGxezzC+8u09LhQIDAQABAoIBAAw0ztk2HNuQQm78UNHcqs8B4fH/oWkuLNll7r+RDjSQz5xZ78rLR39TBu1phwlEGlF4V7e191AMYy57Bfu9IStrbJuwRwznCcvHEcCTB3gu4/no2LpuP9Qbap6wtWRq6ecBF9W8Dy2NbND8oiOs6dK+Fh9Ot3A/SxtbLm0dCe4WBQBH0Ck7jyaK+z0WdRHF61YW1SarykzMIdKJ9kb6CMCntaVtDL9ri/GS3sY/DTHNxoL2kwV+o4lxlpYuyxH6oj5sNBnFwoMeTWN7cDv0sc7ujT+TRZ64XWadstqcCX7ht8jaBFH+p46/I42dsJBkr5zuG5eH6kfclb2Esuebi7kCgYEA50QWwbBkFzWJ9LyqJ+yEGlQ7V9pTx2nLZk1vXFt0rBN+YbYIWDc1gacJy9XfCMxdCZzGHPoHNv6lO9RTjo5c9hyfgDiwCGuNy+b+8nS3oa9CD/qesMJSkl4jVTc4Gn6rI1iWI4v2cKUbR49rkcLxvRE9/wr6NG+w+HeV0Bi+zOkCgYEAttX39e6YnarKPZbhoSRfUsGoltXwuLZBPeXkABWE+NN+WNAaeVJ6niMLuo5LqXwhCuuRIbJhT47ibOGI5jjIfz2cnxRw+jw31eiVFAmUjx9G/kFFd3QoENFo7nt6PFD97PrfYWIUtL7/GZ0A1ydCJAumD6Q5rJV8ZdQmCg9puD0CgYEArXi2dS0htwMS60BFhlL0OGesZ9a99xvVVXSKLsXvO1AYAaUwlzM6cHlicMKJXSkmNJqjRIMLvGXAfaNj1c/VzUplHiHncTl0EFnCLQ393EsBC8lbFY19sIrqh/Y2oDEZoBbH7/wBrDc8wi3Da3/GIqL3VQLf8UtCfO3+syyMmlkCgYAbF4OBhpRIsJj9HVFbnlcdnSKNDzB3PlJWiK0LMiUc9cHACT4TAhy3N/wx7YnamFERHCzKMHNo5YQ5nAW8D2fuKsP9cnr3KVsgsDD+4hiISJsta6COfcC+FTmWNOe87kdiCR52gKEO00pbkj8gommTi8JUiQIex5vCPvhP/06sBQKBgQDPFQOyj+asoPIgXEMlJhZrOMUSTRgifOdtPS+UgHCDCEy/ugcCWk8nSFIyqTmBQdbW7v5mp69gTMPXy9dJ53wV6xkoCakzFhx7CrUu2i1t+L7D4aH0E97ejJ6sqI/ayfF975iGk3FmpasJ65er/Fb+ru2T6BzPUomyJEuc1hHHuA==","pubKey":"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApSuz1YA4wFpiq7FkKQr2sXOHo186/eCGciIggc58v8Qs1NTc7aYvUAOAeqcGjnvLs6gORjQylcExB/qiEtl5vuKSw3xfQglQNs4/9vMr18t373JFY7oVc89AWI2OO1klq2bq3HzYAZ4aDcsEeDMjnuWT2UzT2WZxR9Wz7YZMhGkdx9rchIfVWWDpDpCQZvPKiYmPOpdnv99So0q8VYGGfjj2QnaAHCTg1GvHmLy2AH/k3jzyluClG80kKMC7mCdppcqPYiifpcsTo++BhpsKepdInw1bNMzPZlAmsh9m6kJAmfW7sL3Au5Qjcy99BKT3pjmlt7MmGxezzC+8u09LhQIDAQAB","crt":"MIICnTCCAYUCBgGfaopIdDANBgkqhkiG9w0BAQsFADASMRAwDgYDVQQDDAdqZ3JvdXBzMB4XDTI2MDcxNjEwNDYxNVoXDTI2MDkxNDEwNDc1NFowEjEQMA4GA1UEAwwHamdyb3VwczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKUrs9WAOMBaYquxZCkK9rFzh6NfOv3ghnIiIIHOfL/ELNTU3O2mL1ADgHqnBo57y7OoDkY0MpXBMQf6ohLZeb7iksN8X0IJUDbOP/bzK9fLd+9yRWO6FXPPQFiNjjtZJatm6tx82AGeGg3LBHgzI57lk9lM09lmcUfVs+2GTIRpHcfa3ISH1Vlg6Q6QkGbzyomJjzqXZ7/fUqNKvFWBhn449kJ2gBwk4NRrx5i8tgB/5N488pbgpRvNJCjAu5gnaaXKj2Ion6XLE6PvgYabCnqXSJ8NWzTMz2ZQJrIfZupCQJn1u7C9wLuUI3MvfQSk96Y5pbezJhsXs8wvvLtPS4UCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEATiin2dBvF8F2NKR4yDyTfIhbKA49IZSoF/MLnlGmR7L4Gy5Tvg4Hf1ciHGKF37yGQ4Wykaew4xyRUOH5PHHEKrZdhmW1O6UWt4x/VU/e6YGX+pLWu6Ujc4wB4gEfhU3AJ7Ro1tZ0PUoiIAPXBcwxhvurg7NivHcvX0drNxnJ09Ojw2MU/H0RC9kXOkz97hEyoxBjzDnLqAKPbhMolvZp4C1VccUmq4cKoZMz1nUBpLbiWFx3kqXuTfhe5MnVWLw4z4Z9oJcwYPs2tQCE/4PFx1NBEqHT3WX9tR3IIkiYsLj9dnoJdwubDj77yrScGiEzEjXmtiRa87ShErNDTByIsA==","alias":"908222e6-6646-49a0-be41-110d0c35a42c","generatedMillis":1784198875342}	3
JGROUPS_ADDRESS_SEQUENCE	49	49
\.


--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_attribute (name, value, user_id, id, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
is_temporary_admin	true	4403891a-616c-43d6-b6d1-d43c13010991	a7a62c80-c5a8-4342-b9c6-e69c94461816	\N	\N	\N
locale	fr	93b5339f-a3a3-45b8-b343-25ca1b6f9d7b	fd124cc3-4df5-4edc-8d27-95056a44e313	\N	\N	\N
businessId	a5f79638-abfc-4ffc-bffc-c9f1d8878e56	93b5339f-a3a3-45b8-b343-25ca1b6f9d7b	0310203d-6e65-45a3-9eb9-e96cde5755a7	\N	\N	\N
locale	fr	2e7ebdbe-6a8a-488d-8495-1bee73197811	e3249ba7-6e0a-48a9-93c5-44f5209b8c84	\N	\N	\N
businessId	9a28c34c-d6dd-406b-873b-e18ca6e35b64	2e7ebdbe-6a8a-488d-8495-1bee73197811	ac3ddd9a-fd8e-44ea-b2ee-a831781f3fc9	\N	\N	\N
locale	fr	b17cc54a-817c-4cfc-b8d6-3aa4d6c32dc2	13b32fdd-b376-4a3c-a2e9-3010c3aa390a	\N	\N	\N
businessId	74a5ab16-b4bc-4257-8842-bb3c664a4df4	b17cc54a-817c-4cfc-b8d6-3aa4d6c32dc2	0348d6cb-57d5-409c-86aa-74cd4ed280c2	\N	\N	\N
\.


--
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent (id, client_id, user_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent_client_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_entity (id, email, email_constraint, email_verified, enabled, federation_link, first_name, last_name, realm_id, username, created_timestamp, service_account_client_link, not_before, last_modified_timestamp) FROM stdin;
938386eb-79ac-4a28-8ebb-a50f44a52e40	\N	ee858d4e-e03e-4fa3-abc8-4c3086233456	f	t	\N	\N	\N	1652565b-23ef-42a5-9b2c-1287d008e1e3	service-account-calendar-users-api-client	1765912069244	717a9e61-3f16-4378-b057-814ff141a9f3	0	\N
4403891a-616c-43d6-b6d1-d43c13010991	theobanette@icloud.com	theobanette@icloud.com	f	t	\N	Théo	Banette	30e57dba-b9d9-4e06-b8e3-8fdebecf4dd5	admin	1766244508456	\N	0	\N
93b5339f-a3a3-45b8-b343-25ca1b6f9d7b	theobanette@icloud.com	theobanette@icloud.com	f	t	\N	Théo	Banette	1652565b-23ef-42a5-9b2c-1287d008e1e3	darth	1784241661825	\N	0	1784241661825
2e7ebdbe-6a8a-488d-8495-1bee73197811	test@test.com	test@test.com	f	t	\N	Madeline	Heyraud	1652565b-23ef-42a5-9b2c-1287d008e1e3	madie	1784241762866	\N	0	1784241762866
b17cc54a-817c-4cfc-b8d6-3aa4d6c32dc2	test@test.fr	test@test.fr	f	t	\N	Manon	Banette	1652565b-23ef-42a5-9b2c-1287d008e1e3	manon	1784243813676	\N	0	1784243813676
\.


--
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_config (user_federation_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper (id, name, federation_provider_id, federation_mapper_type, realm_id) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper_config (user_federation_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_provider (id, changed_sync_period, display_name, full_sync_period, last_sync, priority, provider_name, realm_id) FROM stdin;
\.


--
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_group_membership (group_id, user_id, membership_type) FROM stdin;
\.


--
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_required_action (user_id, required_action) FROM stdin;
\.


--
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_role_mapping (role_id, user_id) FROM stdin;
0d3dd597-b404-43bf-acd0-77a8e4341fbc	938386eb-79ac-4a28-8ebb-a50f44a52e40
1a9454ed-3a78-499a-863f-225c96f95133	938386eb-79ac-4a28-8ebb-a50f44a52e40
5fc723c5-58b0-48c7-9e19-de74a4e7510f	938386eb-79ac-4a28-8ebb-a50f44a52e40
bf02c521-c207-48fc-a51b-b2ca9dc134b7	4403891a-616c-43d6-b6d1-d43c13010991
79218c9f-454f-40a1-b3f5-d9249faf72bd	4403891a-616c-43d6-b6d1-d43c13010991
0d3dd597-b404-43bf-acd0-77a8e4341fbc	93b5339f-a3a3-45b8-b343-25ca1b6f9d7b
0d3dd597-b404-43bf-acd0-77a8e4341fbc	2e7ebdbe-6a8a-488d-8495-1bee73197811
0d3dd597-b404-43bf-acd0-77a8e4341fbc	b17cc54a-817c-4cfc-b8d6-3aa4d6c32dc2
\.


--
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.web_origins (client_id, value) FROM stdin;
8a3c298b-765d-4ce0-8feb-d70d8587de21	+
717a9e61-3f16-4378-b057-814ff141a9f3	/*
5a35a12e-6b3e-4d21-987e-68021934e0eb	+
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	+
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	*
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost:80
9cbadcae-a924-47ec-8e35-e6bd8e2ee33e	http://localhost:4200
\.


--
-- Data for Name: workflow_state; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.workflow_state (execution_id, resource_id, workflow_id, resource_type, scheduled_step_id, scheduled_step_timestamp) FROM stdin;
\.


--
-- Name: org_domain ORG_DOMAIN_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org_domain
    ADD CONSTRAINT "ORG_DOMAIN_pkey" PRIMARY KEY (id, name);


--
-- Name: org ORG_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT "ORG_pkey" PRIMARY KEY (id);


--
-- Name: server_config SERVER_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.server_config
    ADD CONSTRAINT "SERVER_CONFIG_pkey" PRIMARY KEY (server_config_key);


--
-- Name: keycloak_role UK_J3RWUVD56ONTGSUHOGM184WW2-2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2" UNIQUE (name, client_realm_constraint);


--
-- Name: client_auth_flow_bindings c_cli_flow_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_auth_flow_bindings
    ADD CONSTRAINT c_cli_flow_bind PRIMARY KEY (client_id, binding_name);


--
-- Name: client_scope_client c_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT c_cli_scope_bind PRIMARY KEY (client_id, scope_id);


--
-- Name: client_initial_access cnstr_client_init_acc_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT cnstr_client_init_acc_pk PRIMARY KEY (id);


--
-- Name: realm_default_groups con_group_id_def_groups; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT con_group_id_def_groups UNIQUE (group_id);


--
-- Name: broker_link constr_broker_link_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.broker_link
    ADD CONSTRAINT constr_broker_link_pk PRIMARY KEY (identity_provider, user_id);


--
-- Name: component_config constr_component_config_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT constr_component_config_pk PRIMARY KEY (id);


--
-- Name: component constr_component_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT constr_component_pk PRIMARY KEY (id);


--
-- Name: fed_user_required_action constr_fed_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_required_action
    ADD CONSTRAINT constr_fed_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: fed_user_attribute constr_fed_user_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_attribute
    ADD CONSTRAINT constr_fed_user_attr_pk PRIMARY KEY (id);


--
-- Name: fed_user_consent constr_fed_user_consent_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_consent
    ADD CONSTRAINT constr_fed_user_consent_pk PRIMARY KEY (id);


--
-- Name: fed_user_credential constr_fed_user_cred_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_credential
    ADD CONSTRAINT constr_fed_user_cred_pk PRIMARY KEY (id);


--
-- Name: fed_user_group_membership constr_fed_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_group_membership
    ADD CONSTRAINT constr_fed_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: fed_user_role_mapping constr_fed_user_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_role_mapping
    ADD CONSTRAINT constr_fed_user_role PRIMARY KEY (role_id, user_id);


--
-- Name: federated_user constr_federated_user; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_user
    ADD CONSTRAINT constr_federated_user PRIMARY KEY (id);


--
-- Name: realm_default_groups constr_realm_default_groups; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT constr_realm_default_groups PRIMARY KEY (realm_id, group_id);


--
-- Name: realm_enabled_event_types constr_realm_enabl_event_types; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT constr_realm_enabl_event_types PRIMARY KEY (realm_id, value);


--
-- Name: realm_events_listeners constr_realm_events_listeners; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT constr_realm_events_listeners PRIMARY KEY (realm_id, value);


--
-- Name: realm_supported_locales constr_realm_supported_locales; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT constr_realm_supported_locales PRIMARY KEY (realm_id, value);


--
-- Name: identity_provider constraint_2b; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT constraint_2b PRIMARY KEY (internal_id);


--
-- Name: client_attributes constraint_3c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT constraint_3c PRIMARY KEY (client_id, name);


--
-- Name: event_entity constraint_4; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.event_entity
    ADD CONSTRAINT constraint_4 PRIMARY KEY (id);


--
-- Name: federated_identity constraint_40; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT constraint_40 PRIMARY KEY (identity_provider, user_id);


--
-- Name: realm constraint_4a; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT constraint_4a PRIMARY KEY (id);


--
-- Name: user_federation_provider constraint_5c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT constraint_5c PRIMARY KEY (id);


--
-- Name: client constraint_7; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT constraint_7 PRIMARY KEY (id);


--
-- Name: scope_mapping constraint_81; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT constraint_81 PRIMARY KEY (client_id, role_id);


--
-- Name: client_node_registrations constraint_84; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT constraint_84 PRIMARY KEY (client_id, name);


--
-- Name: realm_attribute constraint_9; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT constraint_9 PRIMARY KEY (name, realm_id);


--
-- Name: realm_required_credential constraint_92; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT constraint_92 PRIMARY KEY (realm_id, type);


--
-- Name: keycloak_role constraint_a; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT constraint_a PRIMARY KEY (id);


--
-- Name: admin_event_entity constraint_admin_event_entity; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.admin_event_entity
    ADD CONSTRAINT constraint_admin_event_entity PRIMARY KEY (id);


--
-- Name: authenticator_config_entry constraint_auth_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config_entry
    ADD CONSTRAINT constraint_auth_cfg_pk PRIMARY KEY (authenticator_id, name);


--
-- Name: authentication_execution constraint_auth_exec_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT constraint_auth_exec_pk PRIMARY KEY (id);


--
-- Name: authentication_flow constraint_auth_flow_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT constraint_auth_flow_pk PRIMARY KEY (id);


--
-- Name: authenticator_config constraint_auth_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT constraint_auth_pk PRIMARY KEY (id);


--
-- Name: user_role_mapping constraint_c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT constraint_c PRIMARY KEY (role_id, user_id);


--
-- Name: composite_role constraint_composite_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT constraint_composite_role PRIMARY KEY (composite, child_role);


--
-- Name: identity_provider_config constraint_d; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT constraint_d PRIMARY KEY (identity_provider_id, name);


--
-- Name: policy_config constraint_dpc; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT constraint_dpc PRIMARY KEY (policy_id, name);


--
-- Name: realm_smtp_config constraint_e; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT constraint_e PRIMARY KEY (realm_id, name);


--
-- Name: credential constraint_f; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT constraint_f PRIMARY KEY (id);


--
-- Name: user_federation_config constraint_f9; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT constraint_f9 PRIMARY KEY (user_federation_provider_id, name);


--
-- Name: resource_server_perm_ticket constraint_fapmt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT constraint_fapmt PRIMARY KEY (id);


--
-- Name: resource_server_resource constraint_farsr; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT constraint_farsr PRIMARY KEY (id);


--
-- Name: resource_server_policy constraint_farsrp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT constraint_farsrp PRIMARY KEY (id);


--
-- Name: associated_policy constraint_farsrpap; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT constraint_farsrpap PRIMARY KEY (policy_id, associated_policy_id);


--
-- Name: resource_policy constraint_farsrpp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT constraint_farsrpp PRIMARY KEY (resource_id, policy_id);


--
-- Name: resource_server_scope constraint_farsrs; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT constraint_farsrs PRIMARY KEY (id);


--
-- Name: resource_scope constraint_farsrsp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT constraint_farsrsp PRIMARY KEY (resource_id, scope_id);


--
-- Name: scope_policy constraint_farsrsps; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT constraint_farsrsps PRIMARY KEY (scope_id, policy_id);


--
-- Name: user_entity constraint_fb; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT constraint_fb PRIMARY KEY (id);


--
-- Name: user_federation_mapper_config constraint_fedmapper_cfg_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT constraint_fedmapper_cfg_pm PRIMARY KEY (user_federation_mapper_id, name);


--
-- Name: user_federation_mapper constraint_fedmapperpm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT constraint_fedmapperpm PRIMARY KEY (id);


--
-- Name: fed_user_consent_cl_scope constraint_fgrntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_consent_cl_scope
    ADD CONSTRAINT constraint_fgrntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent_client_scope constraint_grntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT constraint_grntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent constraint_grntcsnt_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT constraint_grntcsnt_pm PRIMARY KEY (id);


--
-- Name: keycloak_group constraint_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT constraint_group PRIMARY KEY (id);


--
-- Name: group_attribute constraint_group_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT constraint_group_attribute_pk PRIMARY KEY (id);


--
-- Name: group_role_mapping constraint_group_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT constraint_group_role PRIMARY KEY (role_id, group_id);


--
-- Name: identity_provider_mapper constraint_idpm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT constraint_idpm PRIMARY KEY (id);


--
-- Name: idp_mapper_config constraint_idpmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT constraint_idpmconfig PRIMARY KEY (idp_mapper_id, name);


--
-- Name: jgroups_ping constraint_jgroups_ping; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.jgroups_ping
    ADD CONSTRAINT constraint_jgroups_ping PRIMARY KEY (address);


--
-- Name: migration_model constraint_migmod; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT constraint_migmod PRIMARY KEY (id);


--
-- Name: offline_client_session constraint_offl_cl_ses_pk3; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.offline_client_session
    ADD CONSTRAINT constraint_offl_cl_ses_pk3 PRIMARY KEY (user_session_id, client_id, client_storage_provider, external_client_id, offline_flag);


--
-- Name: offline_user_session constraint_offl_us_ses_pk2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.offline_user_session
    ADD CONSTRAINT constraint_offl_us_ses_pk2 PRIMARY KEY (user_session_id, offline_flag);


--
-- Name: org_invitation constraint_org_invitation; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org_invitation
    ADD CONSTRAINT constraint_org_invitation PRIMARY KEY (id);


--
-- Name: protocol_mapper constraint_pcm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT constraint_pcm PRIMARY KEY (id);


--
-- Name: protocol_mapper_config constraint_pmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT constraint_pmconfig PRIMARY KEY (protocol_mapper_id, name);


--
-- Name: redirect_uris constraint_redirect_uris; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT constraint_redirect_uris PRIMARY KEY (client_id, value);


--
-- Name: required_action_config constraint_req_act_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_config
    ADD CONSTRAINT constraint_req_act_cfg_pk PRIMARY KEY (required_action_id, name);


--
-- Name: required_action_provider constraint_req_act_prv_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT constraint_req_act_prv_pk PRIMARY KEY (id);


--
-- Name: user_required_action constraint_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT constraint_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: resource_uris constraint_resour_uris_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT constraint_resour_uris_pk PRIMARY KEY (resource_id, value);


--
-- Name: role_attribute constraint_role_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT constraint_role_attribute_pk PRIMARY KEY (id);


--
-- Name: revoked_token constraint_rt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.revoked_token
    ADD CONSTRAINT constraint_rt PRIMARY KEY (id);


--
-- Name: user_attribute constraint_user_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT constraint_user_attribute_pk PRIMARY KEY (id);


--
-- Name: user_group_membership constraint_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT constraint_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: web_origins constraint_web_origins; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT constraint_web_origins PRIMARY KEY (client_id, value);


--
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- Name: client_scope_attributes pk_cl_tmpl_attr; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT pk_cl_tmpl_attr PRIMARY KEY (scope_id, name);


--
-- Name: client_scope pk_cli_template; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT pk_cli_template PRIMARY KEY (id);


--
-- Name: resource_server pk_resource_server; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server
    ADD CONSTRAINT pk_resource_server PRIMARY KEY (id);


--
-- Name: client_scope_role_mapping pk_template_scope; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT pk_template_scope PRIMARY KEY (scope_id, role_id);


--
-- Name: workflow_state pk_workflow_state; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.workflow_state
    ADD CONSTRAINT pk_workflow_state PRIMARY KEY (execution_id);


--
-- Name: default_client_scope r_def_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT r_def_cli_scope_bind PRIMARY KEY (realm_id, scope_id);


--
-- Name: realm_localizations realm_localizations_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_localizations
    ADD CONSTRAINT realm_localizations_pkey PRIMARY KEY (realm_id, locale);


--
-- Name: resource_attribute res_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT res_attr_pk PRIMARY KEY (id);


--
-- Name: keycloak_group sibling_names; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT sibling_names UNIQUE (realm_id, parent_group, name);


--
-- Name: identity_provider uk_2daelwnibji49avxsrtuf6xj33; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33 UNIQUE (provider_alias, realm_id);


--
-- Name: client uk_b71cjlbenv945rb6gcon438at; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT uk_b71cjlbenv945rb6gcon438at UNIQUE (realm_id, client_id);


--
-- Name: client_scope uk_cli_scope; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT uk_cli_scope UNIQUE (realm_id, name);


--
-- Name: user_entity uk_dykn684sl8up1crfei6eckhd7; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_dykn684sl8up1crfei6eckhd7 UNIQUE (realm_id, email_constraint);


--
-- Name: user_consent uk_external_consent; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_external_consent UNIQUE (client_storage_provider, external_client_id, user_id);


--
-- Name: resource_server_resource uk_frsr6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6 UNIQUE (name, owner, resource_server_id);


--
-- Name: resource_server_perm_ticket uk_frsr6t700s9v50bu18ws5pmt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt UNIQUE (owner, requester, resource_server_id, resource_id, scope_id);


--
-- Name: resource_server_policy uk_frsrpt700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: resource_server_scope uk_frsrst700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT uk_frsrst700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: user_consent uk_local_consent; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_local_consent UNIQUE (client_id, user_id);


--
-- Name: migration_model uk_migration_update_time; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT uk_migration_update_time UNIQUE (update_time);


--
-- Name: migration_model uk_migration_version; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT uk_migration_version UNIQUE (version);


--
-- Name: org uk_org_alias; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_alias UNIQUE (realm_id, alias);


--
-- Name: org uk_org_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_group UNIQUE (group_id);


--
-- Name: org_invitation uk_org_invitation_email; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org_invitation
    ADD CONSTRAINT uk_org_invitation_email UNIQUE (organization_id, email);


--
-- Name: org uk_org_name; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_name UNIQUE (realm_id, name);


--
-- Name: realm uk_orvsdmla56612eaefiq6wl5oi; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi UNIQUE (name);


--
-- Name: user_entity uk_ru8tt6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6 UNIQUE (realm_id, username);


--
-- Name: workflow_state uq_workflow_resource; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.workflow_state
    ADD CONSTRAINT uq_workflow_resource UNIQUE (workflow_id, resource_id);


--
-- Name: fed_user_attr_long_values; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX fed_user_attr_long_values ON public.fed_user_attribute USING btree (long_value_hash, name);


--
-- Name: fed_user_attr_long_values_lower_case; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX fed_user_attr_long_values_lower_case ON public.fed_user_attribute USING btree (long_value_hash_lower_case, name);


--
-- Name: idx_admin_event_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_admin_event_time ON public.admin_event_entity USING btree (realm_id, admin_event_time);


--
-- Name: idx_assoc_pol_assoc_pol_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_assoc_pol_assoc_pol_id ON public.associated_policy USING btree (associated_policy_id);


--
-- Name: idx_auth_config_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_config_realm ON public.authenticator_config USING btree (realm_id);


--
-- Name: idx_auth_exec_flow; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_exec_flow ON public.authentication_execution USING btree (flow_id);


--
-- Name: idx_auth_exec_realm_flow; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_exec_realm_flow ON public.authentication_execution USING btree (realm_id, flow_id);


--
-- Name: idx_auth_flow_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_flow_realm ON public.authentication_flow USING btree (realm_id);


--
-- Name: idx_broker_link_identity_provider; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_broker_link_identity_provider ON public.broker_link USING btree (realm_id, identity_provider, broker_user_id);


--
-- Name: idx_broker_link_user_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_broker_link_user_id ON public.broker_link USING btree (user_id);


--
-- Name: idx_cl_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_cl_clscope ON public.client_scope_client USING btree (scope_id);


--
-- Name: idx_client_att_by_name_value; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_att_by_name_value ON public.client_attributes USING btree (name, substr(value, 1, 255));


--
-- Name: idx_client_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_id ON public.client USING btree (client_id);


--
-- Name: idx_client_init_acc_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_init_acc_realm ON public.client_initial_access USING btree (realm_id);


--
-- Name: idx_clscope_attrs; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_attrs ON public.client_scope_attributes USING btree (scope_id);


--
-- Name: idx_clscope_cl; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_cl ON public.client_scope_client USING btree (client_id);


--
-- Name: idx_clscope_protmap; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_protmap ON public.protocol_mapper USING btree (client_scope_id);


--
-- Name: idx_clscope_role; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_role ON public.client_scope_role_mapping USING btree (scope_id);


--
-- Name: idx_compo_config_compo; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_compo_config_compo ON public.component_config USING btree (component_id);


--
-- Name: idx_component_provider_type; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_component_provider_type ON public.component USING btree (provider_type);


--
-- Name: idx_component_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_component_realm ON public.component USING btree (realm_id);


--
-- Name: idx_composite; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_composite ON public.composite_role USING btree (composite);


--
-- Name: idx_composite_child; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_composite_child ON public.composite_role USING btree (child_role);


--
-- Name: idx_defcls_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_defcls_realm ON public.default_client_scope USING btree (realm_id);


--
-- Name: idx_defcls_scope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_defcls_scope ON public.default_client_scope USING btree (scope_id);


--
-- Name: idx_event_entity_user_id_type; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_event_entity_user_id_type ON public.event_entity USING btree (user_id, type, event_time);


--
-- Name: idx_event_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_event_time ON public.event_entity USING btree (realm_id, event_time);


--
-- Name: idx_fedidentity_feduser; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fedidentity_feduser ON public.federated_identity USING btree (federated_user_id);


--
-- Name: idx_fedidentity_user; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fedidentity_user ON public.federated_identity USING btree (user_id);


--
-- Name: idx_fu_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_attribute ON public.fed_user_attribute USING btree (user_id, realm_id, name);


--
-- Name: idx_fu_cnsnt_ext; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_cnsnt_ext ON public.fed_user_consent USING btree (user_id, client_storage_provider, external_client_id);


--
-- Name: idx_fu_consent; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_consent ON public.fed_user_consent USING btree (user_id, client_id);


--
-- Name: idx_fu_consent_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_consent_ru ON public.fed_user_consent USING btree (realm_id, user_id);


--
-- Name: idx_fu_credential; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_credential ON public.fed_user_credential USING btree (user_id, type);


--
-- Name: idx_fu_credential_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_credential_ru ON public.fed_user_credential USING btree (realm_id, user_id);


--
-- Name: idx_fu_group_membership; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_group_membership ON public.fed_user_group_membership USING btree (user_id, group_id);


--
-- Name: idx_fu_group_membership_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_group_membership_ru ON public.fed_user_group_membership USING btree (realm_id, user_id);


--
-- Name: idx_fu_required_action; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_required_action ON public.fed_user_required_action USING btree (user_id, required_action);


--
-- Name: idx_fu_required_action_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_required_action_ru ON public.fed_user_required_action USING btree (realm_id, user_id);


--
-- Name: idx_fu_role_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_role_mapping ON public.fed_user_role_mapping USING btree (user_id, role_id);


--
-- Name: idx_fu_role_mapping_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_role_mapping_ru ON public.fed_user_role_mapping USING btree (realm_id, user_id);


--
-- Name: idx_group_att_by_name_value; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_att_by_name_value ON public.group_attribute USING btree (name, ((value)::character varying(250)));


--
-- Name: idx_group_attr_group; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_attr_group ON public.group_attribute USING btree (group_id);


--
-- Name: idx_group_org_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_org_id ON public.keycloak_group USING btree (org_id);


--
-- Name: idx_group_role_mapp_group; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_role_mapp_group ON public.group_role_mapping USING btree (group_id);


--
-- Name: idx_id_prov_mapp_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_id_prov_mapp_realm ON public.identity_provider_mapper USING btree (realm_id);


--
-- Name: idx_ident_prov_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_ident_prov_realm ON public.identity_provider USING btree (realm_id);


--
-- Name: idx_idp_for_login; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_idp_for_login ON public.identity_provider USING btree (realm_id, enabled, link_only, hide_on_login, organization_id);


--
-- Name: idx_idp_realm_org; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_idp_realm_org ON public.identity_provider USING btree (realm_id, organization_id);


--
-- Name: idx_keycloak_role_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_keycloak_role_client ON public.keycloak_role USING btree (client);


--
-- Name: idx_keycloak_role_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_keycloak_role_realm ON public.keycloak_role USING btree (realm);


--
-- Name: idx_offline_css_by_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_css_by_client ON public.offline_client_session USING btree (client_id, offline_flag) WHERE ((client_id)::text <> 'external'::text);


--
-- Name: idx_offline_css_by_client_and_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_css_by_client_and_realm ON public.offline_client_session USING btree (realm_id, offline_flag, client_id, client_storage_provider, external_client_id);


--
-- Name: idx_offline_css_by_client_storage_provider; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_css_by_client_storage_provider ON public.offline_client_session USING btree (client_storage_provider, external_client_id, offline_flag) WHERE ((client_storage_provider)::text <> 'internal'::text);


--
-- Name: idx_offline_css_by_user_session_and_offline; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_css_by_user_session_and_offline ON public.offline_client_session USING btree (offline_flag, user_session_id);


--
-- Name: idx_offline_uss_by_broker_session_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_by_broker_session_id ON public.offline_user_session USING btree (broker_session_id, realm_id);


--
-- Name: idx_offline_uss_by_user; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_by_user ON public.offline_user_session USING btree (user_id, realm_id, offline_flag);


--
-- Name: idx_org_domain_org_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_org_domain_org_id ON public.org_domain USING btree (org_id);


--
-- Name: idx_org_invitation_email; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_org_invitation_email ON public.org_invitation USING btree (email);


--
-- Name: idx_org_invitation_expires; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_org_invitation_expires ON public.org_invitation USING btree (expires_at);


--
-- Name: idx_org_invitation_org_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_org_invitation_org_id ON public.org_invitation USING btree (organization_id);


--
-- Name: idx_perm_ticket_owner; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_perm_ticket_owner ON public.resource_server_perm_ticket USING btree (owner);


--
-- Name: idx_perm_ticket_requester; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_perm_ticket_requester ON public.resource_server_perm_ticket USING btree (requester);


--
-- Name: idx_protocol_mapper_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_protocol_mapper_client ON public.protocol_mapper USING btree (client_id);


--
-- Name: idx_realm_attr_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_attr_realm ON public.realm_attribute USING btree (realm_id);


--
-- Name: idx_realm_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_clscope ON public.client_scope USING btree (realm_id);


--
-- Name: idx_realm_def_grp_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_def_grp_realm ON public.realm_default_groups USING btree (realm_id);


--
-- Name: idx_realm_evt_list_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_evt_list_realm ON public.realm_events_listeners USING btree (realm_id);


--
-- Name: idx_realm_evt_types_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_evt_types_realm ON public.realm_enabled_event_types USING btree (realm_id);


--
-- Name: idx_realm_master_adm_cli; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_master_adm_cli ON public.realm USING btree (master_admin_client);


--
-- Name: idx_realm_supp_local_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_supp_local_realm ON public.realm_supported_locales USING btree (realm_id);


--
-- Name: idx_redir_uri_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_redir_uri_client ON public.redirect_uris USING btree (client_id);


--
-- Name: idx_req_act_prov_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_req_act_prov_realm ON public.required_action_provider USING btree (realm_id);


--
-- Name: idx_res_policy_policy; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_policy_policy ON public.resource_policy USING btree (policy_id);


--
-- Name: idx_res_scope_scope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_scope_scope ON public.resource_scope USING btree (scope_id);


--
-- Name: idx_res_serv_pol_res_serv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_serv_pol_res_serv ON public.resource_server_policy USING btree (resource_server_id);


--
-- Name: idx_res_srv_res_res_srv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_srv_res_res_srv ON public.resource_server_resource USING btree (resource_server_id);


--
-- Name: idx_res_srv_scope_res_srv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_srv_scope_res_srv ON public.resource_server_scope USING btree (resource_server_id);


--
-- Name: idx_rev_token_on_expire; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_rev_token_on_expire ON public.revoked_token USING btree (expire);


--
-- Name: idx_role_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_role_attribute ON public.role_attribute USING btree (role_id);


--
-- Name: idx_role_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_role_clscope ON public.client_scope_role_mapping USING btree (role_id);


--
-- Name: idx_scope_mapping_role; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_scope_mapping_role ON public.scope_mapping USING btree (role_id);


--
-- Name: idx_scope_policy_policy; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_scope_policy_policy ON public.scope_policy USING btree (policy_id);


--
-- Name: idx_update_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_update_time ON public.migration_model USING btree (update_time);


--
-- Name: idx_usconsent_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usconsent_clscope ON public.user_consent_client_scope USING btree (user_consent_id);


--
-- Name: idx_usconsent_scope_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usconsent_scope_id ON public.user_consent_client_scope USING btree (scope_id);


--
-- Name: idx_user_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_attribute ON public.user_attribute USING btree (user_id);


--
-- Name: idx_user_attribute_name; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_attribute_name ON public.user_attribute USING btree (name, value);


--
-- Name: idx_user_consent; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_consent ON public.user_consent USING btree (user_id);


--
-- Name: idx_user_created_timestamp; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_created_timestamp ON public.user_entity USING btree (realm_id, created_timestamp);


--
-- Name: idx_user_credential; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_credential ON public.credential USING btree (user_id);


--
-- Name: idx_user_email; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_email ON public.user_entity USING btree (email);


--
-- Name: idx_user_group_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_group_mapping ON public.user_group_membership USING btree (user_id);


--
-- Name: idx_user_reqactions; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_reqactions ON public.user_required_action USING btree (user_id);


--
-- Name: idx_user_role_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_role_mapping ON public.user_role_mapping USING btree (user_id);


--
-- Name: idx_user_service_account; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_service_account ON public.user_entity USING btree (realm_id, service_account_client_link);


--
-- Name: idx_user_session_expiration_created; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_session_expiration_created ON public.offline_user_session USING btree (realm_id, offline_flag, remember_me, created_on, user_session_id, user_id);


--
-- Name: idx_user_session_expiration_last_refresh; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_session_expiration_last_refresh ON public.offline_user_session USING btree (realm_id, offline_flag, remember_me, last_session_refresh, user_session_id, user_id);


--
-- Name: idx_usr_fed_map_fed_prv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_map_fed_prv ON public.user_federation_mapper USING btree (federation_provider_id);


--
-- Name: idx_usr_fed_map_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_map_realm ON public.user_federation_mapper USING btree (realm_id);


--
-- Name: idx_usr_fed_prv_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_prv_realm ON public.user_federation_provider USING btree (realm_id);


--
-- Name: idx_web_orig_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_web_orig_client ON public.web_origins USING btree (client_id);


--
-- Name: idx_workflow_state_provider; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_workflow_state_provider ON public.workflow_state USING btree (resource_id);


--
-- Name: idx_workflow_state_step; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_workflow_state_step ON public.workflow_state USING btree (workflow_id, scheduled_step_id);


--
-- Name: user_attr_long_values; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX user_attr_long_values ON public.user_attribute USING btree (long_value_hash, name);


--
-- Name: user_attr_long_values_lower_case; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX user_attr_long_values_lower_case ON public.user_attribute USING btree (long_value_hash_lower_case, name);


--
-- Name: identity_provider fk2b4ebc52ae5c3b34; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT fk2b4ebc52ae5c3b34 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_attributes fk3c47c64beacca966; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT fk3c47c64beacca966 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: federated_identity fk404288b92ef007a6; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT fk404288b92ef007a6 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_node_registrations fk4129723ba992f594; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT fk4129723ba992f594 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: redirect_uris fk_1burs8pb4ouj97h5wuppahv9f; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: user_federation_provider fk_1fj32f6ptolw2qy60cd8n01e8; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_required_credential fk_5hg65lybevavkqfki3kponh9v; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT fk_5hg65lybevavkqfki3kponh9v FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_attribute fk_5hrm2vlf9ql5fu022kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: user_attribute fk_5hrm2vlf9ql5fu043kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: user_required_action fk_6qj3w1jw9cvafhe19bwsiuvmd; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: keycloak_role fk_6vyqfe4cn4wlq8r6kt5vdsj5c; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c FOREIGN KEY (realm) REFERENCES public.realm(id);


--
-- Name: realm_smtp_config fk_70ej8xdxgxd0b9hh6180irr0o; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_attribute fk_8shxd6l3e9atqukacxgpffptw; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: composite_role fk_a63wvekftu8jo1pnj81e7mce2; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2 FOREIGN KEY (composite) REFERENCES public.keycloak_role(id);


--
-- Name: authentication_execution fk_auth_exec_flow; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_flow FOREIGN KEY (flow_id) REFERENCES public.authentication_flow(id);


--
-- Name: authentication_execution fk_auth_exec_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authentication_flow fk_auth_flow_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT fk_auth_flow_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authenticator_config fk_auth_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT fk_auth_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_role_mapping fk_c4fqv34p1mbylloxang7b1q3l; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_scope_attributes fk_cl_scope_attr_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: protocol_mapper fk_cli_scope_mapper; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_cli_scope_mapper FOREIGN KEY (client_scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_initial_access fk_client_init_acc_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT fk_client_init_acc_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: component_config fk_component_config; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT fk_component_config FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- Name: component fk_component_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT fk_component_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_groups fk_def_groups_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_mapper_config fk_fedmapper_cfg; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT fk_fedmapper_cfg FOREIGN KEY (user_federation_mapper_id) REFERENCES public.user_federation_mapper(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_fedprv; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_fedprv FOREIGN KEY (federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: associated_policy fk_frsr5s213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy FOREIGN KEY (associated_policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrasp13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog82sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82sspmt FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_resource fk_frsrho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog83sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog83sspmt FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog84sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog84sspmt FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: associated_policy fk_frsrpas14xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrpass3xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_perm_ticket fk_frsrpo2128cx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_policy fk_frsrpo213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_scope fk_frsrpos13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpos53xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpp213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_scope fk_frsrps213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_scope fk_frsrso213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: composite_role fk_gr7thllb9lu8q4vqa4524jjy8; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8 FOREIGN KEY (child_role) REFERENCES public.keycloak_role(id);


--
-- Name: user_consent_client_scope fk_grntcsnt_clsc_usc; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT fk_grntcsnt_clsc_usc FOREIGN KEY (user_consent_id) REFERENCES public.user_consent(id);


--
-- Name: user_consent fk_grntcsnt_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT fk_grntcsnt_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: group_attribute fk_group_attribute_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT fk_group_attribute_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: keycloak_group fk_group_organization; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT fk_group_organization FOREIGN KEY (org_id) REFERENCES public.org(id);


--
-- Name: group_role_mapping fk_group_role_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: realm_enabled_event_types fk_h846o4h0w8epx5nwedrf5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_events_listeners fk_h846o4h0w8epx5nxev9f5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: identity_provider_mapper fk_idpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT fk_idpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: idp_mapper_config fk_idpmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT fk_idpmconfig FOREIGN KEY (idp_mapper_id) REFERENCES public.identity_provider_mapper(id);


--
-- Name: web_origins fk_lojpho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: org_invitation fk_org_invitation_org; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.org_invitation
    ADD CONSTRAINT fk_org_invitation_org FOREIGN KEY (organization_id) REFERENCES public.org(id) ON DELETE CASCADE;


--
-- Name: scope_mapping fk_ouse064plmlr732lxjcn1q5f1; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: protocol_mapper fk_pcm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_pcm_realm FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: credential fk_pfyr0glasqyl0dei3kl69r6v0; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: protocol_mapper_config fk_pmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT fk_pmconfig FOREIGN KEY (protocol_mapper_id) REFERENCES public.protocol_mapper(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: required_action_provider fk_req_act_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT fk_req_act_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_uris fk_resource_server_uris; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT fk_resource_server_uris FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: role_attribute fk_role_attribute_id; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT fk_role_attribute_id FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_supported_locales fk_supported_locales_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT fk_supported_locales_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_config fk_t13hpu1j94r2ebpekr39x5eu5; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5 FOREIGN KEY (user_federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_group_membership fk_user_group_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: policy_config fkdc34197cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT fkdc34197cf864c4e43 FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: identity_provider_config fkdc4897cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT fkdc4897cf864c4e43 FOREIGN KEY (identity_provider_id) REFERENCES public.identity_provider(internal_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict zEtZ9e1ALZd7HhnRqj76DvrxD2vIcjj9PrByTdM2RPjvXNXL38JnkegUHXLN4Uv

