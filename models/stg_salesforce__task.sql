
with base as (

    select * 
    from {{ ref('stg_salesforce__task_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_salesforce__task_tmp')),
                staging_columns=get_task_columns()
            )
        }}
    from base
),

final as (
    
    select 
        _fivetran_synced,
        account_id,
        activity_date,
        affectlayer_affect_layer_call_id_c,
        affectlayer_chorus_call_id_c,
        assigned_to_name_c,
        assigned_to_role_c,
        associated_sdr_c,
        attendance_number_c,
        bizible_2_bizible_id_c,
        bizible_2_bizible_touchpoint_date_c,
        call_disposition,
        call_disposition_2_c,
        call_disposition_c,
        call_duration_in_seconds,
        call_object,
        call_recording_c,
        call_type,
        campaign_c,
        co_sell_partner_account_c,
        co_selling_activity_c,
        collections_hold_c,
        completed_date_time,
        created_by_id,
        created_date,
        description,
        description_c,
        duration_in_minutes_c,
        event_name_c,
        execute_collections_plan_activity_c,
        expected_payment_date_c,
        first_meeting_c,
        first_meeting_held_c,
        how_did_you_bring_value_or_create_trust_c,
        how_did_you_bring_value_or_earn_trust_c,
        id,
        invitee_uuid_c,
        is_a_co_sell_activity_c,
        is_archived,
        is_closed,
        is_deleted,
        is_high_priority,
        is_recurrence,
        is_reminder_set,
        last_modified_by_id,
        last_modified_date,
        last_rep_activity_date_c,
        legacy_hvr_id_c,
        lid_date_sent_c,
        lid_url_c,
        meeting_name_c,
        meeting_type_c,
        no_show_c,
        opportunity_c,
        owner_id,
        partner_account_c,
        partner_activity_type_c,
        partner_contact_c,
        priority,
        proof_of_referral_c,
        record_type_id,
        recurrence_activity_id,
        recurrence_day_of_month,
        recurrence_day_of_week_mask,
        recurrence_end_date_only,
        recurrence_instance,
        recurrence_interval,
        recurrence_month_of_year,
        recurrence_regenerated_type,
        recurrence_start_date_only,
        recurrence_time_zone_sid_key,
        recurrence_type,
        referral_account_c,
        referral_contact_c,
        reminder_date_time,
        sales_loft_1_call_disposition_c,
        sales_loft_1_call_sentiment_c,
        sales_loft_1_sales_loft_cadence_name_c,
        sales_loft_1_sales_loft_clicked_count_c,
        sales_loft_1_sales_loft_email_template_title_c,
        sales_loft_1_sales_loft_replies_count_c,
        sales_loft_1_sales_loft_step_day_c,
        sales_loft_1_sales_loft_view_count_c,
        sales_loft_cadence_id_c,
        sales_loft_cadence_name_c,
        sales_loft_clicked_count_c,
        sales_loft_email_template_id_c,
        sales_loft_email_template_title_c,
        sales_loft_external_identifier_c,
        sales_loft_reply_count_c,
        sales_loft_step_day_new_c,
        sales_loft_step_id_c,
        sales_loft_step_name_c,
        sales_loft_step_type_c,
        sales_loft_viewed_count_c,
        status,
        subject,
        system_modstamp,
        task_subtype,
        topic_c,
        type,
        vidyard_c,
        what_count,
        what_id,
        who_count,
        who_id
    from fields
)

select *
from final
