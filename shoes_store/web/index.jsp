<%@ include file="header.jsp" %>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->
<!--start carousel-->
<div class="container">
    <div class="row py-3">
        <div class="col-12">
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/jordanblue.png" class="d-block w-100 img-fluid" alt="..." style="height: 600px">
                    </div>
                    <div class="carousel-item"> 
                        <img src="images/airforce.jpg" class="d-block w-100 img-fluid" alt="..." style="height: 600px">
                    </div>
                    <div class="carousel-item">
                        <img src="images/fullsneaker.jpg" class="d-block w-100 img-fluid" alt="..." style="height: 600px">
                    </div> 
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div> 
</div>
<!--end carousel-->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">Recommended For You</div>
    </div>
    <div id="recommend" class="row h-25">
        <c:forEach items="${sessionScope.recommendList}" var="o">
            <div class="recommendAmount col-md-2 p-2 h-100">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="recommendLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="recommend" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">Trending Sneakers</div>
    </div>
    <div id="trending" class="row">
        <c:forEach items="${sessionScope.trendingList}" var="o">
            <div class="trendingAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="trendingLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="trending" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">New Air Jordan</div>
        <div class="col-auto p-2 h2 text-right small">
            <a href="loadProductShop?action=loadByCategory&CID=51&pageNumber=1" class="text-decoration-none text-success">See All <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="airjordan" class="row">
        <c:forEach items="${sessionScope.airjordanList}" var="o">
            <div class="airjordanAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="airjordanLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="airjordan" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">New Adidas</div>
        <div class="col-auto p-2 h2 text-right small">
            <a href="loadProductShop?action=loadByCategory&CID=52&pageNumber=1" class="text-decoration-none text-success">See All <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="adidas" class="row">
        <c:forEach items="${sessionScope.adidasList}" var="o">
            <div class="adidasAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="adidasLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="adidas" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">New Ascis</div>
        <div class="col-auto p-2 h2 text-right small">
            <a href="loadProductShop?action=loadByCategory&CID=53&pageNumber=1" class="text-decoration-none text-success">See All <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="ascis" class="row">
        <c:forEach items="${sessionScope.ascisList}" var="o">
            <div class="ascisAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="ascisLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="ascis" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">New Converse</div>
        <div class="col-auto p-2 h2 text-right small">
            <a href="loadProductShop?action=loadByCategory&CID=54&pageNumber=1" class="text-decoration-none text-success">See All <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="converse" class="row">
        <c:forEach items="${sessionScope.converseList}" var="o">
            <div class="converseAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="converseLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="converse" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">New New Balance</div>
        <div class="col-auto p-2 h2 text-right small">
            <a href="loadProductShop?action=loadByCategory&CID=55&pageNumber=1" class="text-decoration-none text-success">See All <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="newbalance" class="row">
        <c:forEach items="${sessionScope.newbalanceList}" var="o">
            <div class="newbalanceAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="newbalanceLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="newbalance" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">New Nike</div>
        <div class="col-auto p-2 h2 text-right small">
            <a href="loadProductShop?action=loadByCategory&CID=56&pageNumber=1" class="text-decoration-none text-success">See All <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="nike" class="row">
        <c:forEach items="${sessionScope.nikeList}" var="o">
            <div class="nikeAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="nikeLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="nike" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<!-- start content -->
<div class="container">
    <div class="row">
        <div class="col p-2 h2">New Yeezy</div>
        <div class="col-auto p-2 h2 text-right small">
            <a href="loadProductShop?action=loadByCategory&CID=57&pageNumber=1" class="text-decoration-none text-success">See All <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="yeezy" class="row">
        <c:forEach items="${sessionScope.yeezyList}" var="o">
            <div class="yeezyAmount col-md-2 p-2">
                <a href="loadProductDetail?productID=${o.productID}" class="text-decoration-none text-dark">
                    <div class="border border-dark">
                        <div class="col px-2 py-1">
                            <img src="${o.images[0].imageURL}" alt="alt" class="rounded mx-auto d-block img-fluid p-2">
                        </div>
                        <div class="col px-2 py-1">${o.productName}</div>
                        <div class="col px-2 py-1 h5">$${o.productPrice}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col p-2">
            <button id="yeezyLoadMoreBtn" onclick="loadMore(this)" type="submit" name="action" value="yeezy" class="btn btn-outline-dark rounded-0 fw-semibold text-nowrap btn-sm text-success">Load more</button>
        </div>
    </div>
