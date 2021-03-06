<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>invoice</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
</head>

<body>
    <input type="checkbox" id="check"> header area start-->
    <header>
        <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
        <!---->
        <div class="left_area">
            <h3>my <span>b'ness</span></h3>
        </div>

        <div class="right_area">
            <a href="#" class="logout_btn">Logout</a>
        </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
        <div class="mobile_nav_items">
            <a href="#"><i class="fas fa-qrcode"></i><span>home</span></a>
            <a href="#"><i class="fab fa-empire"></i><span>assets</span></a>
            <a href="#"><i class="fas fa-bookmark"></i><span>records</span></a>
            <a href="#"><i class="fas fa-receipt"></i><span>reciepts</span></a>
            <a href="#"><i class="fas fa-hands-helping"></i><span>contacts</span></a>
            <a href="#"><i class="far fa-question-circle"></i><span>help</span></a>
            <a href="#"><i class="fa fa-crosshairs"></i><span>about</span></a>
        </div>
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
        <a href="#"><i class="fas fa-qrcode"></i><span>home</span></a>
        <a href="#"><i class="fab fa-empire"></i><span>assets</span></a>
        <a href="#"><i class="fas fa-bookmark"></i><span>records</span></a>
        <a href="#"><i class="fas fa-receipt"></i><span>reciepts</span></a>
        <a href="#"><i class="fas fa-hands-helping"></i><span>contacts</span></a>
        <a href="#"><i class="far fa-question-circle"></i><span>help</span></a>
        <a href="#"><i class="fa fa-crosshairs"></i><span>about</span></a>
    </div>
    <!--sidebar end-->

    <div class="content">
        <div class="card">
            <p>
                invoice receipt
            </p>

        </div>
        <div class="card">
            <table width="100%" class="table table-bordered table-hover" id="_addFiveTable">
                <thead>
                    <tr>
                        <th>Quantity</th>
                        <th>Item</th>
                        <th>value</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody id="the_body">
                    <tr>
                        <td contenteditable="true">1</td>
                        <td contenteditable="true">Bucket</td>
                        <td contenteditable="true">5000</td>
                        <td contenteditable="true">5000</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td>TOTAL</td>
                        <td id="total" contenteditable="true" colspan="3"></td>
                    </tr>
                </tfoot>
            </table>
            <input type="submit" value="ADD ROW" onclick="appendRow()">
            <input type="submit" value="DELETE ROW" onclick="deleteRow()">
        </div>
    </div>
    <script>
        //append row to html table
        function appendRow() {
            var tbl = document.getElementById('the_body'),
                row = tbl.insertRow(tbl.rows.length),
                i;
            // insert table cells to the new row
            for (i = 0; i < tbl.rows[0].cells.length; i++) {
                createCell(row.insertCell(i), i, 'row');
            }
        }
        // create div element and append to the table cell
        function createCell(cell, text, style) {
            var div = document.createElement('div'),
                txt = document.createTextNode(text);
            div.contentEditable = 'true';
            div.appendChild(txt);
            div.setAttribute('class', style);
            div.setAttribute('className', style);
            cell.appendChild(div);
        }
        //delete rows
        function deleteRow() {
            var tbl = document.getElementById('the_body'),
                lastRow = tbl.rows.length - 1,
                i;
            for (i = lastRow; i > 0; i--) {
                tbl.deleteRow(i);
            }
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('.nav_btn').click(function() {
                $('.mobile_nav_items').toggleClass('active');
            });
        });
    </script>

</body>

</html>