An image that contain the nodejs image of [phusion-passenger](https://github.com/phusion/passenger-docker) to start any vuejs project. 

## Pull

    $ docker pull szorfein/vue-passenger

## Run for development

    $ cd vuejs-project
    $ docker run -e "ENV=DEV" -v $PWD:/home/app/webapp szorfein/vue-passenger

## Run for production

    $ docker run szorfein/vue-passenger

## Customize the image by adding your own vuejs project
You can modify the value of `URL` like this:

    $ mkdir new && cd new
    $ docker build --build-arg URL=https://github.com/charlesBochet/cropchat -t szorfein/vue-passenger .

## Troubleshooting

### Build failed with resolve name (github) failed
Try to build the image with `--network=host`

    $ docker build --network=host .
