# tetsuya/kochiku

## Usage

```
$ git clone https://github.com/tetsuya/kochiku.git && cd kochiku
$ sh bootstrap.sh
```

### Add a new SSH key to GitHub account

```
$ pbcopy < ~/.ssh/id_rsa.pub
```

Then visit [SSH and GPG keys](https://github.com/settings/keys) page on GitHub.

### Setup MySQL

```
$ docker run \
    --publish 3306:3306 \
    --name mysql5.7 \
    --env MYSQL_ROOT_PASSWORD=foobar \
    --restart=always \
    --detach \
    mysql:5.7 \
    --character-set-server=utf8mb4 \
    --collation-server=utf8mb4_unicode_ci
```