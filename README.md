
### Design and Development of a Dashboard for a Real Time Anomaly Detection System.
#### A widget based architechture for a dashboard using [Jaggery.js](http://jaggeryjs.org)

#### About the Parent project

The project is a Dashboard for Real Time Anomaly Detection System with the use of modern complex event processing techniques, based on the behavior of the user, using modern dashboard developing techniques. The system uses log files from the data sources (Web server and Proxy Server) and processes them using the [WSO2 CEP](http://wso2.com/products/complex-event-processor) based on the rules which were generated using the Siddhi Query Language. The processed events will be then sent to an output adapter and then will be transmitted to an interactive dashboard which is used by the system administrators. The dashboard makes users to visualize several aspects of the data such as Daily alerts and summaries and security incidents.

#### Widget Based Dashboard

Mainly Javascript and HTML5 has been adapted to implement the widget based architecture. The dashboard is developed based on the single page application concept and all the components in the dashboards are considered as separate widgets. By considering likewise the system is given a full customizability feature to the user. Widgets’ behavior have been developed using client side javascript language and the views of each widgets have been developed using HTML5.

Each widget in the dashboard consist of a visualization element and that is being implemented using a Javascript visualization library known as D3.js. Each bar chart, pie chart and other charts have been developed using this library. Apart from that Report generating Tools have been used to implement the report generation.

As the server side of this dashboard we are using a [Jaggery js](http://jaggeryjs.org) application. The dashboard retrieve data from the MySQL database through a Jaggery js controller. After getting data through controllers, data are passed to the client side through AJAX calls. Mainly this approach is taken to handle the data which are coming as summarized and drilled down data from the Data Analytical Server.

We have taken another approach to handle the data which come from Complex Event Processor as alerts or warnings. These data are received through a web socket and then handled by the client side.


### Contributors
[Charith Lakmina](https://github.com/charithhewage)
[Nadeesha Weerasooriya](https://github.com/nadzrw)
[Harindu Korala](https://github.com/hckorala)
[Damitha Kithmal](https://github.com/dkithmal)
