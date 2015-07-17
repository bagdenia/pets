module ActiveRecord
  module Tasks
    class PostgreSQLDatabaseTasks
      def drop
        establish_master_connection

        if connection.query('select version()').flatten.first[/9.1/]
        then
          pid_query_part = 'procpid'
          state_query_part = "current_query='<IDLE>'"
        else
          pid_query_part = 'pid'
          state_query_part = "state='idle'"
        end

        connection.select_all "select pg_terminate_backend(pg_stat_activity.#{pid_query_part}) from"\
        " pg_stat_activity where datname='#{configuration['database']}' AND #{state_query_part};"

        connection.drop_database configuration['database']
      end
    end
  end
end
