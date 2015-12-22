changequote({{,}})dnl
define(APACHE_PREFORK_START_SERVERS, {{1}})dnl
define(APACHE_PREFORK_MIN_SPARE_SERVERS, {{1}})dnl
define(APACHE_PREFORK_MAX_SPARE_SERVERS, {{5}})dnl
define(APACHE_PREFORK_MAX_REQUEST_WORKERS, {{2}})dnl
define(APACHE_PREFORK_MAX_CONNECTIONS_PER_CHILD, {{0}})dnl
# prefork MPM
# StartServers: number of server processes to start
# MinSpareServers: minimum number of server processes which are kept spare
# MaxSpareServers: maximum number of server processes which are kept spare
# MaxRequestWorkers: maximum number of server processes allowed to start
# MaxConnectionsPerChild: maximum number of requests a server process serves

<IfModule mpm_prefork_module>
  StartServers           APACHE_PREFORK_START_SERVERS
  MinSpareServers        APACHE_PREFORK_MIN_SPARE_SERVERS
  MaxSpareServers        APACHE_PREFORK_MAX_SPARE_SERVERS
  MaxRequestWorkers      APACHE_PREFORK_MAX_REQUEST_WORKERS
  MaxConnectionsPerChild APACHE_PREFORK_MAX_CONNECTIONS_PER_CHILD
</IfModule>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet

