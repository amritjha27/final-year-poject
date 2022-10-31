<%@ Page Title="" Language="C#" MasterPageFile="~/sync.master" AutoEventWireup="true" CodeFile="uploadfile1.aspx.cs" Inherits="uploadfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            hideContent();
        });

        $("#btnUpload").click(function () {
            if ($("#txtFileUpload").val() == "") {
                alert("Please Upload a File...!");
                $("#fileUploadErrMsg").html("This field is required.");
                return false;
            }
            else {
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
            $("#tblUploadedfile").hide();
            $("#divMappingLabel").hide();
            $("#divMappings").hide();
            $("#btnSubmit").hide();
            $("#fileUploadErrMsg").html("");
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                <div class="row-fluid">
                    <div class="span12">
                        <div class="box box-bordered">
                            <div class="box-title">
                                <h3><i class="icon-th-list"></i>Upload File</h3>
                            </div>
                           <form class='form-horizontal form-bordered form-validate' id="bb">
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
                                                        <input type="file" name="txtUpload" id="txtFileUpload">
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
                                    <div class="control-group">
                                        <label for="textfield" class="control-label">Delimiter</label>
                                        <div class="controls">
                                            <input type="text" name="textfield" id="textfield" placeholder="Delimiter" class="input-small">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button type="submit" class="btn btn-primary" id="btnUpload">Upload</button>
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
                                                    <thead>
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
                                                        <tr>
                                                            <td>8688</td>
                                                            <td>U32529</td>
                                                            <td>11164122</td>
                                                            <td>138901</td>
                                                            <td></td>
                                                            <td>20151227</td>
                                                            <td>20151227</td>
                                                            <td>60432021208</td>
                                                            <td>Y</td>
                                                            <td>6</td>
                                                            <td>30</td>
                                                            <td>0.5</td>
                                                            <td>3.99</td>
                                                        </tr>
                                                        <tr>
                                                            <td>6777</td>
                                                            <td>U24863</td>
                                                            <td>22211789</td>
                                                            <td>-1</td>
                                                            <td>BL9523033</td>
                                                            <td>20151230</td>
                                                            <td>20151230</td>
                                                            <td>603082394</td>
                                                            <td>Y</td>
                                                            <td>24</td>
                                                            <td>240</td>
                                                            <td>0</td>
                                                            <td>15.84</td>
                                                        </tr>
                                                        <tr>
                                                            <td>10193</td>
                                                            <td>U24205</td>
                                                            <td>11166621</td>
                                                            <td>109032</td>
                                                            <td></td>
                                                            <td>20151223</td>
                                                            <td>20151223</td>
                                                            <td>555097102</td>
                                                            <td>Y</td>
                                                            <td>30</td>
                                                            <td>30</td>
                                                            <td>0</td>
                                                            <td>32.72</td>
                                                        </tr>
                                                        <tr>
                                                            <td>11326</td>
                                                            <td>U39802</td>
                                                            <td>11119159</td>
                                                            <td>119051</td>
                                                            <td></td>
                                                            <td>20151210</td>
                                                            <td>20151210</td>
                                                            <td>56151081001</td>
                                                            <td>N</td>
                                                            <td>25</td>
                                                            <td>100</td>
                                                            <td>0</td>
                                                            <td>44.21</td>
                                                        </tr>
                                                        <tr>
                                                            <td>4315</td>
                                                            <td>U30020</td>
                                                            <td>11193333</td>
                                                            <td>115246</td>
                                                            <td></td>
                                                            <td>20151226</td>
                                                            <td>20151226</td>
                                                            <td>555902858</td>
                                                            <td>Y</td>
                                                            <td>28</td>
                                                            <td>28</td>
                                                            <td>0</td>
                                                            <td>25.15</td>
                                                        </tr>
                                                        <tr>
                                                            <td>3865</td>
                                                            <td>U56719</td>
                                                            <td>22211120</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>20151218</td>
                                                            <td>20151218</td>
                                                            <td>378827052</td>
                                                            <td>Y</td>
                                                            <td>10</td>
                                                            <td>75</td>
                                                            <td>0</td>
                                                            <td>5.78</td>
                                                        </tr>
                                                        <tr>
                                                            <td>4080</td>
                                                            <td>U40831</td>
                                                            <td>11171637</td>
                                                            <td>P10000628790</td>
                                                            <td></td>
                                                            <td>20151208</td>
                                                            <td>20151208</td>
                                                            <td>185012201</td>
                                                            <td>Y</td>
                                                            <td>7</td>
                                                            <td>14</td>
                                                            <td>0</td>
                                                            <td>25.52</td>
                                                        </tr>
                                                        <tr>
                                                            <td>6877</td>
                                                            <td>U01182</td>
                                                            <td>11177704</td>
                                                            <td>P10002993796</td>
                                                            <td></td>
                                                            <td>20151209</td>
                                                            <td>20151209</td>
                                                            <td>68462010340</td>
                                                            <td>Y</td>
                                                            <td>1</td>
                                                            <td>1</td>
                                                            <td>0.5</td>
                                                            <td>3.81</td>
                                                        </tr>
                                                        <tr>
                                                            <td>12597</td>
                                                            <td>U50313</td>
                                                            <td>11143398</td>
                                                            <td>117795</td>
                                                            <td></td>
                                                            <td>20151213</td>
                                                            <td>20151213</td>
                                                            <td>60432026415</td>
                                                            <td>Y</td>
                                                            <td>30</td>
                                                            <td>16</td>
                                                            <td>0</td>
                                                            <td>16.93</td>
                                                        </tr>
                                                        <tr>
                                                            <td>8772</td>
                                                            <td>U29609</td>
                                                            <td>22211734</td>
                                                            <td>150060</td>
                                                            <td></td>
                                                            <td>20151205</td>
                                                            <td>20151205</td>
                                                            <td>11822573170</td>
                                                            <td>Y</td>
                                                            <td>30</td>
                                                            <td>150</td>
                                                            <td>0</td>
                                                            <td>6.08</td>
                                                        </tr>
                                                        <tr>
                                                            <td>60178</td>
                                                            <td>U33521</td>
                                                            <td>11178913</td>
                                                            <td>P10003384170</td>
                                                            <td></td>
                                                            <td>20151207</td>
                                                            <td>20151207</td>
                                                            <td>45802095243</td>
                                                            <td>Y</td>
                                                            <td>3</td>
                                                            <td>100</td>
                                                            <td>0</td>
                                                            <td>4.86</td>
                                                        </tr>
                                                        <tr>
                                                            <td>7428</td>
                                                            <td>U50894</td>
                                                            <td>11130271</td>
                                                            <td>P10004205326</td>
                                                            <td></td>
                                                            <td>20151205</td>
                                                            <td>20151205</td>
                                                            <td>781183001</td>
                                                            <td>Y</td>
                                                            <td>3</td>
                                                            <td>12</td>
                                                            <td>0.5</td>
                                                            <td>2.88</td>
                                                        </tr>
                                                        <tr>
                                                            <td>650315</td>
                                                            <td>U49891</td>
                                                            <td>22211508</td>
                                                            <td>106373</td>
                                                            <td></td>
                                                            <td>20151205</td>
                                                            <td>20151205</td>
                                                            <td>45802095226</td>
                                                            <td>Y</td>
                                                            <td>25</td>
                                                            <td>120</td>
                                                            <td>0</td>
                                                            <td>5.43</td>
                                                        </tr>
                                                        <tr>
                                                            <td>66612</td>
                                                            <td>U63447</td>
                                                            <td>11114356</td>
                                                            <td>109323</td>
                                                            <td></td>
                                                            <td>20151224</td>
                                                            <td>20151224</td>
                                                            <td>173068220</td>
                                                            <td>N</td>
                                                            <td>30</td>
                                                            <td>18</td>
                                                            <td>0</td>
                                                            <td>50.06</td>
                                                        </tr>
                                                        <tr>
                                                            <td>6837</td>
                                                            <td>U53080</td>
                                                            <td>11133306</td>
                                                            <td>142285</td>
                                                            <td></td>
                                                            <td>20151227</td>
                                                            <td>20151227</td>
                                                            <td>68462010530</td>
                                                            <td>Y</td>
                                                            <td>8</td>
                                                            <td>8</td>
                                                            <td>0.5</td>
                                                            <td>3.19</td>
                                                        </tr>
                                                        <tr>
                                                            <td>70393</td>
                                                            <td>U53511</td>
                                                            <td>22211949</td>
                                                            <td>111139</td>
                                                            <td></td>
                                                            <td>20151221</td>
                                                            <td>20151221</td>
                                                            <td>93416073</td>
                                                            <td>Y</td>
                                                            <td>13</td>
                                                            <td>200</td>
                                                            <td>0</td>
                                                            <td>8</td>
                                                        </tr>
                                                        <tr>
                                                            <td>22170</td>
                                                            <td>U57925</td>
                                                            <td>11148153</td>
                                                            <td>112226</td>
                                                            <td></td>
                                                            <td>20151208</td>
                                                            <td>20151208</td>
                                                            <td>591271801</td>
                                                            <td>Y</td>
                                                            <td>30</td>
                                                            <td>30</td>
                                                            <td>0.5</td>
                                                            <td>228.24</td>
                                                        </tr>
                                                        <tr>
                                                            <td>9984</td>
                                                            <td>U49536</td>
                                                            <td>22211672</td>
                                                            <td></td>
                                                            <td></td>
                                                            <td>20151201</td>
                                                            <td>20151201</td>
                                                            <td>93738556</td>
                                                            <td>Y</td>
                                                            <td>30</td>
                                                            <td>30</td>
                                                            <td>1</td>
                                                            <td>10.24</td>
                                                        </tr>
                                                        <tr>
                                                            <td>656</td>
                                                            <td>U63853</td>
                                                            <td>11121185</td>
                                                            <td>103320</td>
                                                            <td></td>
                                                            <td>20151217</td>
                                                            <td>20151217</td>
                                                            <td>54569471300</td>
                                                            <td>Y</td>
                                                            <td>30</td>
                                                            <td>60</td>
                                                            <td>0</td>
                                                            <td>-30.35</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group" style="display: none" id="divMappingLabel">
                                        <label for="textfield" class="control-label">
                                            <h5>Header Mappings</h5>
                                        </label>
                                    </div>
                                    <div class="control-group" style="display: none" id="divMappings">
                                        <label for="select" class="control-label">Perform Mapping</label>
                                        <div class="controls">
                                            <select name="select1" id="select1" class="input-large" data-rule-required="true">
                                                <option value="">-- Select --</option>
                                                <option value="1">Existing Header-1</option>
                                                <option value="2">Existing Header-2</option>
                                                <option value="3">Existing Header-3</option>
                                                <option value="4">Existing Header-4</option>
                                                <option value="5">Existing Header-5</option>
                                            </select>
                                            <select name="select11" id="select11" class="input-large" data-rule-required="true">
                                                <option value="">-- Select --</option>
                                                <option value="1">File Header-1</option>
                                                <option value="2">File Header-2</option>
                                                <option value="3">File Header-3</option>
                                                <option value="4">File Header-4</option>
                                                <option value="5">File Header-5</option>
                                            </select>
                                        </div>
                                        <div class="controls">
                                            <select name="select2" id="select2" class="input-large" data-rule-required="true">
                                                <option value="">-- Select --</option>
                                                <option value="1">Existing Header-1</option>
                                                <option value="2">Existing Header-2</option>
                                                <option value="3">Existing Header-3</option>
                                                <option value="4">Existing Header-4</option>
                                                <option value="5">Existing Header-5</option>
                                            </select>
                                            <select name="select22" id="select22" class="input-large" data-rule-required="true">
                                                <option value="">-- Select --</option>
                                                <option value="1">File Header-1</option>
                                                <option value="2">File Header-2</option>
                                                <option value="3">File Header-3</option>
                                                <option value="4">File Header-4</option>
                                                <option value="5">File Header-5</option>
                                            </select>
                                        </div>
                                        <div class="controls">
                                            <select name="select3" id="select3" class="input-large" data-rule-required="true">
                                                <option value="">-- Select --</option>
                                                <option value="1">Existing Header-1</option>
                                                <option value="2">Existing Header-2</option>
                                                <option value="3">Existing Header-3</option>
                                                <option value="4">Existing Header-4</option>
                                                <option value="5">Existing Header-5</option>
                                            </select>
                                            <select name="select33" id="select33" class="input-large" data-rule-required="true">
                                                <option value="">-- Select --</option>
                                                <option value="1">File Header-1</option>
                                                <option value="2">File Header-2</option>
                                                <option value="3">File Header-3</option>
                                                <option value="4">File Header-4</option>
                                                <option value="5">File Header-5</option>
                                            </select>
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
   
    
</asp:Content>

