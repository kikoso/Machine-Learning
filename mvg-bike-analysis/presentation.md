---
marp: true
theme: default
class: lead
paginate: true
backgroundColor: #f8f9fa
---

# 🚴‍♂️ MVG Rad Bike Ride Analysis
### Exploring Urban Mobility in Munich with Kotlin

**Enrique López Mañas**
*Software Engineer & Data Enthusiast*

---

# 🙋‍♂️ About Me

* **Enrique López Mañas**
* Passionate about software engineering, data science, and uncovering patterns in data.
* Experienced in building robust systems and analyzing complex datasets.
* Strongly interested in how open technologies can solve real-world urban challenges.

---
# 🗺️ My Work in Open Source GIS

I have a deep background in mapping technologies and geospatial data visualization. 
Some of my key open-source contributions include:

* **Android Maps Compose:** Contributed to bridging the gap between traditional Google Maps APIs and modern Android Jetpack Compose paradigms.
* **Android Maps Utils:** Active contributor to utility libraries for advanced map functionality, including heatmaps, marker clustering, and GeoJSON integration.

![Android Maps Compose height:300](https://raw.githubusercontent.com/googlemaps/android-maps-compose/main/docs/images/scalebar.png)

* I love turning raw geospatial data (like we see in this dataset!) into actionable, visual insights.

---

# 🌍 Open Data in Munich

Munich has a thriving Open Data portal (*Open-Data-Portal München*), offering incredible resources for analysts and developers:
* **The Dataset:** MVG Rad (Munich's public bike-sharing system) ride data for the entire year of 2024.
* **Volume:** Over **700,000+** individual rides.
* **Geospatial context:** Start/End coordinates, rental station identifiers, and timestamps.
* **Why it matters:** Open data allows citizens to understand their own city's infrastructure, optimize logistics, and promote sustainable mobility.

---

# 📓 Kotlin Notebooks

Why use Kotlin for Data Science?
* **Interactive Development:** Jupyter Notebooks are no longer just for Python! 
* **Type Safety:** Kotlin brings static typing to the data science world, reducing runtime errors.
* **Familiar Syntax:** Seamless transition for Android and Backend developers who already love Kotlin.
* **Powerful Tooling:** Native integration with IntelliJ IDEA allows for rapid experimentation and immediate visual feedback.

---

# 📊 Kotlinx DataFrame & Kandy

The modern stack for data manipulation and visualization:

* **[Kotlinx DataFrame](https://kotlin.github.io/dataframe/)**: 
  * Strongly typed, immutable data structures.
  * Expressive DSL for filtering, grouping, joining, and mutating data.
  * E.g., Effortlessly parsing timestamps and merging weather API data with 700k rows.

* **[Kandy (Lets-Plot)](https://kotlin.github.io/kandy/)**: 
  * Declarative plotting library inspired by the Grammar of Graphics.
  * Easily generate scatter plots, bar charts, and maps directly inside the notebook.

---

# 💡 Key Insights Discovered

Through this stack, we analyzed:
1. **Rider Profiles:** Differentiating commuters (short weekday trips) from leisure riders (longer weekend trips).
2. **Fleet Rebalancing:** Identifying exact "sink" stations where bikes pile up and "source" stations where they run out.
3. **Weather Impact:** Proving the direct correlation between the average daily temperature and total bike usage by joining Open-Meteo API data.

---

# 🤝 Let's Connect!

* If you love to build, analyze, and solve complex problems (and occasionally over-analyze bike data):
  
**Let's connect!**
* *GitHub:* [kikoso](https://github.com/kikoso)
* *Email:* eenriquelopez@gmail.com

---

# 🙏 Thank You!

**Questions?**
