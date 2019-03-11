Daemon                   Default Port  Configuration Parameter
-----------------------  ------------ ----------------------------------
Namenode                 50070        dfs.http.address
Datanodes                50075        dfs.datanode.http.address
Secondarynamenode        50090        dfs.secondary.http.address
Backup/Checkpoint node?  50105        dfs.backup.http.address
Jobracker                50030        mapred.job.tracker.http.address
Tasktrackers             50060        mapred.task.tracker.http.address


Daemon      Default Port        Configuration Parameter     
------------------------------------------------------------
Namenode    8020                fs.default.name         
Datanode    50010               dfs.datanode.address        
Datanode    50020               dfs.datanode.ipc.address                                    
Backupnode  50100               dfs.backup.address          