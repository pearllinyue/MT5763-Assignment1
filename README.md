# MT5763-Assignment1

# Introduction

Read the associated article on Moodle (__Herald_article.pdf__ _New Zealand Herald_ 4/07/2000).


A forensic scientist has approached you to analyse his data at the end of an experiment. He has been growing Cannabis plants in different soil types and analysing the chemical composition of the leaves. He is specifically interested in whether there are differences between those plants grown in standard store-bought potting mix, and those that are grown in general outdoor soil. It is thought that if a plants chemical composition is very specific to its soil type, then this may assist in the prosecution of persons accused of drug production and distribution. 

The data for this project is contained in the file __PotPlants_18.xlsx__. The variables contained in the dataset are the reference codes (not of interest to us), the type of soil used (there are 4 types), and the levels of various elements measured in the leaves. The variables are:

  * __Sample Name__ Reference number of the samples.
  
  * __Group__ The four soil types: Potting mix (pm) and three locations about New Zealand. These are bhb, mb, and nth, being: Blockhouse Bay (Auckland suburb), Mission Bay (Auckland suburb) and Northland (a northern region).
  
  * __Mg-Th__ The elements measured in the leaves. Note the units of measurement are not given.
  

----------------------


# What to do

* Read the data into your analysis package and clean the data. This means making sure the data is free from any demonstrably wrong values and that the data is in a form appropriate for your analysis. Observe that there is a summary sheet in the data - but don't always trust your client's work. You'll have to explain any discrepencies however. You can save the sheets as CSV or similar to start, or access the spreadsheet directly from your software.

* Differences between the sheets in the data spreadsheet are not deemed interesting, so the data should be combined.

* Do exploratory analysis of the data. This should include tables of numeric summaries and plots that are designed to address the questions below. The exploration should also help with the cleaning of the data.

* Repeat all of your data cleaning and exploratory data analysis in both SAS and R. Present one set of outputs in the report body, however the outputs should be mirrored in the other package in the appendix e.g. table 1 from SAS in the body, table 1b from R in the appendix.

* Make sure everything is reproducible i.e. include __tidy, commented code files__ that would allow someone to reproduce the results with effectively the click of a button.

* Produce a report that explores the data. Your target audience is not statistical, so although you should include details, there should be interpretation accesible to a lay audience. 


----------------------


The primary questions requiring answering are:

* Do the data indicate differences in the elemental composition of Cannabis leaves grown in different soil types?

* Do some of the elements appear to be related to one another in terms of their levels in the sampled leaves? Present no more than 5 pairs of elements - choose pairs with interesting relationships.

* Do you think the results of this experiment will ultimately allow the determination of what soil the plants were grown in, just from the elemental composition of the leaves? Be sure to consider what __population(s)__ we are generalising to. Give a detailed response i.e. if you do not think the aims of the study can be achieved, explain why, and what would be required to achieve the goal. 

__You do not have to analyse all the elements__, only a few (<6) which you consider relevant in answering the above questions. 


----------------------


# Assessment

The report should be roughly limited to 1500 words and should contain relevant plots - however you can put extra output in an appendix at the end. Include an introductory section describing the purpose of your investigation and a discussion at the end summarising your findings. Include an executive summary at the start of the report. 

Do not include raw output or code in the body of the report - make sure any results you include are tidy (e.g. in a table) and are relevant. Include an appendix in your report with the SAS & R code that you used. 


The report should:
 
* answer all the questions given above

* be 'professionally' produced for your target audience in a word processor (e.g. Microsoft Word)

* include references in an established academic style, for example your software, the article above, other articles

* be converted to a .pdf file (and zipped with your code files - one for R, one for SAS)

* be uploaded to Moodle

* include your ID number in the document name

* don't use your name in the document, only your ID number for anonymity.


__Note:__ in-depth analysis is not required at this stage of the module - this is an exploration based on the numerical/graphical summaries we have covered and a logical consideration of the problem. You __can__ do formal tests, but it is not necessary for this project. This project constitutes 20% of your overall grade.

You'll be assessed on:

* Your code - is it readable, logical, tidy, does it do what it should?

* Your report - is it suitable for a client? Professional, presentable, referenced, logical, readable.

* Your understanding of the problem, the questions, and your responses to them.


