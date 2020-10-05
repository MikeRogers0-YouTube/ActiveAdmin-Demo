# ActiveAdmin - Demo Repo

This is the sample repo for [Admin Panels In Ruby On Rails](https://mikerogers.io/2020/10/05/active-active-video).

## Videos

* [Part 1 (Set up ActiveAdmin)](https://www.youtube.com/watch?v=QBzOZxRVfs8)
* [Part 2 (Resources, Filters & Scopes)](https://www.youtube.com/watch?v=5tCWXSaTfUI)
* [Part 3 (Custom Actions & Decorators)](https://www.youtube.com/watch?v=ZuF6M3s-hq0)

## Setup & Running Locally

Clone down the repo, install [Docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) & run:

```bash
docker-compose build
docker-compose run --rm web /bin/sh -c 'bin/setup'
docker-compose up
```

Then navigate your browser to https://127.0.0.1:3000/ to see your site.

## Useful Links

* [Ruby on Rails Guides](https://guides.rubyonrails.org/)
* [Ruby on Rails API Documentation](https://api.rubyonrails.org/)
* [Heroku](https://www.heroku.com/)
* [Docker-Rails-Generator](https://github.com/Ruby-Starter-Kits/Docker-Rails-Generator)

