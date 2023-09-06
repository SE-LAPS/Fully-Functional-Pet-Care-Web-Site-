<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Booking</title>
        <link rel="icon" type="image/x-icon" href="images/foot.png">
        <!-- Add Bootstrap CSS link here -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- Add Bootstrap JS and jQuery script links here -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>




        <!-- booking -->

        <style>
            @import url('https://fonts.googleapis.com/css?family=Exo+2|Yatra+One');

            .booking-form{
                max-width: 520px;
                margin: 20px auto;
                border: 1px solid rgba(0, 0, 0, 0.2);
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                padding: 15px;
                background-color: #AFE1AF;
                border-radius: 3%

            }

            .mb-4{
                font-family: 'Yatra One', cursive;
                font-size: 48px;
                color: blue;
                margin-bottom: 25px;
                text-align: center;
            }
            .btn-success{
                display: inline-block;
                margin-top:30px;
                height:50px;
                width:200px;
                padding: 6px 3px;
                color: #fff;
                text-decoration: none;
                transition: background-color 0.3s ease;
                border-radius: 5px; 
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
                font-size: 18px;
                margin-top: 40px;
                margin-left: 70px;
            }
            .modal-content {
                background-color: #2E8B57;

                .modal-title {
                    color:black ;
                    font-weight: bold;

                }

                .modal-body{
                    color:#fff;
                    font-weight: bold
                }



            </style>

        </head>
        <body>
            <?php include 'Header.php' ?>


            <!--booking-->
            <div class="container mt-5">
                <div class="booking-form">
                    <h2 class="mb-4"> Appointment Booking</h2>

                    <form>

                        <div class="form-group">
                            <label for="vet-selection">Select a Veterinarian:</label>
                            <input type="text" class="form-control" id="" required readonly>
                        </div>


                        <div class="form-group">
                            <label for="fullName">Full Name:</label>
                            <input type="text" class="form-control" id="fullName" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="text" class="form-control" id="email" required>
                        </div>

                        <div class="form-group">
                            <label for="number">Contact Number:</label>
                            <input type="text" class="form-control" id="number" required>
                        </div>

                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input type="text" class="form-control" id="address" required>
                        </div>

                        <div class="form-group">
                            <label for="pet-type">Select a Pet Type:</label>
                            <select class="form-control" id="pet-type" required>
                                <option value="" disabled selected>Select Pet Type</option>
                                <option value="Dog">Dog</option>
                                <option value="Cat">Cat</option>
                                <option value="Rabbit">Rabbit</option>
                                <!-- Add more options if needed -->
                            </select>
                        </div>

                        <div class="form-row">
                            <div class="form-group col">
                                <label for="appointment-date">Select Date:</label>
                                <input type="date" class="form-control" id="appointment-date" required>
                            </div>

                            <div class="form-group col">
                                <label for="appoinment_time">Select Time:</label>
                                <input type="time" class="form-control" id="appoinment_time" required>
                            </div>
                            <div class="form-group">
                                <label for="message">Message:</label>
                                <textarea class="form-control" id="message" rows="5" required></textarea>
                            </div>
                            <button type="button" class="btn btn-success" onclick="submitForm()">Make an Appointment</button>

                    </form>
                </div>
            </div>
        </div>

        <script>
            function submitForm() {
                // Get form input values
                var vetSelection = document.getElementById("vet-selection").value;
                var fullName = document.getElementById("fullName").value;
                var email = document.getElementById("email").value;
                var number = document.getElementById("number").value;
                var address = document.getElementById("address").value;
                var petType = document.getElementById("pet-type").value;
                var appointmentDate = document.getElementById("appointment-date").value;
                var appointmentTime = document.getElementById("appoinment_time").value;
                var message = document.getElementById("message").value;

                // Perform form validation
                if (
                        vetSelection === "" ||
                        fullName === "" ||
                        email === "" ||
                        number === "" ||
                        address === "" ||
                        petType === "" ||
                        appointmentDate === "" ||
                        appointmentTime === "" ||
                        message === ""
                        ) {
                    // If any field is empty, display an alert or handle the validation error in your preferred way
                    alert("Please fill all the fields.");

                }

            }


        </script>

        <?php include 'Footer.php' ?>
    </body>
</html>


