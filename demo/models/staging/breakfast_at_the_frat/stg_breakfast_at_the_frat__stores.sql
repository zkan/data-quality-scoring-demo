with

source as (

    select * from {{ source('breakfast_at_the_frat', 'stores') }}

)

, final as (

    select
        store_id
        , store_name
        , address_city_name
        , address_state_prov_code
        , msa_code
        , seg_value_name
        , parking_space_qty
        , sales_area_size_num
        , avg_weekly_baskets

    from source

)

select * from final