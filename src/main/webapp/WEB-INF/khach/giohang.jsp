<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../head.jsp" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/path/to/style.css">
<body>
<div class="card">
            <div class="row">
                <div class="col-md-8 cart">
                    <div class="title">
                        <div class="row">
                            <div class="col"><h4><b>Shopping Cart</b></h4></div>
                            <div class="col align-self-center text-right text-muted">3 items</div>
                        </div>
                    </div>    
                    <div class="row border-top border-bottom">
                        <div class="row main align-items-center">
                            <div class="col-2">
    <img class="img-fluid" src="<s:property value='food.hinh'/>" style="width: 400px; max-height: 400px;" />
</div>

                            <div class="col">
                                <div class="row text-muted">Món snacks</div>
                                <div class="row"><s:property value="food.ten" /></div>
                            </div>
                            <div class="col">
    <a href="#" onclick="decrement()">-</a>
    <input type="number" id="soluong" name="soluong" min="1" class="border" />
    <a href="#" onclick="increment()">+</a>
</div>
                            <div class="col"><s:property value="food.gia"/><small>đ</small> <span class="close">&#10005;</span></div>
                        </div>
                    </div>
                    
                </div>
                <div class="col-md-4 summary">
                    <div><h5><b>Summary</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:0;">ITEMS 3</div>
                        <div class="col text-right" id="totalPrice"></div>
                    </div>
                    <form>
                        <p>SHIPPING</p>
                        <select><option class="text-muted">Standard-Delivery- &euro;5.00</option></select>
                        <p>GIVE CODE</p>
                        <input id="code" placeholder="Enter your code">
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL PRICE</div>
                        <div class="col text-right">&euro; 137.00</div>
                    </div>
                    
                    <button class="btn" href="dathangthanhcong.jsp">CHECKOUT</button>
                </div>
            </div>
            <script>
            <!--tinh cong tru san soluong sp-->
    function increment() {
        var input = document.getElementById("soluong");
        input.value = parseInt(input.value) + 1;
    }

    function decrement() {
        var input = document.getElementById("soluong");
        if (parseInt(input.value) > 1) {
            input.value = parseInt(input.value) - 1;
        }
    }
    <!--tinh so sp-->
    function calculateTotalQuantity(foodName) {
        var quantityInputs = document.querySelectorAll('.quantity');
        var totalQuantity = 0;

        quantityInputs.forEach(function(input) {
            var foodNameElement = input.closest('.main').querySelector('.row:nth-child(2) s:property');
            var currentFoodName = foodNameElement.innerText.trim();

            if (currentFoodName === foodName) {
                totalQuantity += parseInt(input.value) || 0;
            }
        });

        alert('Total quantity of ' + foodName + ' is: ' + totalQuantity);
    }
 // Hàm tính giá trị của thức ăn
    function calculateFoodValue() {
        var gia = parseFloat("<s:property value='food.gia' />");
        var soluong = parseInt(document.getElementById("soluong").value);
        var totalValue = gia * soluong;

        // Hiển thị giá trị hoặc thực hiện bất kỳ hành động nào bạn muốn
        alert('Giá trị của thức ăn là: ' + totalValue + 'đ');
    }
</script>
            
        </div>

</body>
</html>