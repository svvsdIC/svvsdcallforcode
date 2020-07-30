# SeniorCitizensConnect

## Contents

1. [Short description](#short-description)
1. [Demo video](#demo-video)
1. [The architecture](#the-architecture)
1. [Long description](#long-description)
1. [Project roadmap](#project-roadmap)
1. [Getting started](#getting-started)
1. [Live demo](#live-demo)
1. [Built with](#built-with)
1. [Contributing](#contributing)
1. [Versioning](#versioning)
1. [Authors](#authors)
1. [License](#license)
1. [Acknowledgments](#acknowledgments)

## Short Description

* Using IBM Watson to bridge the gap between generations *

## Architecture

![Video transcription/translation app](https://github.com/jiportilla/personality-insights-nodejs/blob/master/docs/c4c-2be-update.png?raw=true)
1. The user navigates to the website UI through the cloud
2. The user enters their writing sample
3. The sample is sent to the router
4. The sample is sent to Watson's personality insights tool
5. Watson's personality insights creates a profile as a json and sends it back to the router
6. The router sends the results to the UI to be displayed
7. The router stores the json file in the DB
8. A back-end admin accesses the notebook to run the matching algorithm
9. The json file is sent from the DB to the Jupyter notebook to match users, and matches are sent back to the original DB
10. The matches are stored in a specific DB

## Long Description

### Problem

With many states and counties in America easing up on social distancing requirements and restrictions, it may seem like things are finally starting to return back to normal. However, many immunocompromised individuals are still in the thick of it. 1.4 million senior citizens in America have extremely limited access to the outside world because the consequences of catching COVID-19 are very severe for them. The teenage, and more specifically high school, population doesn't have the same risk to COVID-19 as the seniors do, but they suffer the effects of loneliness much more than adults generally do. This isolation can have negative effects on elders' and students' health both pysically and mentally. 
* Social isolation and loneliness have been linked to many mental and physical health problems such as heart disease or depression, and are estimated to increase the chance of early death by 26%. 

The challenge of finding a safe way for these senior citizens and students to connect with others requires a solution that limits physical contact with other people while also appealing to the seniors' often limited knowledge of technology. 

### Our Idea

SeniorCitizensConnect is a program which utilizes technology and letter writing to make a personalized intergenerational pen pal exchange. It incorporates IBM Watson's Personality Insights to create a personality profile of both seniors and students, and then uses a matching algorithm to correlate a senior to a student to allow them to write letters. 

## Project Roadmap

![Video transcription/translation app](https://github.com/WilliamVanVuuren/William/blob/master/SeniorCitizensConnect%20Roadmap.png)

## Getting Started

### Prerequisites

1. Sign up for an [IBM Cloud account](https://cloud.ibm.com/registration/).
1. Download the [IBM Cloud CLI](https://cloud.ibm.com/docs/cli/index.html#overview).
1. Create an instance of the Personality Insights service and get your credentials:
    - Go to the [Personality Insights](https://cloud.ibm.com/catalog/services/personality-insights) page in the IBM Cloud Catalog.
    - Log in to your IBM Cloud account.
    - Click **Create**.
    - Click **Show** to view the service credentials.
    - Copy the `apikey` value.
    - Copy the `url` value.

### Configuring the application

1. In the application folder, copy the *.env.example* file and create a file called *.env*

    ```
    cp .env.example .env
    ```

2. Open the *.env* file and add the service credentials that you obtained in the previous step.

    Example *.env* file that configures the `apikey` and `url` for a Personality Insights service instance hosted in the US East region:

    ```
    PERSONALITY_INSIGHTS_IAM_APIKEY=X4rbi8vwZmKpXfowaS3GAsA7vdy17Qh7km5D6EzKLHL2
    PERSONALITY_INSIGHTS_URL=https://gateway-wdc.watsonplatform.net/personality-insights/api
    ```
### Running locally

1. Install the dependencies

    ```
    npm install
    ```

1. Run the application

    ```
    npm start
    ```

1. View the application in a browser at `localhost:3000`

### Deploying to IBM Cloud as a Cloud Foundry Application

1. Login to IBM Cloud with the [IBM Cloud CLI](https://cloud.ibm.com/docs/cli/index.html#overview)

    ```
    ibmcloud login
    ```

1. Target a Cloud Foundry organization and space.

    ```
    ibmcloud target --cf
    ```

1. Edit the *manifest.yml* file. Change the **name** field to something unique.  
  For example, `- name: my-app-name`.
1. Deploy the application

    ```
    ibmcloud app push
    ```

1. View the application online at the app URL.  
For example: https://my-app-name.mybluemix.net


## Built With

- [IBM Cloudant](https://cloud.ibm.com/catalog?search=cloudant#search_results) - NoSQL database
- [IBM Watson's Personality Insights](https://personality-insights-demo.ng.bluemix.net/) - greatly modified code
- [IBM Watson Studio](https://www.ibm.com/cloud/watson-studio)
- [Jupyter Notebook](https://jupyter.org/) - Python Script

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

This project uses semantic versioning.

## Authors

- Axel Reitzig - [LinkedIn](https://www.linkedin.com/in/areitzig/)
- Ivan Portilla - [LinkedIn](https://www.linkedin.com/in/ivanportilla/)
- William van Vuuren - [LinkedIn](https://www.linkedin.com/in/william-van-vuuren-0830081a3/)
- William Manning - [LinkedIn](https://www.linkedin.com/in/will-manning-389a391a2/)
- Emmett Macias - [LinkedIn](https://www.linkedin.com/in/emmett-macias-37051115a/)
- Timmy -
- Kayleigh Vu - [LinkedIn](https://www.linkedin.com/in/kayleigh-vu-433a391a2/)
- Kane Ding - [LinkedIn](https://www.linkedin.com/in/kane-ding-a04a371a2/)
- Sean Webb - 

See also the list of [contributors](https://github.com/svvsdIC/svvsdcallforcode/graphs/contributors) who participated in this project.

## License

This sample code is licensed under Apache 2.0.  
Full license text is available in [LICENSE](LICENSE).

## Acknowledgements

Code based on [German Attanasio's README Template](https://github.com/watson-developer-cloud/personality-insights-nodejs/blob/master/README.md)
