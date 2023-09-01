with

products as (

    select * from {{ ref('stg_breakfast_at_the_frat__products') }}

)

, final as (

    select
        upc
        , description
        , manufacturer
        , category
        , sub_category
        , product_size

    from products

)

select * from final
