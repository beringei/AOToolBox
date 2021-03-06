shinyUI(fluidPage(   
    sidebarLayout(
    sidebarPanel(
    #helpText("Upload collected data"),
    fileInput('json.output.file', '1. Upload "Username_Date_Time.dat"'),
	fileInput('behaviors.json', '2. Upload "behaviors.json"'),
    fileInput('layout_info.json', '3. Upload "layout_info.json"'),
    checkboxInput("colmerge", "Merge identically-named columns from dyadic and self-directed/health data", FALSE),
	    HTML('<hr style="height:1px;border:none;color:#333;background-color:#333;" />'),
    downloadButton("downloadZip", label = "Download all data as zip"),
    br(), br(), h5("    OR"), br(),      
      downloadButton('downloadSessionsTable', 'Download list of sessions'),
      downloadButton('downloadFocalsTable', 'Download list of focals'),
      downloadButton('downloadBehaviorsTable', 'Download list of behaviors'),
	  downloadButton('downloadScansTable', 'Download list of scans'),
	  downloadButton('downloadBackgroundTapsTable', 'Download list of background taps'),
	  downloadButton('downloadCommentsTable', 'Download list of comments'),
	  downloadButton('downloadDayVarsTable', 'Download day variables'),
	  downloadButton('downloadFocalVarsTable', 'Download focal variables'),
	  downloadButton('downloadContinuousVarsTable', 'Download global variables'),
  	  downloadButton('downloadScanVarsTable', 'Download scan variables')
    ),
    mainPanel(
      br(),
  	downloadButton("downloadBehaviorsView", "Download behaviors", icon=icon('download'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
  	downloadButton("downloadScansView", "Download scans", icon=icon('download'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
  	HTML("<h3><b>    Sessions</b></h3>"),
	br(),
    d3tfOutput('sessionsDT', height = "auto"),
	br(),
	actionButton('duplicateSessionRow', 'Duplicate selected row', icon=icon('copy'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	#actionButton('addBlankSessionRow', 'Add blank row', icon=icon('plus'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	actionButton('deleteSessionRow', 'Delete selected row', icon=icon('close'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
    hr(),
    hr(),
    HTML("<h3><b>    Focal samples</b></h3>"),
	br(),
    d3tfOutput('focalsDT', height = "auto"),
	br(),
	actionButton('duplicateFocalRow', 'Duplicate selected row', icon=icon('copy'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	#actionButton('addBlankSessionRow', 'Add blank row', icon=icon('plus'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	actionButton('deleteFocalRow', 'Delete selected row', icon=icon('close'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
    hr(),
    hr(),
    HTML("<h3><b>    Dyadic and self-directed/health data</b></h3>"),
    br(),    
    d3tfOutput('behaviorsDT', height = "auto"),
	br(),  
	actionButton('duplicateBehaviorRow', 'Duplicate selected row', icon=icon('copy'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	#actionButton('addBlankSessionRow', 'Add blank row', icon=icon('plus'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	actionButton('deleteBehaviorRow', 'Delete selected row', icon=icon('close'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),  
    hr(),
    hr(),
    HTML("<h3><b>    Scan list</b></h3>"),
	br(),    
    d3tfOutput('scanListDT', height = "auto"),
    br(),    
    actionButton('duplicateScanListRow', 'Duplicate selected row', icon=icon('copy'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	#actionButton('addBlankSessionRow', 'Add blank row', icon=icon('plus'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	actionButton('deleteScanListRow', 'Delete selected row', icon=icon('close'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
    hr(),
    hr(),
    HTML("<h3><b>    Scan data</b></h3>"),
	br(), 
    d3tfOutput('scansDT', height = "auto"),
    br(),
    actionButton('duplicateScanRow', 'Duplicate selected row', icon=icon('copy'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	#actionButton('addBlankSessionRow', 'Add blank row', icon=icon('plus'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),
	actionButton('deleteScanRow', 'Delete selected row', icon=icon('close'), style="color: #090909; background-color: #cdcdcd; border-color: #090909"),    
    hr(),
    hr()
)
)
)
)

































