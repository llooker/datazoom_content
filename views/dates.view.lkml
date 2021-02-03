view: dates {

  derived_table: {



    sql_trigger_value: SELECT CURRENT_DATE() ;;

    sql:

     SELECT cast(date as date) as date

FROM UNNEST(GENERATE_DATE_ARRAY(DATE_SUB(CURRENT_DATE, INTERVAL 5 YEAR), CURRENT_DATE)) date

      ;;

    }

  }
