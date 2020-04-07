
<%@page import="javax.swing.JOptionPane"%>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css" />
<style>

.widget-reservation-box { position:absolute; top:80px; left:10%; z-index:998}
.res { float:left; display:inline-table; width:140px;}
.reservationHeading { position:absolute; width:100%; top:3px; left:0px}
.reservationHeading h2 { color:#fff; font-size:25px;}
.widget-reservation-box .form1 {    position: relative; top: 0px; padding:50px; background:rgba(0, 0, 0, 0.44);display:inline-block; border:2px solid #fff; border-radius:20px  }
.widget-reservation-box .form2 { padding:10px; clear:both;background:#710e57; height:75px;}
.widget-reservation-box .select-wrapper { float:left; margin-left:5px}
.widget-reservation-box b {  line-height:1.5; color:#ffffff; font-size:13px; text-transform:none; font-weight:200}
.widget-reservation-box input {  margin:0 0 10px 0; font-size:13px; color:#000; border-radius:15px; border:none; padding:4px; width:100%;background:white;}
.widget-reservation-box select {  margin:0 0 10px 0; font-size:13px; color:#fff; border-radius:3px; border:none; padding:4px; width:100%;background:none;}
.widget-reservation-box select option { background:rgba(0, 0, 0, 0.83)}
.widget-reservation-box button {  margin:13px 0 10px 0; font-size:15px; background:#5f0808; border:none; color:#fff; font-weight:bold; padding:8px; width:100%; border-radius:10px;}
.widget-reservation-box .reservationHeadingone button { padding:0px; margin:0px; background:#9b5689; width:50%; float:left; text-align:center; color:#fff; font-size:11px; padding:10px; font-weight:lighter; border:none}
.widget-reservation-box .reservationHeadingtwo button { padding:0px; margin:0px; background:#710e57; width:50%; float:left; text-align:center; color:#fff; font-size:11px; padding:10px; font-weight:lighter; border:none}


    background-image: linear-gradient(to bottom, #f9d257, #f9d257);
}


@media (min-width: 1400px) {
.res { width:150px;}
.widget-reservation-box input { padding:5px; font-size:18px;}
.widget-reservation-box button { margin:15px 0 10px 12px; font-size:22px;}
.widget-reservation-box input::placeholder { color:#000; font-size:13px} 

}

</style>
<title>Widget</title>



</head>
<body>

<%
		String username=request.getParameter("username");
		String lastname=request.getParameter("lastname");
		String password=request.getParameter("password");
		session.setAttribute("username", username);
		session.setAttribute("lastname", username);
		session.setAttribute("password", password);
    
		 if(lastname!=null&password!=null&username!=null)
	        {
   				 if(request.getParameter("add")!=null)
   					 {
        				response.sendRedirect("Home.jsp");
    				}
   				else 
    				{
    					JOptionPane.showMessageDialog(null, "Redirected");
   					 }
	        }
  %>

 <div class="content">
	<div class="innerbanner">
    	
        <div class="container">
     	<div class="row">
    			<div class="widget-reservation-box ">
					<div class="form1"> 
                        <form class="hotel" method="GET">
							
                      
                        <div class="res">
                            <b translate="username">First Name</b>
                            <input autocomplete="off" type="text" id="username" name="username" placeholder="Username" />
                        </div>
                         <div class="res">
                            <b translate="lastname">Last Name</b>
                            <input autocomplete="off" type="text" id="lastname" name="lastname" placeholder="Last Name"/>
                        </div>
                        <div class="res">
                            <b translate="password">Password</b>
                            <input autocomplete="off" type="password" id="password" name="password" placeholder="Password"/>
                        </div>
                      
                     <div class="res">       
                            
                    <button type="submit" translate="submit" id="add" name="add">
                        ADD<i class="fa fa-arrow-right" aria-hidden="true"></i>
                    </button>

                    </div>
                    
                </form>
               
					</div>	
            	</div>
        </div>
     </div>
    </div>

 </div>