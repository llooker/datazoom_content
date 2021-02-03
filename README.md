# Readme
##### All dashbaords require base Datazoom raw player table

## High level KPI Dashboard
#### Used by Execs for a high level overview
##### Requires `viewing_users` and `dates` derived tables

This dashboard only shows general platform performance, including growth, engagement, and revenue indicators.

Click on any of the top line measures to dive into the relevant granular dashboards.



## Audience Growth and Engagement Dashboard
#### This dashboard is to be used by product and marketing teams.
##### Requires `viewing_users` and `dates` derived tables

This dashboard describes when, where, what frequency, and for how long users are watching content on our platform. It categorizes users by their location, device and behavior.

Click on any pie chart or map to filter the entire dashboard by that user cohort.

**Definitions**

* Stickiness: the percentage of the monthly user base that is active each day.
* New Users: first active in the past week.
* Engaged Users: active both in the past week and two weeks ago.
* Dormant Users: Active two weeks ago but not active in the past week.

**Tips for success**

1. Engaged users are the most valuable, we want the ratio of Engaged users to increase. A good goal is 50%
2. Stickiness is another indicator of engagement level, a good goal is 20%
3. Try various filters to see which countries and device types could use additional marketing, and what time is preferable to drive growth, or existing users back to the platform.


## Ads Dashboard
#### Used by ad ops and sales teams
##### Requires `views_with_adbreakstart` derived table

This dashboard displays which ads are being consumed during which content and where. Can be used to determine if ads are successfully viewed or if they are driving users away.

**Metrics**

* Ad Tolerance: This is the rate at which users start an ad break and stay until the end. These users are not leaving during the ad break. Some users are more tolerant toward ads, and some content can sustain a higher ad saturation. Use filters to find where that point is.
* Standard Ad metrics: Impressions, completion, click through and fill rate. Mostly used to measure the success of an ad campaign.


**Filtering**

Filter by clicking on a content title, country, Ad ID, or Ad system from the charts.

Ad tolerance metrics are mostly related to content (filter), where as click and completion metrics are related to the ad itself.


## Content Performance Dashboard
#### Used by content producers and curators
##### Requires base Datazoom raw player table only

This dashboard communicates how users are consuming specific content titles.

Click on the *Most viewed content* to filter by series, and *Most viewed episode* to filter by episode.

**What can we learn?**

For a specific content title, we can:

* Understand at what point during playback, users abandoned playback. Use this information to create content that keeps users watching.
* See on the map, how many minutes on average are being consumed. Use this to target curation to the regions most appropriate.
* Time and date the content was most frequently viewed. Use this to time content release and marketing.


## Content Marketing Dashboard
#### Used by content curators and internal marketing teams
##### Requires `affinity` derived table

We can see what content users are inclined to watch by clicking on a "Content A" seed content within the content selector. Press cmd and click to select multiple seed content combination.

* These content recommendations can be used to increase engagement with existing users.
* Notifications can be sent out to users that have watched the seed content in the past, but have not watched the recommended content.
* Recommended content rows can be displayed in the platform, bespoke to the user's viewing history.
* Related content can be displayed on a content title screen or auto play after a stream has finished.


## QoE Dashboard
#### Used by Video Engineering and Incident Management
##### Requires `views_with_play_request` derived table

This dashboard displays various playback quality indicators. It is used to help the engineering teams identify and debug video issues.

Click on the bell icon on any of the time series charts to get alerts sent to slack or email should incident indicators pass a certain threshold.

**Suggested Monitoring**

* Realtime Error Rate. Video error rate should not surpass 20% and ad error rate should not surpass 30%.
* EBVS should stay below 10%
* Buffer Recovery rate should be above 90%


**Issue Investigation**

1. Are there any abnormalities in the time series charts? Look for spikes and flat lines.
2. Is there a correlation between spikes in the real time charts? Increase in error rate can be attributed to a specific error message.
3. Click on the error message charts to see what content titles contributed to that error. Perhaps there is a certain title that needs attention.
4. Use the country and OS filters to see if there is a disproportionate number of errors, and prioritise fixing these platforms accordingly.

**Definitions**

EBVS - Exit before video start. Users may not be able to playback video and also don't generate an error. EBVS will increase in under these circumstances. <br>
Buffer Recovery Rate - The percentage of buffer starts that have a resulting buffer end. Those buffers that do not have an end, either got stuck or the user did not tolerate the buffer duration.<br>
TTFF - Time to first frame. How long it takes to start video playback. Ideally the video should be quick to start, but the delay in starting can be tolerated more depending on the user's circumstances.


## Data Supervision Dashboard
#### Used by Data Engineers
##### Requires `views_with_adbreak_end` and `views_with_playback_start` and `views_with_play_request` and `views_with_adbreakstart` derived tables

Use this dashboard to identify missing events and data inconsistencies.

Required datazoom events can be turned on through the Datazoom dashboard https://app.datazoom.io/
