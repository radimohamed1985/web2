// JavaScript Document


var xmlhttp;

xmlhttp=null;

function ajax() 
{
	if (window.XMLHttpRequest) 
    { 
     
    	xmlhttp = new XMLHttpRequest();
            
		if (xmlhttp.overrideMimeType) 
    	{
           
    		xmlhttp.overrideMimeType('text/xml');
             
    	}

    } 
     
	 else if (window.ActiveXObject) 
     { 
     try {
          xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
          } 
		  
          catch (e) 
          {
                try {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    } 
                catch (e) {}
            }
    }    
	  
}


function apply()
{
		var del_str = "jid";
		
		var j1=0;
		
		var jval ='' ;
		
		for (i=0;i<document.slogin_frm.length;i++)
		{
			
			ele = document.slogin_frm.elements[i];
			
			ele_name = ele.name;
			
		//	alert(ele_name) ;
				
			if (ele_name.substring(0,del_str.length) == del_str)
			{
			   if (ele.checked == true)
			   {
					j1 = j1 + 1;			
					
					jval = jval+document.getElementById(ele_name).value+'^$^' ;
			   }
			}	   
		}	
		
	//	alert(jval) ;
	
	 	var	tot = jval; //+'###'+id ;		
		
		if(j1<1)
		{
			alert("Please Select Atleast One Job");
		}
		else
		{

			ajax();
        
		  	if (xmlhttp!=null)
  			{
//alert(tot);
  				xmlhttp.onreadystatechange=japply_return;

	 			xmlhttp.open("GET","apply_jobs.php?tot="+tot,true);

				xmlhttp.send(null);
 										 
		 		return false;

			}

			else
  			{

	  			alert("Your browser does not support XMLHTTP.");

  			}				
										
		return false; 
	
		}
}


function japply_return()
{

	if(xmlhttp.readyState==4)
	{
		//alert(xmlhttp.responseText) ;
		if(xmlhttp.status==200)
		{
		
				
				var coun = xmlhttp.responseText ;
				
			if(xmlhttp.responseText != 0)
			{

				var err_msg = "You have Successfully Applied "+coun+" Jobs! " ;
				
				window.location.href = 'job_result.php?err_msg1='+err_msg ;
							

			}
			else
			{		
				var err_msg = "Check your Job Details! " ;
				
				window.location.href = 'job_result.php?err_msg2='+err_msg ;
				

			}
		}

		else
		{

			alert("Problem Occured when Retrieving Data");

		}

	}

}


function new_apply(jid)
{
//document.getElementById('jobapplyloading').style.display='block';
  //alert(jid);
		ajax();
		
		if(xmlhttp.status==200)
		{							
			if(xmlhttp.responseText != 0 && xmlhttp.responseText != 2)
			{
				document.getElementById(jid).innerHTML = "Applied" ;
		window.location.hash="#"+jid;

			}
			
		}
      
		  	if (xmlhttp!=null)
  			{

  				xmlhttp.onreadystatechange=new_return;

	 			xmlhttp.open("GET","new_apply_jobs.php?jid="+jid,true);

				xmlhttp.send(null);
 										 
		 		return false;

			}

			else
  			{

	  			alert("Your browser does not support XMLHTTP.");

  			}				
										
		return false; 
	
}


function new_return()
{

	if(xmlhttp.readyState==4)
	{

		if(xmlhttp.status==200)
		{
			//alert(xmlhttp.responseText) ;
							
			if(xmlhttp.responseText != 0 && xmlhttp.responseText != 2)
			{
				//alert('You have Successfully Applied !');
				document.getElementById('nap_msg').innerHTML = "<font color='blue'> <b> You have Successfully Applied ! </b> </font>" ;			//document.getElementById('light').style.display='block';
		//document.getElementById('fade').style.display='block';
		window.location.hash="#nap_msg";

			}
			else if(xmlhttp.responseText ==0) 
			{		
			//alert('Check your Job Details!');
			document.getElementById('nap_msg').innerHTML = "<font color='red'> <b> Check your Job Details! </b> </font>" ;
			window.location.hash="#nap_msg";
			}
			else
			{
				//alert('You already applied for this job!');
				document.getElementById('nap_msg').innerHTML = "<span><font color='red'><b> You already applied for this job! </b> </font></span>" ;
				window.location.hash="#nap_msg";
			}

		}

		else
		{

			alert("Problem Occured when Retrieving Data");

		}

	}

//document.getElementById('jobapplyloading').style.display='none';

}


