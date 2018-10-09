
Search over 350+ Java articles...
Add two numbers in JSP easily
 Adding two numbers Here is an example on adding up two numbers in JSP. This is very simple as you see below. This requires very small piece of code. All i have done here is created a HTML file containing the input fields which contain the numbers to add up.Now the values in the input field are of type String, so i have done type casting and converted them into int using Integer.parseInt(). See how easy it looks.



Folder structure
Project folder: D:\Program Files\Apache Software Foundation\Tomcat 7.0\webapps\inputjsp

inputjsp
           |_ index.html
           |_ add.jsp
           |_ WEB-INF
                              |_ web.xml

index.html
<HTML>
  <HEAD>
    <TITLE>Addition and Subtraction</TITLE>
  </HEAD>

  <BODY>
		Enter First Number :
<br>
<input type="text" id="Text1" name="TextBox1">
<br>Enter Second Number :
<br>
<input type="text" id="Text2" name="TextBox2">
<br>Result :
<br>
<input type="text" id="txtresult" name="TextBox3">
<br>
<input type="button" name="clickbtn" value="Display Result" onclick="add_number()">

<script type="text/javascript">
function add_number() {
    
    var first_number = parseInt(document.getElementById("Text1").value);
    var second_number = parseInt(document.getElementById("Text2").value);
    var result = first_number + second_number;

    document.getElementById("txtresult").value = result;
}
        </script>
  </BODY>
  
 
</HTML>