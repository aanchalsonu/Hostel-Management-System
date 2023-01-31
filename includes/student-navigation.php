<nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                    
                    <!-- Logo -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                            <b class="logo-icon">
                                <!-- Light Logo icon  -->
                                <img src="../assets/images/logo-full.jpg" alt="homepage" class="light-logo" style="width:50px"/>
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="../assets/images/logo-text-nav.png" alt="homepage" class="light-logo" />
                                <!-- Light Logo text -->
                            </span>
                    </div>
                    
                    <!-- End Logo -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
                </div>
               
                <!-- End Logo -->
                
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                   
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">                       
                    </ul>
                    <ul class="navbar-nav float-right">
                        <!-- User profile -->
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <img src="../assets/images/users/user-icn.png" alt="user" class="rounded-circle"
                                    width="40">
                                
                                    <?php	
                                    $aid=$_SESSION['id']; // ID passed through session varibale from index page
                                        $ret="select * from userregistration where id=?";
                                        $stmt= $mysqli->prepare($ret) ; // prepare() method is used to prepare an SQL statement stored in the $ret variable for execution.
                                        $stmt->bind_param('i',$aid);
                                        $stmt->execute();
                                        $res=$stmt->get_result(); //to retrive result  set
                                        
                                        while($row=$res->fetch_object()) // To fetch rows one by one until no row is left from th result object
                                        {
                                            ?>	

                                <span class="ml-2 d-none d-lg-inline-block"><span>Hello,</span> <span
                                        class="text-dark"><?php echo $row->firstName; }?></span> <i data-feather="chevron-down"
                                        class="svg-icon"></i></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                <a class="dropdown-item" href="profile.php"><i data-feather="user"
                                        class="svg-icon mr-2 ml-1"></i>
                                    My Profile</a>
                                
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout.php"><i data-feather="power"
                                        class="svg-icon mr-2 ml-1"></i>
                                    Logout</a>
                                
                                
                            </div>
                        </li>
                        <!-- User profile End -->
                    </ul>
                </div>
            </nav>