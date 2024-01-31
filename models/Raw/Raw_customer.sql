{{
    config(
        materialized='table'
    )
}}

SELECT  * FROM RAW_DATABASE.GLOBALMART.CUSTOMERS