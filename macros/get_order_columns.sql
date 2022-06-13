18:30:15  {% macro get_order_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "activated_by_id", "datatype": dbt_utils.type_string()},
    {"name": "activated_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "amend_with_rollover_spend_type_c", "datatype": "boolean"},
    {"name": "amendment_type_c", "datatype": dbt_utils.type_string()},
    {"name": "ava_sfcpq_ava_tax_message_c", "datatype": dbt_utils.type_string()},
    {"name": "ava_sfcpq_entity_use_code_c", "datatype": dbt_utils.type_string()},
    {"name": "ava_sfcpq_invoice_message_c", "datatype": dbt_utils.type_string()},
    {"name": "ava_sfcpq_is_seller_importer_of_record_c", "datatype": "boolean"},
    {"name": "ava_sfcpq_order_calculate_tax_c", "datatype": "boolean"},
    {"name": "ava_sfcpq_sales_tax_amount_c", "datatype": dbt_utils.type_numeric()},
    {"name": "billing_city", "datatype": dbt_utils.type_string()},
    {"name": "billing_country", "datatype": dbt_utils.type_string()},
    {"name": "billing_country_code", "datatype": dbt_utils.type_string()},
    {"name": "billing_geocode_accuracy", "datatype": dbt_utils.type_string()},
    {"name": "billing_latitude", "datatype": dbt_utils.type_float()},
    {"name": "billing_longitude", "datatype": dbt_utils.type_float()},
    {"name": "billing_postal_code", "datatype": dbt_utils.type_string()},
    {"name": "billing_state", "datatype": dbt_utils.type_string()},
    {"name": "billing_state_code", "datatype": dbt_utils.type_string()},
    {"name": "billing_street", "datatype": dbt_utils.type_string()},
    {"name": "blng_bill_now_c", "datatype": "boolean"},
    {"name": "blng_billing_account_c", "datatype": dbt_utils.type_string()},
    {"name": "blng_billing_day_of_month_c", "datatype": dbt_utils.type_string()},
    {"name": "blng_invoice_batch_c", "datatype": dbt_utils.type_string()},
    {"name": "celigo_sfnsio_discount_total_net_suite_c", "datatype": dbt_utils.type_numeric()},
    {"name": "celigo_sfnsio_net_suite_id_c", "datatype": dbt_utils.type_string()},
    {"name": "celigo_sfnsio_net_suite_order_number_c", "datatype": dbt_utils.type_string()},
    {"name": "celigo_sfnsio_net_suite_order_status_c", "datatype": dbt_utils.type_string()},
    {"name": "celigo_sfnsio_net_suite_record_c", "datatype": dbt_utils.type_string()},
    {"name": "celigo_sfnsio_ship_date_c", "datatype": dbt_utils.type_timestamp()},
    {"name": "celigo_sfnsio_skip_export_to_net_suite_c", "datatype": "boolean"},
    {"name": "celigo_sfnsio_sub_total_net_suite_c", "datatype": dbt_utils.type_numeric()},
    {"name": "celigo_sfnsio_tax_total_net_suite_c", "datatype": dbt_utils.type_numeric()},
    {"name": "celigo_sfnsio_test_mode_record_c", "datatype": "boolean"},
    {"name": "celigo_sfnsio_total_net_suite_c", "datatype": dbt_utils.type_numeric()},
    {"name": "company_authorized_by_id", "datatype": dbt_utils.type_string()},
    {"name": "contract_id", "datatype": dbt_utils.type_string()},
    {"name": "created_by_id", "datatype": dbt_utils.type_string()},
    {"name": "created_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "credit_summary_c", "datatype": dbt_utils.type_string()},
    {"name": "customer_authorized_by_id", "datatype": dbt_utils.type_string()},
    {"name": "customer_spend_type_c", "datatype": dbt_utils.type_string()},
    {"name": "description", "datatype": dbt_utils.type_string()},
    {"name": "effective_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "end_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "evergreen_c", "datatype": "boolean"},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "invoicing_type_c", "datatype": dbt_utils.type_string()},
    {"name": "is_deleted", "datatype": "boolean"},
    {"name": "is_hvr_legacy_order_c", "datatype": "boolean"},
    {"name": "is_reduction_order", "datatype": "boolean"},
    {"name": "last_modified_by_id", "datatype": dbt_utils.type_string()},
    {"name": "last_modified_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_referenced_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_viewed_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "legal_entity_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_celigo_update_c", "datatype": "boolean"},
    {"name": "netsuite_conn_discount_total_c", "datatype": dbt_utils.type_float()},
    {"name": "netsuite_conn_document_id_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_net_suite_id_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_net_suite_order_date_c", "datatype": dbt_utils.type_timestamp()},
    {"name": "netsuite_conn_net_suite_order_number_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_net_suite_order_status_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_net_suite_sync_err_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_opportunity_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_push_to_net_suite_c", "datatype": "boolean"},
    {"name": "netsuite_conn_pushed_from_net_suite_c", "datatype": "boolean"},
    {"name": "netsuite_conn_quote_c", "datatype": dbt_utils.type_string()},
    {"name": "netsuite_conn_ship_date_c", "datatype": dbt_utils.type_timestamp()},
    {"name": "netsuite_conn_subtotal_c", "datatype": dbt_utils.type_float()},
    {"name": "netsuite_conn_sync_in_progress_c", "datatype": "boolean"},
    {"name": "netsuite_conn_tax_total_c", "datatype": dbt_utils.type_float()},
    {"name": "netsuite_conn_total_c", "datatype": dbt_utils.type_float()},
    {"name": "netsuite_conn_tracking_numbers_c", "datatype": dbt_utils.type_string()},
    {"name": "opportunity_id", "datatype": dbt_utils.type_string()},
    {"name": "order_auto_activated_c", "datatype": "boolean"},
    {"name": "order_number", "datatype": dbt_utils.type_string()},
    {"name": "order_spend_type_c", "datatype": dbt_utils.type_string()},
    {"name": "original_order_id", "datatype": dbt_utils.type_string()},
    {"name": "owner_id", "datatype": dbt_utils.type_string()},
    {"name": "prepaid_billing_frequency_c", "datatype": dbt_utils.type_string()},
    {"name": "prepaid_order_c", "datatype": "boolean"},
    {"name": "pricebook_2_id", "datatype": dbt_utils.type_string()},
    {"name": "purchase_order_number_c", "datatype": dbt_utils.type_string()},
    {"name": "purchase_summary_c", "datatype": dbt_utils.type_string()},
    {"name": "sbqq_contracted_c", "datatype": "boolean"},
    {"name": "sbqq_contracting_method_c", "datatype": dbt_utils.type_string()},
    {"name": "sbqq_payment_term_c", "datatype": dbt_utils.type_string()},
    {"name": "sbqq_price_calc_status_c", "datatype": dbt_utils.type_string()},
    {"name": "sbqq_price_calc_status_message_c", "datatype": dbt_utils.type_string()},
    {"name": "sbqq_quote_c", "datatype": dbt_utils.type_string()},
    {"name": "sbqq_renewal_term_c", "datatype": dbt_utils.type_float()},
    {"name": "sbqq_renewal_uplift_rate_c", "datatype": dbt_utils.type_float()},
    {"name": "shipping_city", "datatype": dbt_utils.type_string()},
    {"name": "shipping_country", "datatype": dbt_utils.type_string()},
    {"name": "shipping_country_code", "datatype": dbt_utils.type_string()},
    {"name": "shipping_geocode_accuracy", "datatype": dbt_utils.type_string()},
    {"name": "shipping_latitude", "datatype": dbt_utils.type_float()},
    {"name": "shipping_longitude", "datatype": dbt_utils.type_float()},
    {"name": "shipping_postal_code", "datatype": dbt_utils.type_string()},
    {"name": "shipping_state", "datatype": dbt_utils.type_string()},
    {"name": "shipping_state_code", "datatype": dbt_utils.type_string()},
    {"name": "shipping_street", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "status_code", "datatype": dbt_utils.type_string()},
    {"name": "synced_to_net_suite_c", "datatype": "boolean"},
    {"name": "system_modstamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "total_amount", "datatype": dbt_utils.type_float()},
    {"name": "type", "datatype": dbt_utils.type_string()},
    {"name": "update_subscriptions_only_c", "datatype": "boolean"}
] %}

{{ return(columns) }}

{% endmacro %}
