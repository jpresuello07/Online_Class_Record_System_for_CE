<!--SIDEBAR & CONTENT-->
<div class="container-fluid" id="main-content-wrapper">
    <div class="row" id="main-col-wrapper">
        <div class="container"id="sidebar-wrapper">
            <div class="sidebar-nav">
                <ul class="accordion">
                    <div id="sidebar-menu">
                        <i class="icon-class-record"></i><span>Record</span>
                    </div>
                    <?php
                        if (isset($subj))
                        {
                            $hrefId = 0;
                            foreach ($subj as $data) :
                                $hrefId++;
                                echo "<li id='sidebar-subMenu' class='accordion-section'>";
                                echo   "<a class='accordion-section-title hideOverflow' href='#accordion-".$hrefId."'>".$data['title']."<span class='arrow-left'></span></a>";
                                echo    "<div id='accordion-".$hrefId."' class='accordion-section-content'>";
                                if (isset($data['class']))
                                {
                                    foreach ($data['class'] as $class) :
                                        $link = "user/get_table/".$class['c_id'];
                                        echo "<div id='sidebar-item'><a onclick='return get_class_table(this.href);' href='".site_url($link)."'>".$class['c_block']."<span class='arrow-left'></span></a></div>";
                                    endforeach;
                                }
                                echo    "</div>";
                                echo"</li>";
                            endforeach;
                        }
                    ?>
                </ul>
                <ul class="accordion">
                    <div id="sidebar-menu" class="toggle-sidebar">
                        <i class="icon-modules"></i><span>Modules</span>
                    </div>
                    <li id="sidebar-subMenu" class="accordion-section" name="module_submenu">

                    </li>
                </ul>
            </div>
        </div>

    <!-- TEMPORARY-DELETABLE-CONTENT -->
    <div class = "container" id = "TEMPORARY">
        <!-- <div class="row">
            <h2>BSCPE 5-1</h2>
            <hr>
            <h4><span>SOFTWARE ENGINEERING</span></h4>
        </div> -->
        <div class="row">
            <h1 style="color:rgba(65,105,225,0.5)"><b>Please select a class to display the table...<b></h1>
        </div>
        <!-- <div class="row">
            <div class="col-lg-12 col-md-12">
                <form>
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th class="studName">STUDENT NAME</th>
                                <th class="studNum">STUDENT NUMBER</th>
                                <th class="tableNum">1</th>
                                <th class="tableNum">2</th>
                                <th class="tableNum">3</th>
                                <th class="tableNum">4</th>
                                <th class="tableNum">5</th>
                                <th class="tableNum">6</th>
                                <th class="tableTotal">Total</th>
                                <th class="tableNum">%</th>
                                <th class="tableNum">1</th>
                                <th class="tableNum">2</th>
                                <th class="tableNum">3</th>
                                <th class="tableTotal">Total</th>
                                <th class="tableNum">%</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>
                            <tr>
                                <td class="studName">Anzano, Marcelo R.</td>
                                <td class="studNum">2011-00255-MN-0</td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableNum1" contenteditable="true"></td>
                                <td class="tableTotal1"></td>
                                <td class="tableMod1"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableNum2" contenteditable="true"></td>
                                <td class="tableTotal2"></td>
                                <td class="tableMod2"></td>
                            </tr>                                
                        </tbody>
                    </table>
                </form>
            </div>
        </div> -->
    </div>
</div>
