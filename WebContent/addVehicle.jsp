<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link rel="stylesheet" href="style.css">
<title> Add Vehicle </title>
</head>
<body>


    <div class="container-fluid">
        <div class="row">
            <!-- sidebar -->
            <div class="col-md-3 col-lg-2 px-0 position-fixed vh-100 bg-white shadow-sm sidebar" id="sidebar">
                <h1 class="bi bi-bootstrap text-primary d-flex my-4 justify-content-center"></h1>
                <div class="list-group rounded-0">

                    <button
                        class="list-group-item list-group-item-action border-0 d-flex justify-content-between align-items-center"
                        data-toggle="collapse" data-target="#sale-collapse">
                        <div>
                            <span class="bi bi-cart-dash"></span>
                            <span class="ml-2">Vehicles</span>
                        </div>
                        <span class="bi bi-chevron-down small"></span>
                    </button>
                    <div class="collapse" id="sale-collapse" data-parent="#sidebar">
                        <div class="list-group">
                            <a href="addVehicle.jsp" class="list-group-item list-group-item-action border-0 pl-5">Add Vehicle</a>
                            <a href="RetriveVehicle" class="list-group-item list-group-item-action border-0 pl-5">List of
                                Vehicles</a>
                        </div>
                    </div>


                </div>
            </div>
            <!-- overlay to close sidebar on small screens -->
            <div class="w-100 vh-100 position-fixed overlay d-none" id="sidebar-overlay"></div>
            <!-- note: in the layout margin auto is the key as sidebar is fixed -->
            <div class="col-md-9 col-lg-10 ml-md-auto px-0">
                <!-- top nav -->
                <nav class="w-100 d-flex px-4 py-2 mb-4 shadow-sm">
                    <!-- close sidebar -->
                    <button class="btn py-0 d-lg-none" id="open-sidebar">
                        <span class="bi bi-list text-primary h3"></span>
                    </button>
                    <div class="dropdown ml-auto">
                        <button class="btn py-0 d-flex align-items-center" id="logout-dropdown" data-toggle="dropdown"
                            aria-expanded="false">
                            <span class="bi bi-person text-primary h4"></span>
                            <span class="bi bi-chevron-down ml-1 mb-2 small"></span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right border-0 shadow-sm"
                            aria-labelledby="logout-dropdown">
                            <a class="dropdown-item" href="#">Logout</a>
                            <a class="dropdown-item" href="#">Settings</a>
                        </div>
                    </div>
                </nav>
                <!-- main content -->
                <main class="container-fluid">
                    <section class="row">
                        <div class="col-md-6 col-lg-4">
                            <!-- card -->
                            <article class="p-4 rounded shadow-sm border-left
                     mb-4">
                                <a href="#" class="d-flex align-items-center">
                                    <span class="bi bi-box h5"></span>
                                    <h5 class="ml-2">Add Vehicle</h5>
                                </a>
                            </article>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <article class="p-4 rounded shadow-sm border-left mb-4">
                                <a href="RetriveVehicle" onclick="fetchList();" class="d-flex align-items-center">
                                    <span class="bi bi-person h5"></span>
                                    <h5 class="ml-2">List of Vehicles</h5>
                                </a>
                            </article>
                        </div>

                    </section>

                    <div class="jumbotron jumbotron-fluid rounded bg-white border-0 shadow-sm border-left px-4">

                        <div class="container">

                            <h2 class="display-4 mb-2 text-primary">Add Vehicle</h2>

                            <form action="AddVehicle" method="post" autocomplete="off" class="form" id="formLogin" name="formLogin" role="form">

                                <div class="form-group col-sm-6">
                                    <label for="uname1">Licence No</label>
                                    <input class="form-control" id="licence" name="licence" required="" type="text">
                                </div>

                                <div class="form-group col-sm-6">
                                    <label>Vehicle Type</label>
                                    <input  class="form-control" id="type" name="type" required=""
                                        type="text">
                                </div>
                                
                                 <div class="form-group col-sm-6">
                                    <label>Vehicle Model</label>
                                    <input  class="form-control" id="model" name="model" required=""
                                        type="text">
                                </div>

                                <div class="form-group col-sm-6">
                                    <label>Mileage</label>
                                    <input class="form-control" id="mileAge" name="mileAge" required=""
                                        type="text">
                                </div>

                                <div class="form-group col-sm-6 pb-3">
                                    <label for="exampleAmount">Rent Per Day</label>
                                    <div class="input-group">
                                        <div class="input-group-text">
                                            RS
                                        </div>
                                        <input class="form-control" name="number" id="number" placeholder="Amount"
                                            type="text">
                                        <div class="input-group-append">
                                            <span class="input-group-text">.00</span>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group col-sm-6">
                                    <label for="exampleSt">Colour</label> <select name="color" class="form-control custom-select"
                                        id="exampleSt">
                                        <option class="text-white bg-warning">
                                            Select a colour
                                        </option>
                                        <option value="red">
                                            Red
                                        </option>
                                        <option value="Blue">
                                            Blue
                                        </option>
                                        <option value="black">
                                            Black
                                        </option>
                                        <option value="white">
                                            White
                                        </option>
                                        <option value="green">
                                            green
                                        </option>
                                    </select>
                                </div>

                                <div class="form-group col-sm-6 pb-3">
                                    <label for="exampleAmount">Made Year</label>
                                    <div class="input-group">
                                        <div class="input-group-text">
                                            Year
                                        </div>
                                        <input class="form-control" id="year" name="year" placeholder="Year" type="number">
                                    </div>
                                </div>


                                <div class="form-group col-sm-6">
                                    <label for="trans">Transmition</label> <select class="form-control custom-select"
                                        id="trans" name="automatic">
                                        <option class="text-white bg-warning">
                                            Select transition
                                        </option>
                                        <option value=true>
                                            Automatic
                                        </option>
                                        <option value=false>
                                            Manual
                                        </option>
                                    </select>
                                </div>

                                <input class="btn btn-success btn-lg float-right" type="submit" value="AddVehicle">Add Vehicle</button>
                            </form>

                        </div>
                    </div>
                </main>
            </div>
        </div>
    </div>






    <!-- JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>

    <script src="script.js"></script>
<script>
 function fetchList(){
	 window.location="/RetriveVehicle";
 }
</script>
</body>

</html>