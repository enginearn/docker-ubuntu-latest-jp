# Dockerfile for ubuntu:latest

<details>
<summary>docker build</summary>

``` PowerShell
$ docker build --no-cache -t enginearn/ubuntu-test:test -f .\Dockerfile .
```

</details>

<details>
<summary>docker run</summary>

``` PowerShell
$ docker run -it -d --name ubuntu-test enginearn/ubuntu-test:test
```

</details>

<details>
<summary>docker exec</summary>

``` PowerShell
$ docker exec -it -u sudo_user ubuntu-test bash
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

sudo_user@da3321b3c3b7:/$ date
Sun May 22 00:44:54 JST 2022
```

</details>
