<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "HospitalManagment";
String userid = "root";
String password = "password";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>








<!DOCTYPE html>
<html>

<link rel="apple-touch-icon" sizes="180x180" href="image/lX3KDWaM.jpg">
	<link rel="icon" type="image/png" sizes="32x32" href="image/lX3KDWaM.jpg">
	<link rel="icon" type="image/png" sizes="16x16" href="image/lX3KDWaM.jpg">



<script>


               var username = localStorage.getItem('inputVal');




</script>







<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>Welcome -Famer </title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="image/lX3KDWaM.jpg">
	<link rel="icon" type="image/png" sizes="32x32" href="image/lX3KDWaM.jpg">
	<link rel="icon" type="image/png" sizes="16x16" href="image/lX3KDWaM.jpg">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/style.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text|Work+Sans:400,700" rel="stylesheet">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
                    <div class="loader-logo"><img src="image/sdfggf1.png" alt="" width="390px"></div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">
				Loading...
			</div>
		</div>
	</div>

	<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
				<form>
					<div class="form-group mb-0">
						<i class="dw dw-search2 search-icon"></i>
						<input type="text" class="form-control search-input" placeholder="Search Here">
						<div class="dropdown">
							<a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
								<i class="ion-arrow-down-c"></i>
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">From</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">To</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">Subject</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="text-right">
									<button class="btn btn-primary">Search</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="header-right">
			<div class="dashboard-setting user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="javascript:;" data-toggle="right-sidebar">
						<i class="dw dw-settings2"></i>
					</a>
				</div>
			</div>
			<div class="user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
						<i class="icon-copy dw dw-notification"></i>
						<span class="badge notification-active"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<div class="notification-list mx-h-350 customscroll">
							<ul>
								<li>
									<a href="#">
										<img src="vendors/images/img.jpg" alt="">
									
									</a>
								</li>
				
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
						
						
					</a>
					
				</div>
			</div>
			
		</div>
	</div>


	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="index.html">
				<img src="image/logo.png" alt="" class="dark-logo">
				<img src="image/logo.png?$description" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-house-1"></span><span class="mtext">Home</span>
						</a>
						<ul class="submenu">
							
						</ul>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-edit2"></span><span class="mtext">Hospital Works</span>
						</a>
						<ul class="submenu">
							<li><a href="adddoctor.jsp">Add New Doctor</a></li>
                                                        <li><a href="useradditems.php">Add New Nurse</a></li>
                                                        <li><a href="useradditems.php">Add New Drugs</a></li>
						</ul>
					</li>
                                        
                                        
                                        
                                        <li>
						<a href="#" class="dropdown-toggle">
							<span class="micon fa fa-users"></span><span class="mtext">Show Hospital  Works</span>
							
						</a>
                                            
                                            <ul class="submenu">
							<li><a href="useradditems.php">Show  Doctor</a></li>
                                                        <li><a href="useradditems.php">Show   Nurse</a></li>
                                                        <li><a href="useradditems.php">Show   Drugs</a></li>
						</ul>

					</li>
                                        
                                        
                                        
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon fa fa-map-marker"></span><span class="mtext">Hospital Patients</span>
						</a>
						<ul class="submenu">
							<li><a href="map/admin-map.php">Add new Patients</a></li>
							<li><a href="">Add Show Patients</a></li>
							 
						</ul>
					</li>



					

					<li>
						<a href="map/user-map.php" class="dropdown-toggle no-arrow">
							<span class="micon fa fa-users"></span><span class="mtext">Profile</span>
							
						</a>

					</li>

				
							
						

							 
						</ul>
					</li>
					
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20">
			<div class="card-box pd-20 height-100-p mb-30">
				<div class="row align-items-center">
					<div class="col-md-4">
						<img src="image/dh1.jpg " alt="">
					</div>

					
					<div class="col-md-8">
						<h4 class="font-20 weight-500 mb-10 text-capitalize"  >
							Welcome back!

							
								</h4>
								  

							   
                   
						
							

							
							
							<div class="weight-600 font-30 text-blue"> <h2> 
                                                            
                                                            
                                                            <%
    if (request.getParameter("username") == null) {
        out.println("Please enter your name.");
    } else {
        out.println("Hello <b>"+request. getParameter("username")+"</b>!");
    }
%>
                                                            
                                                            
                                                            </h2></div>
						
						<p class="font-18 max-width-600" style=" font-family: 'Work Sans', sans-serif;
 font-weight: 300; ">Best this season only at Famers <br><span> Over 500+ Product with buy <span><br> More hight Rate. </p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div id="chart"></div>

								


							</div>
							<div class="widget-data">
								<div class="h4 mb-0"><h1><?php echo $total;; ?></h1></div>
								<div class="weight-600 font-14">Total Farmas</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div id="chart2"></div>
							</div>
							<div class="widget-data">

							 
								<div class="h4 mb-0"><h1><?php echo $total1;; ?></h1></div>
								<div class="weight-600 font-14">MY Total Oder</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div id="chart3"></div>
							</div>
							<div class="widget-data">
								<div class="h4 mb-0"><h1><?php echo $area;; ?></h1></div>
								<div class="weight-600 font-14">MY Total Harvest Area(Fet)</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div id="chart4"></div>
							</div>
							<div class="widget-data">
							<div class="h4 mb-0"><h1>Rs<?php echo $total6;; ?>/-</h1></div>
            
								<div class="weight-600 font-14">Estimated Revenue</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    
    
							

 

 




							
