> 已经讲配置文件全部转移至
>
> `/home/alic/tutorial/github/alicfeng/Linux_env/server/configure/apache2/*`
>
> 为了方便统一管理，记录一下usage：

- 一步到位

> 说明：建议将`/etc/apache2/*`所有的配置文件删除，因为已经有了配置文件，保留着也是冗余数据文件。

```shell
sudo rm /etc/apache2 && \
sudo touch /etc/apache2/apache2.conf && \
sudo echo "IncludeOptional /home/alic/tutorial/github/alicfeng/Linux_env/server/configure/apache2/apache2.conf
" > /etc/apache2/apache2.conf && \
mkdir -p /home/alic/www/default
```

即可！