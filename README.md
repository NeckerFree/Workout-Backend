<a name="readme-top"></a>

<div align="center">

  <!-- <img src="murple_logo.png" alt="logo" width="140"  height="auto" /> -->
  <br/>

  <h3><b>Workout Backend</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Workout Backend] <a name="about-project"></a>

> Describe your project in 1 or 2 sentences.

**[Workout Backend]** This is the backend RoR project that uses a SQL Server database to store data about workout like running or different sport.

## 🛠 Built With <a name="built-with">Ruby on rails</a>
## 🛠 Built With <a name="built-with">SQL Server</a>

### Tech Stack <a name="tech-stack">Ruby on Rails</a>

> Describe the tech stack and include only the relevant sections that apply to your project.

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.microsoft.com/en-us/sql-server/">SQL Server</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

- **[API Service]**
- **[JWT]**
- **[Simple Command]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

<!-- ## 🚀 Live Demo <a name="live-demo"></a> -->

> Add a link to your deployed project.

<!-- - [Live Demo Link](https://yourdeployedapplicationlink.com) -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Describe how a new developer could make use of your project.

### Setup Database 
- Make sure that your SQL Server database is installed.
-  Open the file config\database.yml
- Modify the connection parameters to point your SQL Server  Database:
  `adapter: sqlserver`
  `dataserver: [server]\[instance]` 
  `port: 1433`
  `username: [your_user]`
  `password: [your_password]`

- If required drop existing database : `rake db:drop`
- Create databases for each enviroment (PRD, TEST, DEV): Using SQL Server Management Studio  
- Create db structure including tables : `rake db:migrate`
- If required seed initial data (stored in db\seeds.rb file): `rails db:seed`

### Prerequisites

In order to run this project you need:

### Setup

Clone this repository to your desired folder:

To get a local copy up and running follow these simple example steps.
- Clone Repository using
`git clone https://github.com/NeckerFree/Workout-Backend`
- Move into project directory
`cd Workout-Backend`

### Install

Install this project with:

run `bundle install`

### Usage

To run the project, execute the following command:

run `rails server`
After that the service is available by default in localhost:3000
For example POST: localhost:3000/authenticate
request data: {"email":"test@gmail.com","password":"XXXXXX"} 
<!--
### Run tests

To run tests, run the following command:


Example command:

```sh
  bin/rails test test/models/article_test.rb
```
--->

<!--
### Deployment

You can deploy this project using:


Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Elio Cortés**

- GitHub: [@NeckerFree](https://github.com/NeckerFree)
- Twitter: [@ElioCortesM](https://twitter.com/ElioCortesM)
- LinkedIn: [elionelsoncortes](https://www.linkedin.com/in/elionelsoncortes/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

<!-- ## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[new_feature_1]**
- [ ] **[new_feature_2]**
- [ ] **[new_feature_3]** -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project please start

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

<!-- ## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank... -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[How to create a simple RoR token based authentication API? ]**

  - [JWT authetication in Rails API](https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api)

- **[How to connect RoR project to SQL Server database?]**

  - [Connect Rails to SQL Server DB](https://www.spritle.com/blogs/2014/01/29/connect-rails-4-with-microsoft-sql-server-database/)
  - Commands:
  [`gem install activerecord-sqlserver-adapter`
   `gem install tiny_tds -- --with-freetds-include=C:\Ruby31-x64\msys64\ucrt64\include\freetds`]

- **[How to generate models, controlers and references in RoR? ]**

  - [`rails g model user name email password_digest`
`rails generate model training location:string distance:float duration:time start_hour:time training_date:date feel:integer`
`rails generate migration AddUserRefToTrainings user:references`
`rails generate scaffold_controller Training --no-helper --no-assets --no-controller-specs --no-view-specs`
`rails generate scaffold_controller User --no-helper --no-assets --no-controller-specs --no-view-specs`]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