<div class="card-box mb-30" style="margin-top: 2%;">
				<h2 class="h4 pd-20">My Products</h2>
				<table class="data-table table nowrap">
					<thead>
						<tr>
							<th class="table-plus datatable-nosort">status</th>
							<th>Email</th>
							<th>Phone Number</th>
							<th>Image</th>
							<th>Category</th>
							<th>City</th>
							<th>desription</th>
							<th>Amount</th>
							<th>Price</th>
							<th>ID</th>
						
							<th class="datatable-nosort">Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="table-plus">

<%							
							try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("email") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
							
								
					
		
			
			
	
	<!-- js -->
	<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
	<script src="vendors/scripts/layout-settings.js"></script>
	<script src="src/plugins/apexcharts/apexcharts.min.js"></script>
	<script src="src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="vendors/scripts/dashboard.js"></script>
	<script src="vendors/scripts/user.js"></script>

	<script>




	 
									
									
				
	  

   </script>

  

<script>

var a = <?php  echo $total?>;

var  x= 5 * parseInt(a);

var b = <?php  echo $total1?>;

var  oder = 5 * parseInt(b);

var area =<?php  echo $area?>;
 var sumarea  = 10 * parseInt(area )/1000;


var table = <?php  echo $total3?>;

var  carrot = 1 * parseInt(table);


var price = <?php  echo $total6?>;

var  p =  parseInt(price) / 1000;



var options = {
	series: [x],
	grid: {
		padding: {
			top: 0,
			right: 0,
			bottom: 0,
			left: 0
		},
	},
	chart: {
		height: 100,
		width: 70,
		type: 'radialBar',
	},	
	plotOptions: {
		radialBar: {
			hollow: {
				size: '50%',
			},
			dataLabels: {
				name: {
					show: false,
					color: '#fff'
				},
				value: {
					show: true,
					color: '#333',
					offsetY: 5,
					fontSize: '15px'
				}
			}
		}
	},
	colors: ['#ecf0f4'],
	fill: {
		type: 'gradient',
		gradient: {
			shade: 'dark',
			type: 'diagonal1',
			shadeIntensity: 0.8,
			gradientToColors: ['#61bc47'],
			inverseColors: false,
			opacityFrom: [1, 0.2],
			opacityTo: 1,
			stops: [0, 100],
		}
	},
	states: {
		normal: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		hover: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		active: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
	}
};

var options2 = {
	series: [oder],
	grid: {
		padding: {
			top: 0,
			right: 0,
			bottom: 0,
			left: 0
		},
	},
	chart: {
		height: 100,
		width: 70,
		type: 'radialBar',
	},	
	plotOptions: {
		radialBar: {
			hollow: {
				size: '50%',
			},
			dataLabels: {
				name: {
					show: false,
					color: '#fff'
				},
				value: {
					show: true,
					color: '#333',
					offsetY: 5,
					fontSize: '15px'
				}
			}
		}
	},
	colors: ['#ecf0f4'],
	fill: {
		type: 'gradient',
		gradient: {
			shade: 'dark',
			type: 'diagonal1',
			shadeIntensity: 1,
			gradientToColors: ['#61bc47'],
			inverseColors: false,
			opacityFrom: [1, 0.2],
			opacityTo: 1,
			stops: [0, 100],
		}
	},
	states: {
		normal: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		hover: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		active: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
	}
};

var options3 = {
	series: [sumarea],
	grid: {
		padding: {
			top: 0,
			right: 0,
			bottom: 0,
			left: 0
		},
	},
	chart: {
		height: 100,
		width: 70,
		type: 'radialBar',
	},	
	plotOptions: {
		radialBar: {
			hollow: {
				size: '50%',
			},
			dataLabels: {
				name: {
					show: false,
					color: '#fff'
				},
				value: {
					show: true,
					color: '#333',
					offsetY: 5,
					fontSize: '15px'
				}
			}
		}
	},
	colors: ['#ecf0f4'],
	fill: {
		type: 'gradient',
		gradient: {
			shade: 'dark',
			type: 'diagonal1',
			shadeIntensity: 0.8,
			gradientToColors: ['#61bc47'],
			inverseColors: false,
			opacityFrom: [1, 0.2],
			opacityTo: 1,
			stops: [0, 100],
		}
	},
	states: {
		normal: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		hover: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		active: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
	}
};

