dataSource {
    pooled = true
    driverClassName = "org.hsqldb.jdbcDriver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost:3306/myaccountant?characterEncoding=UTF-8"
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "root"
            logSql = false
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost:3306/myaccountant?characterEncoding=UTF-8"
            driverClassName = "com.mysql.jdbc.Driver"
            username = "myaccountant"
            password = "11aston11"
            logSql = false
        }
    }
}
