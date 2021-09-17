# Mission-to-Mars

## Purpose
To use BeatifulSoup and Splinter to scrape full-resolution images of Mars's hemispheres and titles of the images and store the scraped data on a Mongo database. A web application will then display the data.

## Deliverable 1
Gathered the image URL by navigating to the hemisphere page via partial text using the title. The image url was then built by parsing out the href attribute for the 'Sample' link. 

## Deliverable 2
New function called mars_hemisphere_images(browser) was added. Error handling was added on 126 through 133, and 146 through 151. 

## Deliverable 3
New table class was added to make the table more responsive.\n
```
<div class ="table-responsive">
    {{ mars.facts | safe }}
 </div>
```
Have also removed the extra row class on line 50 as this was not needed and was affecting the mobile responsiveness layout.<br>
```<div id="mars-facts" class = "row">```

Changes to the index.html
* 'Scrape New Data' button has been changed from blue to green, "active" class was added.
* Mars Fact table was stylized in the scraping.py file. Classes were add to df.to_html.<br>
    ```return df.to_html(classes=["table table-striped table-hover"])```

* Images were turned into thumbnail size and div class changed to 'col-md-3', img class set to "img-thumbnail"


## Screenshots

### Desktop
![Image of Webpage](resources/scraping_webpage.png)

### Responsive
![Responsive](resources/responsive.png)