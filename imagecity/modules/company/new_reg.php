<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=windows-1252" http-equiv="content-type">
    <?php include("../../classes/class_db.php"); 

    ?>
    <style type="text/css">
#title {
  background-color: #ffff99;
  width: auto;
  align-content: flex-start;
  float: left;
  border-radius: 0px;
  border-top-width: 1px;
  border-right-width: 1px;
  border-bottom-width: 1px;
  border-left-width: 1px;
  border-top-style: solid;
  border-right-style: solid;
  border-bottom-style: solid;
  border-left-style: solid;
  width:50%;
}

</style><style type="text/css">
      thead tr {background-color: ActiveCaption; color: CaptionText;}
      th, td {vertical-align: top; font-family: "Tahoma", Arial, Helvetica, sans-serif; font-size: 8pt; padding: 3px; }
      table, td {border: 1px solid silver;}
      table {border-collapse: collapse;}
      thead .col0 {width: 115px;}
      thead .col1 {width: 98px;}
      thead .col2 {width: 53px;}
      thead .col3 {width: 55px;}
      thead .col4 {width: 67px;}
      thead .col5 {width: 110px;}
    </style>
  </head>
  <body>
    <h1>Dear Company</h1>
    <table>
      <thead>
        <tr>
          <th class="col0">Field</th>
          <th class="col1">Type</th>
          <th class="col2">Null</th>
          <th class="col3">Key</th>
          <th class="col4">Default</th>
          <th class="col5">Extra</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="col0">company_id</td>
          <td class="col1">int(11)</td>
          <td class="col2">NO</td>
          <td class="col3">PRI</td>
          <td class="col4"><br>
          </td>
          <td class="col5">auto_increment</td>
        </tr>
        <tr>
          <td class="col0">title</td>
          <td class="col1">varchar(255)</td>
          <td class="col2">YES</td>
          <td class="col3"><br>
          </td>
          <td class="col4"><br>
          </td>
          <td class="col5"><br>
          </td>
        </tr>
        <tr>
          <td class="col0">ctc</td>
          <td class="col1">varchar(255)</td>
          <td class="col2">YES</td>
          <td class="col3"><br>
          </td>
          <td class="col4"><br>
          </td>
          <td class="col5"><br>
          </td>
        </tr>
        <tr>
          <td class="col0">email</td>
          <td class="col1">varchar(255)</td>
          <td class="col2">YES</td>
          <td class="col3"><br>
          </td>
          <td class="col4"><br>
          </td>
          <td class="col5"><br>
          </td>
        </tr>
        <tr>
          <td class="col0">role_id</td>
          <td class="col1">int(11)</td>
          <td class="col2">YES</td>
          <td class="col3"><br>
          </td>
          <td class="col4"><br>
          </td>
          <td class="col5"><br>
          </td>
        </tr>
        <tr>
          <td class="col0">reg_date</td>
          <td class="col1">date</td>
          <td class="col2">YES</td>
          <td class="col3"><br>
          </td>
          <td class="col4"><br>
          </td>
          <td class="col5"><br>
          </td>
        </tr>
        <tr>
          <td class="col0">active</td>
          <td class="col1">int(11)</td>
          <td class="col2">YES</td>
          <td class="col3"><br>
          </td>
          <td class="col4">0</td>
          <td class="col5"><br>
          </td>
        </tr>
        <tr>
          <td class="col0">sub_company_id</td>
          <td class="col1">int(11)</td>
          <td class="col2">YES</td>
          <td class="col3">MUL</td>
          <td class="col4"><br>
          </td>
          <td class="col5"><br>
          </td>
        </tr>
        <tr>
          <td class="col0">order</td>
          <td class="col1">int(11)</td>
          <td class="col2">YES</td>
          <td class="col3"><br>
          </td>
          <td class="col4"><br>
          </td>
          <td class="col5"><br>
          </td>
        </tr>
      </tbody>
    </table>
    &nbsp;<br>
    <form action="<?php echo $_SERVER['SELF'];?>" name="New Regi"><br>
      <div class="container-fluid">Register new profile.<br>
      </div>
      <input placeholder="Profile Title" class="form-control" name="title" type="text"><br>
      <input class="form-control" placeholder="Mr./Mrs." name="ctc" type="text"><br>
      <input class="form-control" placeholder="Email Address" name="email" type="email"><br>
      <br>
      <span class="">Registered as:
        <select class="input-sm" name="role_id">
          <option value="2">Customer</option>
          <option value="1">Vendor</option>
        </select>
        <span>Sub Account
          <select class="input-sm" list="" name="active">
            <option value="Yes">Yes</option>
            <option value="No">No</option>
            <option value="Deleted">Deleted</option>
          </select>
          <input value="<?php date("m.d.y") ?>" name="reg_date" type="hidden"><br>
          <input formmethod="post" value="submit" name="Submit" type="submit"><br>
      </span></span>
          </form>
</body></html>

<?php echo $_POST['reg_date'];
echo date("m.d.y");

?>