function save()
{

		var del_str = "jid";
		
		var j1=0;
		
		var jval ='' ;
		
		for (i=0;i<document.slogin_frm.length;i++)
		{
			
			ele = document.slogin_frm.elements[i];
			
			ele_name = ele.name;
				
			if (ele_name.substring(0,del_str.length) == del_str)
			{
			   if (ele.checked == true)
			   {
					j1 = j1 + 1;			
					
					jval = jval+document.getElementById(ele_name).value+'^$^' ;
			   }
			}	   
		}	
		
		
	 	var	tot = jval; //+'###'+id ;
		
		//alert(tot) ;
		
		if(j1 <1)
		{
			alert("Please Select Atleast One Job ");
		}
		else
		{
	 
		ajax();
        
		  	if (xmlhttp!=null)
  			{

  				xmlhttp.onreadystatechange=save_return;

	 			xmlhttp.open("GET","jobsave.php?tot="+tot,true);

				xmlhttp.send(null);
 										 
		 		return false;

			}

			else
  			{

	  			alert("Your browser does not support XMLHTTP.");

  			}				
										
		return false; 
	
		}
}


function save_return()
{

	if(xmlhttp.readyState==4)
	{

		if(xmlhttp.status==200)
		{
//				alert(xmlhttp.responseText) ;
				
				var coun = xmlhttp.responseText ;
				
			if(xmlhttp.responseText != 0)
			{

				var err_msg = "You have Successfully  Saved! " ;
				
				alert(err_msg);
				
				window.reload();
				
				//window.location.href = 'job_result.php?err_msg1='+err_msg ;
							

			}
			else
			{		
				var err_msg = "Check your Job Details! " ;
				
				alert(err_msg);
				
				window.reload();
				
				//window.location.href = 'job_result.php?err_msg2='+err_msg ;
				

			}

		}

		else
		{

			alert("Problem Occured when Retrieving Data");

		}

	}

}




function apply_saved()
{

		var del_str = "jid";
		
		var j1=0;
		
		var jval ='' ;
		
		for (i=0;i<document.slogin_frm.length;i++)
		{
			
			ele = document.slogin_frm.elements[i];
			
			ele_name = ele.name;
				
			if (ele_name.substring(0,del_str.length) == del_str)
			{
			   if (ele.checked == true)
			   {
					j1 = j1 + 1;			
					
					jval = jval+document.getElementById(ele_name).value+'^$^' ;
			   }
			}	   
		}	
		
	//	alert(jval) ;
	
	 	var	tot = jval; //+'###'+id ;
		
		
		if(j1 <1)
		{
			alert("Please Select Atleast One Job ");
		}
		else
		{
	 
		ajax();
        
		  	if (xmlhttp!=null)
  			{

  				xmlhttp.onreadystatechange=sapply_return;

	 			xmlhttp.open("GET","apply_frm_save.php?tot="+tot,true);

				xmlhttp.send(null);
 										 
		 		return false;

			}

			else
  			{

	  			alert("Your browser does not support XMLHTTP.");

  			}				
										
		return false; 
	
		}
}


function sapply_return()
{

	if(xmlhttp.readyState==4)
	{
	
		if(xmlhttp.status==200)
		{

//		alert(xmlhttp.responseText) ;
								
			if(xmlhttp.responseText != 0)
			{

			//	document.getElementById('app_msg').innerHTML = "<font color='blue'> <b> You have Successfully  "+coun+" Applied Jobs! </b> </font>" ;
				
 		//		document.getElementById('email').focus();
		
				window.location.href = 'saved_succ.php' ;
				

			}
			else
			{		
			//	document.getElementById('app_msg').innerHTML = "<font color='red'> <b> Check your Job Details! </b> </font>" ;
			
				alert("Please Check Your Job Details") ;

			}

		}

		else
		{

			alert("Problem Occured when Retrieving Data");

		}

	}

}