<%@page import="Dao.VehicleDao"%>
<%@page import="model.Vehicle"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicles</title>
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
                                <a href="addVehicle.jsp" class="d-flex align-items-center">
                                    <span class="bi bi-box h5"></span>
                                    <h5 class="ml-2">Add Vehicle</h5>
                                </a>
                            </article>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <article class="p-4 rounded shadow-sm border-left mb-4">
                                <a href="RetriveVehicle" class="d-flex align-items-center">
                                    <span class="bi bi-person h5"></span>
                                    <h5 class="ml-2">List of Vehicles</h5>
                                </a>
                            </article>
                        </div>

                    </section>

                    <div class="jumbotron jumbotron-fluid rounded bg-white border-0 shadow-sm border-left px-4">

                        <div class="container">

                            <h2 class="display-4 mb-2 text-primary">List of Vehicles</h2>

                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Licence ID</th>
                                                    <th scope="col">Vehicle Type</th>
                                                    <th scope="col">Model</th>
                                                    <th scope="col">Mileage</th>
                                                   
                                                    <th scope="col">Colour</th>
                                                    <th scope="col">Made Year</th>
                                                    <th scope="col">Transmision</th>
                                                    <th scope="col">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                            <% ArrayList<Vehicle> list = (ArrayList<Vehicle>) request.getAttribute("vehicle");
                                            
                                            if(!list.isEmpty()){
                                            for(Vehicle v : list) {
                                            %>
 
                                                <tr>
                                                    <td><%=v.getLicenseNo()  %></td>
                                                    <td><%=v.getVehicleType() %></td>
                                                    <td><%=v.getModelString() %></td>
                                                    <td><%=v.getMileAge()  %></td>
                                                    
                                                    <td><%=v.getColor() %></td>
                                                    <td><%=v.getMadeYear() %></td>
                                                    <td><%=v.isAutomatic() %></td>
                                                    <td>
                                                 
                                                        <a  href="UpdateVehicle?id=<%= v.getId()%>" type="button" class="btn btn-success"
                                                            data-toggle="modal" data-target="#exampleModal"><i
                                                                class="fas fa-edit"></i></a>
                                                        <a type="button" href="DeleteVehicle?id=<%=v.getId()%>" class="btn btn-danger"><i
                                                                class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                 <%}
                                            }else{%>
                                                <h2>No Vehicles Added to display </h2>
                                                <%} %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal Edit-->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Edit Vehicle</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        
                                        <% 
                                        String id=request.getAttribute("editId").toString();
                                        Vehicle vehicle=(Vehicle)request.getAttribute("editVehicle");
                                        
                                        
                                        
                                       %>
                                        <form action="UpdateVehicle" method="post" autocomplete="off" >
                                        <div class="modal-body">
                                        
                                        
                                        
                               			 
											
											 
                                                <input class="form-control" type="hidden"  id="id" name="id" required="" value=<%=id %>>
                                                  
                                            <div class="form-group">
                                                <label for="uname1">Licence No</label>
                                                <input class="form-control" id="uname1" name="licence" required="" value=<%=vehicle.getLicenseNo() %>
                                                    type="text">
                                            </div>

                                            <div class="form-group">
                                                <label>Vehicle Type</label>
                                                <input  class="form-control" name="type" value=<%=vehicle.getVehicleType() %> id="pwd1"
                                                    required="" type="text">
                                            </div>
                                            
                                             <div class="form-group col-sm-6">
                                   		 <label>Vehicle Model</label>
                                    			<input  class="form-control" id="model" value=<%=vehicle.getModelString() %> name="model" required=""
                                        type="text">
                               				 </div>

                                            <div class="form-group">
                                                <label>Mileage</label>
                                                <input  value=<%=vehicle.getMileAge() %> class="form-control" id="pwd1" name="mileAge"
                                                    required="" type="text">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleAmount">Rent Per Day</label>
                                                <div class="input-group">
                                                    <div class="input-group-text">
                                                        $
                                                    </div>
                                                    <input class="form-control" id="exampleAmount" placeholder="Amount"
                                                        type="text"  name="number" value=<%=vehicle.getAmount() %>>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">.00</span>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for="exampleSt">Colour</label> <select
                                                    class="form-control custom-select" name="color" id="exampleSt" value=<%=vehicle.getColor() %>>
                                                    <option class="text-white bg-warning" >
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

                                            <div class="form-group">
                                                <label for="exampleAmount">Made Year</label>
                                                <div class="input-group">
                                                    <div class="input-group-text">
                                                        Year
                                                    </div>
                                                    <input class="form-control" id="exampleAmount" name="year" placeholder="Year"
                                                        type="number" value=<%=vehicle.getMadeYear() %>>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for="exampleSt">Transition</label> <select
                                                    class="form-control custom-select" name="automatic" id="exampleSt" value=<%=vehicle.isAutomatic() %>>
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
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Close</button>
                                            <input type="submit" value="submit" class="btn btn-primary"/>
                                            
                                        </div>
                                        </form>
                                       
                                        
                                    </div>
                                </div>
                            </div>




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

</body>
</html>