with

source as (

    select * from {{ source('breakfast_at_the_frat', 'products') }}

)

, final as (

    select
        upc
        , description
        , manufacturer
        , category
        , sub_category
        , product_size

    from source

)

select * from final