var options4 = {
	series: [ p ],
	grid: {
		padding: {
			top: 0,
			right: 0,
			bottom: 0,
			left: 0
		},
	},
	chart: {
		height: 100,
		width: 70,
		type: 'radialBar',
	},	
	plotOptions: {
		radialBar: {
			hollow: {
				size: '50%',
			},
			dataLabels: {
				name: {
					show: false,
					color: '#fff'
				},
				value: {
					show: true,
					color: '#333',
					offsetY: 5,
					fontSize: '15px'
				}
			}
		}
	},
	colors: ['#ecf0f4'],
	fill: {
		type: 'gradient',
		gradient: {
			shade: 'dark',
			type: 'diagonal1',
			shadeIntensity: 0.8,
			gradientToColors: ['#2979ff'],
			inverseColors: false,
			opacityFrom: [1, 0.5],
			opacityTo: 1,
			stops: [0, 100],
		}
	},
	states: {
		normal: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		hover: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
		active: {
			filter: {
				type: 'none',
				value: 0,
			}
		},
	}
};

var options5 = {
	chart: {
		height: 350,
		type: 'bar',
		parentHeightOffset: 0,
		fontFamily: 'Poppins, sans-serif',
		toolbar: {
			show: false,
		},
	},
	colors: ['#61bc47', '#f56767'],
	grid: {
		borderColor: '#61bc47',
		strokeDashArray: 5,
	},
	plotOptions: {
		bar: {
			horizontal: false,
			columnWidth: '25%',
			endingShape: 'rounded'
		},
	},
	dataLabels: {
		enabled: false
	},
	stroke: {
		show: true,
		width: 2,
		colors: ['transparent']
	},
	series: [{
		name: 'Food',
		data: [carrot, 28, 47, 22, 34, 25,7,8,7,8,9,7]
	}, {
	
	}],
	xaxis: {
		categories: ['Carrot', 'Drychilli', 'Big onion', 'Potato', 'Pumpkin', 'leek','Red onion','Cauliflower','Beet','Bean','Bell-pepper','Cucumber'],
		labels: {
			style: {
				colors: ['#353535'],
				fontSize: '16px',
			},
		},
		axisBorder: {
			color: '#8fa6bc',
		}
	},
	yaxis: {
		title: {
			text: ''
		},
		labels: {
			style: {
				colors: '#353535',
				fontSize: '16px',
			},
		},
		axisBorder: {
			color: '#f00',
		}
	},
	legend: {
		horizontalAlign: 'right',
		position: 'top',
		fontSize: '16px',
		offsetY: 0,
		labels: {
			colors: '#353535',
		},
		markers: {
			width: 10,
			height: 10,
			radius: 15,
		},
		itemMargin: {
			vertical: 0
		},
	},
	fill: {
		opacity: 1

	},
	tooltip: {
		style: {
			fontSize: '15px',
			fontFamily: 'Poppins, sans-serif',
		},
		y: {
			formatter: function (val) {
				return val
			}
		}
	}
}

var options6 = {
	series: [73],
	chart: {
	  height: 350,
	  type: 'radialBar',
	  offsetY: 0
	},
	colors: ['#0B132B', '#222222'],
	plotOptions: {
	  radialBar: {
		startAngle: -135,
		endAngle: 135,
		dataLabels: {
		  name: {
			fontSize: '16px',
			color: undefined,
			offsetY: 120
		  },
		  value: {
			offsetY: 76,
			fontSize: '22px',
			color: undefined,
			formatter: function (val) {
			  return val + "%";
			}
		  }
		}
	  }
	},
	fill: {
	  type: 'gradient',
	  gradient: {
		  shade: 'dark',
		  shadeIntensity: 0.15,
		  inverseColors: false,
		  opacityFrom: 1,
		  opacityTo: 1,
		  stops: [0, 50, 65, 91]
	  },
	},
	stroke: {
	  dashArray: 4
	},
	labels: ['Achieve Goals'],
};

var chart = new ApexCharts(document.querySelector("#chart"), options);
chart.render();

var chart2 = new ApexCharts(document.querySelector("#chart2"), options2);
chart2.render();

var chart3 = new ApexCharts(document.querySelector("#chart3"), options3);
chart3.render();

var chart4 = new ApexCharts(document.querySelector("#chart4"), options4);
chart4.render();

var chart5 = new ApexCharts(document.querySelector("#chart5"), options5);
chart5.render();

var chart6 = new ApexCharts(document.querySelector("#chart6"), options6);
chart6.render();


// datatable init
$('document').ready(function(){
	$('.data-table').DataTable({
		scrollCollapse: true,
		autoWidth: true,
		responsive: true,
		searching: false,
		bLengthChange: false,
		bPaginate: false,
		bInfo: false,
		columnDefs: [{
			targets: "datatable-nosort",
			orderable: false,
		}],
		"lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
		"language": {
			"info": "_START_-_END_ of _TOTAL_ entries",
			searchPlaceholder: "Search",
			paginate: {
				next: '<i class="ion-chevron-right"></i>',
				previous: '<i class="ion-chevron-left"></i>'  
			}
		},
	});
});

	</script>


	 
	



</body>




</html>
<style>

.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width textarea */
.form-container textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}


</style>

