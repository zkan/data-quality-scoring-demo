with

source as (

    select * from {{ source('breakfast_at_the_frat', 'transactions') }}

)

, final as (

    select
        week_end_date
        , store_num
        , upc
        , units
        , visits
        , hhs
        , spend
        , price
        , base_price
        , feature
        , display
        , tpr_only

    from source

)

select * from final