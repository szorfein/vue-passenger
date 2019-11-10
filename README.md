look https://gist.github.com/szarapka/05ba804dfd1c10ad47bf

## build

    $ docker build .

## run

    $ docker run --rm -p 80:8080 6f15

## access

    $ curl -I localhost

## troubleshooting

### Build failed with resolve name (github) failed
Try to build the image with `--network=host`

    $ docker build --network=host .
