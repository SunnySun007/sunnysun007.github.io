---
title: Resume
---

See [here](/resume.pdf) for the pdf version of my resume.


<h3 style="padding-bottom: 20px;">Experience</h3>
<ul>
{% for w in site.data.info_html.experience %}
<li>
<div style="display: flex; justify-content: space-between; border-width: 0">
  <span style="text-align: left; margin-right: 3px"> <b style="font-size: 130%;">{{ w.firm }}</b> </span>
  <span style="text-align: right; color:#7a7a7a; white-space: nowrap">{{ w.date }}</span>
</div>
</li>
<p style="margin-bottom: 0"><em>{{ w.title }}</em></p>
<ul>
{% for bullet in w.bullets %}<li>{{bullet}}</li>
{% endfor %}
</ul>
{% endfor %}
</ul>

<h3 style="padding-bottom: 20px;">Education</h3>
<ul>
{% for w in site.data.info_html.education %}
<li>
<div style="display: flex; justify-content: space-between; border-width: 0">
  <span style="text-align: left; margin-right: 3px"> <b style="font-size: 130%;">{{ w.institute }}</b> </span>
  <span style="text-align: right; color:#7a7a7a; white-space: nowrap">{{ w.year }}</span>
</div>
</li>
<p><em>{{ w.degree }}</em></p>
{% endfor %}
</ul>

<h3 style="padding-bottom: 20px;">Certifications</h3>
<ul>
{% for c in site.data.info_html.certifications %}
<li>
<div style="display: flex; justify-content: space-between; border-width: 0">
  <span style="text-align: left; margin-right: 3px"> {{ c.cert }} </span>
  <span style="text-align: right; color:#7a7a7a; white-space: nowrap">{{ c.date }}</span>
</div>
</li>
{% endfor %}
</ul>
  

<h3 style="padding-bottom: 20px;">Skills</h3>
<ul>
{% for group in site.data.info_html.skills %}<li><b>{{group.category}}</b>: {% for s in group.items %}{{s}}{% if forloop.last != true %}, {% endif %}{% endfor %}</li>
{% endfor %}
</ul>
