# Vonaburt_infra
### Homework #3

```
bastion_IP = 35.207.89.221

someinternalhost_IP = 10.156.0.5
```


### Homework #4
```
testapp_IP = 35.242.237.199
testapp_port = 9292
```

### Homework #5

В ходе работы был рассмотрен способ сборки образа виртуальной машины с помощью инструмента Packer

Для возможности собрать образ необходимо выполнить следующую команду:
```
packer build -var-file=variables.json ubuntu16.json
```
, где:

**packer** - заранее установленный Packer CLI
**build** - команда сборки образа
**-var-file=variables.json** - флаг передачи переменных через json-файл с переменными
**ubuntu16.json** - шаблон собираемого образа

