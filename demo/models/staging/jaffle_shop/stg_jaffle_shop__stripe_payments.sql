with

source as (

    select * from {{ source('jaffle_shop', 'stripe_payments') }}

),

renamed as (

    select
        id as payment_id
        , orderid as order_id
        , paymentmethod as payment_method

        -- `amount` is currently stored in cents, so we convert it to dollars
        , amount / 100 as amount

    from source

)

select * from renamed
