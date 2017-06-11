> 已经讲配置文件全部转移至
>
> `/home/alic/tutorial/github/alicfeng/Linux_env/server/configure/nginx/*`
>
> 为了方便统一管理，记录一下usage：

- 一步到位

> 说明：建议将`/etc/apache2/*`所有的配置文件删除，因为已经有了配置文件，保留着也是冗余数据文件。
>
> 重要：sites-enabled目录下的配置是.conf才能加载到服务器，默认是所有的文件，这个已经修改成apache的形式。

```shell
sudo echo "include /home/alic/tutorial/github/alicfeng/Linux_env/server/configure/nginx/nginx.conf;" > /etc/nginx/nginx.conf
```

即可！