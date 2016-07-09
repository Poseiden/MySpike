## Technical for Backend

#### Connection pool of database
 
 - C3P0 
 	- plugin: 
 		* https://github.com/swaldman/c3p0-play (3start,unmaintained)
 		* https://github.com/Furyu/play-c3p0-plugin (4start)
 		* https://github.com/imeredith/play2-c3p0-plugin (7start)
 
 - DBCP 
 
 - BoneCP (leak preferences)
 
 - HakariCP (official recommended,supported)
 	- plugin:
 		* https://github.com/brettwooldridge/HikariCP (2800+start)
 		* https://github.com/edulify/play-hikaricp.edulify.com

#### ORM

- Hibernate(latest version)