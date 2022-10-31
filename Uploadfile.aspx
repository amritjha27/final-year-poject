<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uploadfile.aspx.cs" Inherits="Uploadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Apple devices fullscreen -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <!-- Apple devices fullscreen -->
    <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />

    <title>CEA - Web App</title>


    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap responsive -->
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
    <!-- jQuery UI -->
    <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css"> 
    <!-- dataTables -->
    <link rel="stylesheet" href="css/plugins/datatable/TableTools.css">
    <!-- chosen -->
    <link rel="stylesheet" href="css/plugins/chosen/chosen.css">
    <!-- Theme CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Color CSS -->
    <link rel="stylesheet" href="css/themes.css">

    <!-- Plupload -->
    <link rel="stylesheet" href="css/plugins/plupload/jquery.plupload.queue.css">
    <!-- dataTables -->
    <link rel="stylesheet" href="css/plugins/datatable/TableTools.css">


    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>

    <!-- Nice Scroll -->
    <script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- imagesLoaded -->
    <script src="js/plugins/imagesLoaded/jquery.imagesloaded.min.js"></script>
    <!-- jQuery UI -->
    <script src="js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
    <script src="js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
    <script src="js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
    <script src="js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
    <script src="js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
    <!-- slimScroll -->
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Bootbox -->
    <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
    <!-- Bootbox -->
    <script src="js/plugins/form/jquery.form.min.js"></script>
    <!-- Validation -->
    <script src="js/plugins/validation/jquery.validate.min.js"></script>
    <script src="js/plugins/validation/additional-methods.min.js"></script>

    <!-- PLUpload -->
    <script src="js/plugins/plupload/plupload.full.js"></script>
    <script src="js/plugins/plupload/jquery.plupload.queue.js"></script>
    <!-- Custom file upload -->
    <script src="js/plugins/fileupload/bootstrap-fileupload.min.js"></script>
    <script src="js/plugins/mockjax/jquery.mockjax.js"></script>

    <!-- dataTables -->
    <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>
    <script src="js/plugins/datatable/TableTools.min.js"></script>
    <script src="js/plugins/datatable/ColReorderWithResize.js"></script>
    <script src="js/plugins/datatable/ColVis.min.js"></script>
    <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
    <script src="js/plugins/datatable/jquery.dataTables.grouping.js"></script>
    <!-- Chosen -->
    <script src="js/plugins/chosen/chosen.jquery.min.js"></script>

    <!-- Theme framework -->
    <script src="js/eakroko.min.js"></script>
    <!-- Theme scripts -->
    <script src="js/application.min.js"></script>
    <!-- Just for demonstration -->
    <script src="js/demonstration.min.js"></script>

    <!--[if lte IE 9]>
		<script src="js/plugins/placeholder/jquery.placeholder.min.js"></script>
		<script>
			$(document).ready(function() {
				$('input, textarea').placeholder();
			});
		</script>
	<![endif]-->

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" />
    <!-- Apple devices Homescreen icon -->
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />

