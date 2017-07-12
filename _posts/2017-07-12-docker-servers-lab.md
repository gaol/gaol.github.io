---
layout: post
title:  "Docker Servers Lab 介绍"
date:   2017-07-12 12:02
categories: docker
permalink: /docker/servers-lab
---
[Servers Lab] 提供了一些预先配置好的常用的服务器，比如： OpenLDAP, MariaDB(MySQL) 等。

这些服务器运行在 docker container 里，只需要在自己的机器上运行：

{% highlight shell %}
docker pull aoingl/servers-lab:latest
docker run -ti --name servers-lab -p 389:389 -p 636:636 -p 3306:3306 aoingl/servers-lab:latest /bin/bash
start-ldap.sh # 启动 LDAP 服务
start-mysql.sh # 启动 MySQL 服务
{% endhighlight %}

然后就可以在本机(host)上访问服务了：

{% highlight shell %}
$ ldapsearch -LLL -h 172.17.0.2 -D "uid=jduke,ou=Users,dc=jboss,dc=org" -w theduke -b "dc=jboss,dc=org" "(cn=Admin)"
{% endhighlight %}

{% highlight shell %}
$ mysql -h 172.17.0.2 -u testUser -p testDB
Enter password: #< here input testPass
{% endhighlight %}

我会不断的更新 [Servers Lab], 可以在 docker container 里运行更多的利于测试和调试的环境

[Servers Lab]: https://github.com/gaol/servers-lab
