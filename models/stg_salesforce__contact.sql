
with base as (

    select * 
    from {{ ref('stg_salesforce__contact_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_salesforce__contact_tmp')),
                staging_columns=get_contact_columns()
            )
        }}
    from base
),

final as (
    
    select 
        _fivetran_synced,
        account_id,
        department,
        description,
        do_not_call,
        email,
        first_name,
        has_opted_out_of_email,
        has_opted_out_of_fax,
        home_phone,
        id,
        individual_id,
        is_deleted,
        last_activity_date,
        last_curequest_date,
        last_cuupdate_date,
        last_modified_by_id,
        last_modified_date,
        last_name,
        last_referenced_date,
        last_viewed_date,
        lead_source,
        mailing_city,
        mailing_country,
        mailing_country_code,
        mailing_postal_code,
        mailing_state,
        mailing_state_code,
        mailing_street,
        master_record_id,
        mobile_phone,
        name,
        owner_id,
        phone,
        reports_to_id,
        salutation,
        system_modstamp,
        title
    from fields
)

select *
from final
