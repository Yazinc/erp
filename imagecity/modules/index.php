<?php include('../classes/class_db.php')?>

    <div class="container">
        <div class="row">
            <div class="col-sm-3 col-md-1" >    
            	<?php 
            	if ($_GET['windows']==2){
				 include('../modules/vendor/edit_vendor.php');	
					}
				 ?>
            </div>
            <div class="col-sm-9 col-md-8"></div>
            <div class="col-sm-12 col-md-2"></div>
        </div>
    </div>
    
    

    <nav class="navbar navbar-default navbar-fixed-bottom">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a href="#" class="navbar-brand">Brand</a>

            </div>

            <!-- Collection of nav links and other content for toggling -->

            <div id="navbarCollapse" class="collapse navbar-collapse">

                <ul class="nav navbar-nav">
                    
                    <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><b>Start</b><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><b>Vendors</b></a></li>
                        <li><a href="#">  - Purchase Orders</a></li>
                        <li><a href="#">  - Purchase Bill Entry</a></li>
                        <li><a href="#">  - Paid to Vendors</a></li>
                        <li><a href="#"><b>Refunds</b></a></li>
                        <li><a href="#">  - Item Return</a></li>
                        <li><a href="#">  - Refunds & Discounts</a></li>
                        <li><a href="#"><b>Manage</b></a></li>
                   
                        <li><a data-toggle="modal" href="#new_vendor">  - Register New Vendor</a></li>
                        <li><a data-toggle="modal" href="?windows=2">  - Edit Vendor</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Trash</a></li>
                    </ul>
                </li>
            
                    
                    <li><a href="#">Vendors</a></li>
                    <li><a href="#">Customers</a></li>
                    <li><a href="#">Inventory</a></li>
                    <li><a href="#">Chart of Accounts</a></li>
                    
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><b>Reports</b><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Inbox</a></li>
                        <li><a href="#">Drafts</a></li>
                        <li><a href="#">Sent Items</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Trash</a></li>
                    </ul>
                </li>
                    
                    
                </ul>
        
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Login</a></li>
                </ul>			
           
            </div>

        </div>

    </nav>


<div id="new_vendor" class="modal fade" role="dialog">

  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><?php echo $modalname ?></h4>
      </div>
      <div class="modal-body">
        <p>	<?php include('../modules/vendor/new_vendor.php');	?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>    

