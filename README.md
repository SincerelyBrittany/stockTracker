[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/SincerelyBrittany/stockTracker">
    <img src="readme_media/logo.png" alt="Logo" width="300" height="80">
  </a>

  <h3 align="center">The Stock Watchlist</h3>

  <p align="center">
    An awesome Sinatra application that allows you to add stocks to your personalized watchlist!
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template">View Demo</a>
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

<a href="https://github.com/othneildrew/Best-README-Template">View Demo</a> on ways to use the application.

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
[dev-to-shield]:https://img.shields.io/endpoint?label=Dev.to&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAF10lEQVR4Xu1baUhcVxT%2BjASsGhGj4r60CYIBF4hU3Gs1goEEkSQUSSJUUCqRKApGBbdEQdEIhkYUIVFjJYhKEEWrtGJCxCVuoBBrNXFDUURc6hrLeel7GZ9vFqcz7Yzzzr95984953zvrPfdqwcdJz0d1x8iAApYgDmAbwB8pcBcTZryF4BJAMuyhJJlARcB%2FAzge0BrLeUQQCeAnwBMCAEhDYAfAFRq4VuX9rLJGn4E8At%2FghAA9OaHT5HyrM5bADz4liAEwK8AQjTJmVUoSweAUMn1%2BABQwFvSYp%2BXhxXFBEvJwMgH4FsAPfJW0fJx0rGX1YEPQBCA37RcQXnifwfgdxGAfxAQLYBnL6ILiDFADIJiFhDToLxEquXjYh0gFkLKVIKmpqZ4%2BPChoPWvr6%2Fjw4cPaG5uxuzsrOAcGxsb3L17F7a2tjI9KDMzEysrK7h%2B%2FTpCQ780boODg6ispC0KYUpPT4e1tTU3WFNTg54ewbZGORews7PDzMyMTOE%2FffqEsrIyJCUlYWdnh5tLyg8NDcHCwkJu%2BHBycmLAjIyMRH19PTefnjk7O%2BPwkBq6o3Tu3Dmsrq5CX1%2BfG7h06RLGxsaE%2BKkPAJZbQ0MDowBLaWlpePTokVzlaYKjoyM%2BfvwIMzMzLC8vQ0%2FvS7V%2B4cIFTE7SNt9Runr1KmN9LC0sLDCWJgQWAPUDQIKQ%2BXZ00P4D8OTJE8THxysEgIODA2dpvb298PLy4v4XGxuL8vLyY%2BsUFxcjMTGRe15dXY07d%2B5I46caAPb393Hv3j2GiYmJCcOQzI6lrq4uBAVRa3EcAAJjZGREUMC%2Bvj7OffLy8vDgwQNu3suXL3Hr1q1j%2FyP3cnd3555TrKmqqlIvAOTjBgYGHBNDQ0O8e%2FcOLi4uzLOtrS0YGxszZsi3AH9%2Ff7x%2B%2FVquRQQHB6OzkzZ1PxMFR0tLS1CsYYniytISbWJ9IYpXc3Nz%2Fy0AxO3x48e4f%2F8%2Bx5j8cH5%2BXmkACGAKbpJAe3p6MgGVpRs3boAsg6Xx8XG4urrKAlc1LsC3AOJIaZLSEUsUtaenp5UGgNZpa2vDlStXuDWTk5NRVFTE%2FaasQ7GBpdLSUiQkJJweAFJSUlBQUMAp1NraivDwcO73%2B%2FfvcfEi7eR%2FJqofXr16pdkAUCrb2NjghCwsLMSLFy8EhSaTp9jC0ubmJpMid3d3YW9vz6RMlg4ODnD%2B%2FHmsra1pNgB86SiFlZSUCAp95swZLC4uwtycduw%2FExtEKdo%2Fe%2FaMe%2F727Vv4%2BPjIUp7G%2Fv8YcBIAaG5dXd2R9JeVlYXs7Gwm1d2%2BfZtbLicnB1RKyyHtAyAmJgYVFRWcXt3d3QgMDGQKJsneIiAgADSm8QAoWgewilB%2FMDU1xem1t7cHb29vDAwMCMaGUwcAKTQxMQHqBViiSH%2Ft2jXud0tLC6gnUIDU5wL5%2BflITU3lZGDremUrQUllnj59iri4OKn6UQdKhZgCpD4AJIsWSlNGRkagnkEVAPDbY76ibm5uGB0dVUB%2FFWYB1iSpGaJqTLICGx4ehocHfY4%2F3gyFhITgzZs3gsJShSnUxgq1x%2BwC1AtYWVlJa3%2F5fFRjAfKgjo6OxvPnzwUBkPVftnwWmsNvj9k5tbW1iIqKkicSO65%2BAKhZuXz5MqgyI8rNzUVGRoZCAsoCgHK%2BUJsbFhaG9vZ2hdZXWSEkjRvtA9y8efNIi0r%2B2d%2Ffj7Nnz8oVUhYAtDvU1NR0JPpL2yOQwUg5C6C%2Bu7Gx8di65K9Ue1PXR6lJ2pvw8%2FNjWmXq1WVRREQEaEtLGtEeA22x%2Bfr6gsCmTZPt7W25wEpMUA6Ak3DQ8LkiAOKHEWU%2BjGi4WZ9EPNEFRBcQXUA8JieeE2SjpnhOkJc%2FdP6coM4fltb54%2FLkETp9YYIAOM1XZugQwR%2BScU9XLk3RfSG6NFXHbxp04docndOha3NH3ry0OkCoq6LA%2BDUAw5O0XBowl976n%2F%2Fm4qQG6KB%2BEcS7w%2BrHWLM5%2FA1PMwJu5EYKfgAAAABJRU5ErkJggg%3D%3D&style=social
[product-screenshot]: readme_media/main_page.png
