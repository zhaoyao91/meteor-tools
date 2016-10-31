# Meteor Tools
A set of linux tools to help you build meteor app with docker easily.

## Basic Usage
Add following `Dockerfile` into the root of your app:
```
FROM zhaoyao91/meteor-tools

RUN /tools/install_base.sh
RUN /tools/install_node.sh 4.6.0
RUN /tools/install_meteor.sh

COPY . /src

RUN /tools/build_app.sh /src /app
RUN /tools/prepare_app.sh /app

CMD /tools/run_app.sh /app

EXPOSE 80 
```

Then you can build the docker image with:
```
docker build -t yourname/appname .
```

Then you can run your meteor image with
```
docker run -d \
  -e ROOT_URL=http://yourapp.com \
  -e MONGO_URL=mongodb://url \
  -e MONGO_OPLOG_URL=mongodb://oplog_url \
  -p 80:80 \
  yourname/appname
```


## Advanced
You can look through the code and try to customize your own process of dockerizing your app.

## Contributions
Thanks to the [meteord](https://github.com/meteorhacks/meteord) project.

## License
MIT