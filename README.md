# Temp Mail

A self-hosted disposable mail service.it can dispose used resources automatically.

## How to run?

### General way

```sh
npm install && npm start
```

### Docker
```sh
docker build -t colinchang/tempmail:latest .
docker run --name forsaken-mail -d -p 25:25 -p 80:3000 colinchang/tempmail
```
Open your browser and visit http://127.0.0.1


## Setting up your DNS correctly

In order to receive emails, your smtp server address should be made available somewhere. Two records should be added to your DNS records. Let us pretend that we want to receive emails at ```*@subdomain.domain.com```:
* First an MX record: ```subdomain.domain.com MX 10 mxsubdomain.domain.com```. This means that the mail server for addresses like ```*@subdomain.domain.com``` will be ```mxsubdomain.domain.com```.
* Then an A record: ```mxsubdomain.domain.com A the.ip.address.of.your.mailin.server```. This tells at which ip address the mail server can be found.

You can fire up Mailin (see next section) and use an [smtp server tester](http://mxtoolbox.com/diagnostic.aspx) to verify that everything is correct.

#### Thanks
This repository is forked from [denghongcai/forsaken-mail](https://github.com/denghongcai/forsaken-mail), and I just modify its docker configuration. Thank denghongcai.
