# Dockerfile for ubuntu:latest

<details>
<summary>docker build</summary>

``` PowerShell
> docker build --no-cache -t enginearn/ubuntu-latest-jp:latest -f .\Dockerfile .
```

</details>

<details>
<summary>docker run</summary>

``` PowerShell
> docker run -it -d --name ubuntu-latest enginearn/ubuntu-latest-jp:latest
```

</details>

<details>
<summary>docker exec</summary>

``` PowerShell
> docker exec -it -u sudo_user ubuntu-latest bin/bash
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

sudo_user@da3321b3c3b7:/$ date
Tue Feb  7 21:22:33 JST 2023
```

</details>

<details>
<summary>docker push</summary>

``` PowerShell
docker push enginearn/ubuntu-latest-jp
```

</details>