</div>
<!-- end content -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
                function loadMore(button) {
                    var actionValue = button.value;
                    var recommendAmount = document.getElementsByClassName("recommendAmount").length;
                    var trendingAmount = document.getElementsByClassName("trendingAmount").length;
                    var airjordanAmount = document.getElementsByClassName("airjordanAmount").length;
                    var adidasAmount = document.getElementsByClassName("adidasAmount").length;
                    var ascisAmount = document.getElementsByClassName("ascisAmount").length;
                    var converseAmount = document.getElementsByClassName("converseAmount").length;
                    var newbalanceAmount = document.getElementsByClassName("newbalanceAmount").length;
                    var nikeAmount = document.getElementsByClassName("nikeAmount").length;
                    var yeezyAmount = document.getElementsByClassName("yeezyAmount").length;
                    $.ajax({
                        url: "/loadMore",
                        type: "post", //send it through get method
                        data: {
                            action: actionValue,
                            recommendAmount: recommendAmount,
                            trendingAmount: trendingAmount,
                            airjordanAmount: airjordanAmount,
                            adidasAmount: adidasAmount,
                            ascisAmount: ascisAmount,
                            converseAmount: converseAmount,
                            newbalanceAmount: newbalanceAmount,
                            nikeAmount: nikeAmount,
                            yeezyAmount: yeezyAmount
                        },
                        success: function (response) {
                            var row = document.getElementById(actionValue);
                            row.innerHTML += response;
                            
                            //Re-count after load by ajax
                            var recommendAmount = document.getElementsByClassName('recommendAmount');
                            var recommendLoadMoreBtn = document.getElementById('recommendLoadMoreBtn');
                            
                            var trendingAmount = document.getElementsByClassName('trendingAmount');
                            var trendingLoadMoreBtn = document.getElementById('trendingLoadMoreBtn');
                            
                            var airjordanAmount = document.getElementsByClassName('airjordanAmount');
                            var airjordanLoadMoreBtn = document.getElementById('airjordanLoadMoreBtn');
                            
                            var adidasAmount = document.getElementsByClassName('adidasAmount');
                            var adidasLoadMoreBtn = document.getElementById('adidasLoadMoreBtn');
                            
                            var ascisAmount = document.getElementsByClassName('ascisAmount');
                            var ascisLoadMoreBtn = document.getElementById('ascisLoadMoreBtn');
                            
                            var converseAmount = document.getElementsByClassName('converseAmount');
                            var converseLoadMoreBtn = document.getElementById('converseLoadMoreBtn');
                            
                            var newbalanceAmount = document.getElementsByClassName('newbalanceAmount');
                            var newbalanceLoadMoreBtn = document.getElementById('newbalanceLoadMoreBtn');
                            
                            var nikeAmount = document.getElementsByClassName('nikeAmount');
                            var nikeLoadMoreBtn = document.getElementById('nikeLoadMoreBtn');
                            
                            var yeezyAmount = document.getElementsByClassName('yeezyAmount');
                            var yeezyLoadMoreBtn = document.getElementById('yeezyLoadMoreBtn');
                            
                            if (recommendAmount.length >= 18 || recommendAmount.length%6 !== 0) {
                                recommendLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (trendingAmount.length >= 18 || trendingAmount.length%6 !== 0) {
                                trendingLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (airjordanAmount.length >= 12 || airjordanAmount.length%6 !== 0) {
                                airjordanLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (adidasAmount.length >= 12 || adidasAmount.length%6 !== 0) {
                                adidasLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (ascisAmount.length >= 12 || ascisAmount.length%6 !== 0) {
                                ascisLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (converseAmount.length >= 12 || converseAmount.length%6 !== 0) {
                                converseLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (newbalanceAmount.length >= 12 || newbalanceAmount.length%6 !== 0) {
                                newbalanceLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (nikeAmount.length >= 12 || nikeAmount.length%6 !== 0) {
                                nikeLoadMoreBtn.style.display = 'none';
                            }
                            
                            if (yeezyAmount.length >= 12 || yeezyAmount.length%6 !== 0) {
                                yeezyLoadMoreBtn.style.display = 'none';
                            }
                        },
                        error: function (xhr) {
                            //Do Something to handle error
                        }
                    });
                }
                ;
</script>
<%@ include file="/footer.jsp" %>