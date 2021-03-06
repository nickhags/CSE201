<?php

session_start();
//--------------------------------------------------------------------destroy session to logout
if (isset($_GET['action'])) {
    if ($_GET['action'] == "logout") {
        session_destroy();
        header("location: game.php");
        exit;
    }
}
//-----------------------------------------------------------Use session to store username and password

$user = '';
$pwd = '';

if (isset($_POST['user']) && isset($_POST['pwd'])) {
    $_SESSION['user'] = $_POST['user'];
    $_SESSION['pwd'] = $_POST['pwd'];
}
if (isset($_SESSION['user']) && isset($_SESSION['pwd'])) {
    $user = $_SESSION['user'];
    $pwd = $_SESSION['pwd'];
}



//------------------------------------------------------------Connect to the database


// require_once("game.php");
// $mysqli = mysqli_connect("localhost", "DBname", "password", "cse383");
// if (mysqli_connect_errno($mysqli)) {
//     echo "Failed to connect to MySQL: " . mysqli_connect_error();
//     echo "Failed to connect to MySQL: " . mysqli_connect_error();
//     die;
// }


?>


<!doctype html>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Result</title>
    <style>
        body {
            background-color: #5fbdff;
        }

        .col {
            background-color: lightgreen;
            border: 1px solid black;
        }

        h1 {
            display: inline-block;
            color: white;
            vertical-align: bottom;
            padding-bottom: 0;
            margin-bottom: 0;
            font-size: 500%;
        }

        #headerLogo {
            display: inline-block;
        }

        a {
            color: black;
            font-size: 150%;
        }
    </style>
</head>

<body>


    <header>
        <div class="row">
            <div class="col-6 justify-content-end align-items-center">
                <img style=" width:15%;" src="image/logo.jpg" id="headerLogo">
                <h1 id="title">Sierra Store</h1>
            </div>


            <div class="col-5 d-flex justify-content-end align-items-center">

                <a class="btn btn-sm btn-outline-secondary" href="login.html">Sign up</a>
            </div>
        </div>

    </header>

    <div class="m-3" style="text-align: center">
        <form class="form">
            <input class="form-control mr-sm-2 col-6 d-inline-block " type="search " placeholder="Search " aria-label="Search ">
            <button class="btn btn-outline-success my-2 my-sm-0 d-inline-block " type="submit ">Search</button>
        </form>
    </div>


    <div class="row">
        <section id="nav" class="d-inline-block p-4">
            <ul class="nav flex-column d-inline-block p-0" style="vertical-align: top ">
                <li class="nav-item ">
                    <a class="nav-link active " href="# ">New Games</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="# ">Upcomming Releases</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="# ">Recommended</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="# ">Top Seller</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="# ">ON Sale </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="# ">Browse By Games</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="# ">Free Game</a>
                </li>

            </ul>
        </section>
        <div class="container p-0 ml-0">



            <div class="row">
                <?php
                for ($i = 0; $i < 9; $i++) {
                    ?>
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Game Description.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
            }
            ?>


            </div>
        </div>
    </div>



    </section>



    <footer>

        <div class="m-3" style="text-align: center">
            <form class="form">
                <input class="form-control mr-sm-2 col-6 d-inline-block " type="search " placeholder="Search " aria-label="Search ">
                <button class="btn btn-outline-success my-2 my-sm-0 d-inline-block " type="submit ">Search</button>
            </form>
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo " crossorigin="anonymous "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js " integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1 " crossorigin="anonymous "></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js " integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM " crossorigin="anonymous "></script>
</body>

</html>