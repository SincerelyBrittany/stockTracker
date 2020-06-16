[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/SincerelyBrittany/stockTracker">
    <img src="public/readme_media/logo.png" alt="Logo" width="300" height="80">
  </a>

  <h3 align="center">The Stock Watchlist</h3>

  <p align="center">
    An awesome Sinatra application that allows you to add stocks to your personalized watchlist!
    <br />
    <a href="https://www.youtube.com/watch?v=lTFuoIIYX5E">View Demo</a>
    ·
    <a href="https://github.com/SincerelyBrittany/stockTracker/issues">Report Bug</a>
    ·
    <a href="https://github.com/SincerelyBrittany/stockTracker/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

This project allows a user to create watchlist and search for stocks using the [IEX_Finance_API](https://iexcloud.io/)

### Built With
* [Sinatra](http://sinatrarb.com/intro.html)
* [Sinatra-activerecord](https://github.com/sinatra-activerecord/sinatra-activerecord)
* [activerecord](https://rubygems.org/gems/activerecord/versions/5.0.0.1)
* [sqlite3](https://www.sqlite.org/index.html)
* [pry](https://github.com/pry/pry)
* [require_all](https://github.com/jarmo/require_all)
* [shotgun](https://github.com/rtomayko/shotgun)
* [IEX_Finance_API](https://github.com/dblock/iex-ruby-client)
* <span style='font-size:100px;'>&#128546;</span>


<!-- GETTING STARTED -->
## Getting Started

To get the application started you must run

```sh
shotgun
```
and then go to your favorite browser and visit this webpage "http://localhost:9393"

### Prerequisites

Before running shotgun, you will need to install the gems and add content to your database manually or you can use the seeds file:

To install the gems run the following:

```sh
bundle install
```

To run your migrations and update your db/schema.rb file to match the structure of the database, run the following:

```sh
rake db:migrate
```

To create data in the database, run the following:
```sh
rake db:seed
```

### Installation

1. Get a free API Key at [IEX_Finance_API](https://iexcloud.io/)

2. Clone the repo
```sh
git clone https://github.com/SincerelyBrittany/stockTracker.git
```
3. Install the gemfile packages
```sh
bundle install
```
4. Created a secrets.rb file, add the file to your gitignore, and enter your API KEYS:
```JS
  ENV['SECRET_TOKEN_ID'] = "KEY_HERE"
  ENV['PUBLISHABLE_TOKEN_ID'] = "KEY_HERE"
  ENV['SESSION_PASSWORD'] = "YOUR_OWN_PASSWORD_HERE"
```
<!-- USAGE EXAMPLES -->
## Usage

<a href="https://www.youtube.com/watch?v=lTFuoIIYX5E">View Demo</a> on ways to use the application.

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/SincerelyBrittany/stockTracker/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact
Connect/Follow me:

[![Linkedin][linkedin-shield]][linkedin-url]
[![Twitter][twitter-shield]][linkedin-url]
[![Dev.to][dev-to-shield]][dev-to-url]


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Micah Github](https://github.com/micahshute)
* [Flatiron School](https://flatironschool.com/)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/SincerelyBrittany/stockTracker.svg?style=flat-square
[contributors-url]: https://github.com/SincerelyBrittany/stockTracker/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/SincerelyBrittany/stockTracker.svg?style=flat-square
[forks-url]: https://github.com/SincerelyBrittany/stockTracker/network/members
[stars-shield]: https://img.shields.io/github/stars/SincerelyBrittany/stockTracker.svg?style=flat-square
[stars-url]: https://github.com/SincerelyBrittany/stockTracker/stargazers
[issues-shield]: https://img.shields.io/github/issues/SincerelyBrittany/stockTracker.svg?style=flat-square
[issues-url]: https://github.com/SincerelyBrittany/stockTracker/issues
[license-shield]: https://img.shields.io/github/license/SincerelyBrittany/stockTracker.svg?style=flat-square
[license-url]: https://github.com/SincerelyBrittany/stockTracker/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/sincerelybrittany/
[twitter-shield]:https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2FSincerelyBrittt
[twitter-url]: https://twitter.com/SincerelyBrittt
[dev-to-url]: https://dev.to/sincerelybrittany
[dev-to-shield]:https://img.shields.io/badge/-Dev.to-black.svg?style=flat-square&logo=dev.to&colorB=555
[product-screenshot]: public/readme_media/main_page.png