</head>
<body>
    <div id="navigation">
        <div class="container-fluid">
            <a href="#" id="brand">EDI Support</a>
            <ul class='main-nav'>
                <li>
                    <a href="default.aspx">
                        <span>Home</span>
                    </a>
                </li>
                <li class='active'>
                    <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                        <span>Forms</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class='active'>
                            <a href="uploadfile.aspx">Upload File</a>
                        </li>
                        <li>
                            <a href="#">View File</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="user">
                <div class="dropdown">
                    <a href="#" class='dropdown-toggle' data-toggle="dropdown">John Doe
                        <img src="img/demo/user-avatar.jpg" alt="" /></a>
                    <ul class="dropdown-menu pull-right">
                        <li>
                            <a href="#">View profile</a>
                        </li>
                        <li>
                            <a href="#">Sign out</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" id="content">
        <div id="main" style="margin-left: 20px;">
            <div class="container-fluid">
                <div class="page-header">
                    <div class="pull-left">
                        <h1>Upload File</h1>
                    </div>
                </div>
                <div class="breadcrumbs">
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li>
                            <a href="#">Forms</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li>
                            <a href="file-upload.html">Upload File</a>
                        </li>
                    </ul>
                    <div class="close-bread">
                        <a href="#"><i class="icon-remove"></i></a>
                    </div>
                </div>
                <div class="alert alert-danger text-center" style="margin-top: 10px; display: none" id="dvFileError">Please upload the proper file format.</div>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="box box-bordered">
                            <div class="box-title">
                                <h3><i class="icon-th-list"></i>Upload File</h3>
                            </div>
                            <form class='form-horizontal form-bordered form-validate' id="frmUpload" runat="server">
                                <div class="box-content nopadding">

                                    <div class="control-group">
                                        <label for="textfield" class="control-label">File</label>
                                        <div class="controls">
                                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                                <input type="hidden">
                                                <div class="input-append">
                                                    <div class="uneditable-input span3">
                                                        <i class="icon-file fileupload-exists"></i>
                                                        <span class="fileupload-preview"></span>
                                                    </div>
                                                    <span class="btn btn-file"><span class="fileupload-new">Select file</span>
                                                        <span class="fileupload-exists">Change</span>
                                                        <input type="file" runat="server" name="txtUpload" id="txtFileUpload" data-rule-required="true">
                                                    </span>
                                                    <a href="#" class="btn fileupload-exists" id="btnRemove" data-dismiss="fileupload">Remove</a>
                                                    <span class="help-block error" id="fileUploadErrMsg"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">File Has Headers</label>
                                        <div class="controls">
                                            <label class='checkbox'>
                                                <input type="checkbox" name="checkbox">
                                                Yes/No
										
                                            </label>
                                        </div>
                                    </div>
                                    <div class="control-group" id="dvDelimeter" style="display: none">
                                        <label for="textfield" class="control-label">Delimiter</label>
                                        <div class="controls">
                                            <input type="text" name="textfield" id="txtDelimeter" placeholder="Delimiter" class="input-small">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button type="button" class="btn btn-primary" id="btnUpload">Upload</button>
                                            <asp:Button runat="server" ID="btnUpload1" Text="UPLOAD" OnClick="btnUpload1_Click" />
                                        </div>
                                    </div>
                                    <div class="row-fluid" id="tblUploadedfile">
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">
                                                <h5>Uploaded File</h5>
                                            </label>
                                        </div>

                                        <div class="box">
                                            <div class="box-content nopadding">
                                                <table class="table table-bordered dataTable dataTable-scroll-x">
                                                    <thead id="thDynamic" runat="server">
                                                        <tr>
                                                            <th>#Rx_NUMBER</th>
                                                            <th>NABP</th>
                                                            <th>MEMBER_ID</th>
                                                            <th>PROVIDER_ID</th>
                                                            <th>PRESCRIBER_ID</th>
                                                            <th>DISPENSE_DATE</th>
                                                            <th>PAID_DATE</th>
                                                            <th>NDC</th>
                                                            <th>GENERIC</th>
                                                            <th>SUPPLY</th>
                                                            <th>QTY</th>
                                                            <th>COPAY</th>
                                                            <th>PAID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <asp:GridView ID="grvExcelData" runat="server">
                                                        </asp:GridView>
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group" style="display: block" id="divMappingLabel">
                                        <label for="textfield" class="control-label">
                                            <h5>Header Mappings</h5>
                                        </label>
                                    </div>
                                    <div class="control-group" style="display: block" id="divMappings">
                                        <label for="select" class="control-label">Perform Mapping</label>
                                        <div id="dvdynamic" runat="server">
                                           
                                        </div>
                                      
                                    </div>
                                </div>
                                <div class="form-actions" style="display: none" id="btnSubmit">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="button" class="btn">Cancel</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>



</body>
<script>
    $(document).ready(function () {
        alert("dd")
        hideContent();
        $("#<%=txtFileUpload.ClientID%>").on('change', function () {
            var fileExt = $("#<%=txtFileUpload.ClientID%>").val().toString().split('.')[1];
            alert(fileExt);
            if (fileExt === 'xlsx' || fileExt === 'xls' || fileExt==="txt") {
                if (fileExt === "txt") {
                    $('#dvDelimeter').show(1000);
                    $('#txtDelimeter').attr("data-rule-required", true);
                }
                else {
                    $('#dvDelimeter').hide(1000);
                    $('#txtDelimeter').removeAttr("data-rule-required");
                }
            }
            else {
                $("#dvFileError").show().delay(3000).queue(function (n) {
                    $(this).hide(); n();
                }); return false; }
        })
    });
    function fnDdlFieldChange(obj) {
        var allElems = $("[id$=_ImportDDL]").not(obj);
        $.each(allElems, function (i, ele) {
            if ($(ele).val() == $(obj).val() && $(obj).val() !== '0') {
                alert($(obj).val() + ' is already selected please check once again');
                $(obj).get(0).selectedIndex = 0;
            }
        });
        fnCheckSelections(obj);
    }

    function fnCheckSelections(obj) {
        var allElems = $.find("[id$=_ImportDDL]");
        var count = 0;
        $.each(allElems, function (i, ele) {
            if ($(ele).val() !== '0') {

            }
            else {
                count = count + 1;
            }
        });
        if (count === allElems.length) {
            $("#bnImportSave").css('display', 'none');
            $("#bnImportSave").next().css('display', 'none');
        }
        else {
            $("#bnImportSave").css('display', 'inline-block');
            $("#bnImportSave").next().css('display', 'inline-block');
        }
    }
    $("#btnUpload").click(function () {
        debugger;
        if ($('#frmUpload').valid()) {
                $("#tblUploadedfile").show();
                $("#divMappingLabel").show();
                $("#divMappings").show();
                $("#btnSubmit").show();
        }
    });
    $("#btnRemove").click(function () {
        hideContent();
    });
    function hideContent() {
        $("#tblUploadedfile").show();
        $("#divMappingLabel").show();
        $("#divMappings").show();
        $("#btnSubmit").show();
        $("#fileUploadErrMsg").html("");
    }
</script>
</html>
