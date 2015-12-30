# docker-openfalcon-aggregator

## Build

Enter the following command in the repo directory.

```
$sudo docker build --force-rm=true -t openfalcon-aggregator .
```

## Run

### Basic Run

Use default configuration, and falcon-aggregator package.

```
$sudo docker run -dti --name aggregator -p 6055:6055 openfalcon-aggregator
```

### Advanced Run

+ Self-defined configuration

    Replace file **cfg.json** in the volume */config*.  
    For more detail about **cfg.json**, see [aggergator](http://book.open-falcon.com/zh/install_from_src/aggregator.html).

+ New falcon-aggregator package

    Replace file **falcon-aggregator.tar.gz** in the volume */package*.
    
For example, **cfg.json** in /tmp/config and **falcon-aggregator.tar.gz** in /tmp/pack,

```
$sudo docker run -dti --name aggregator -v /tmp/pack:/package -v /tmp/config/cfg.json:/config/cfg.json -p 6055:6055 openfalcon-aggregator
```
