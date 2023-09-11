<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="reset.css">  
</head>
<body>
<nav class="navbar">
    <a href="hoofdpagina.php">
    <img src="huis.svg" class="huis">
</a>
    <div class="search-container">
        <form action="" method="post">
            <input type="text" class="input" placeholder="Search..." name="search">
            <button class="btn" name="verzenden">
                <p class="btntext">search</p>
            </button>
        </form>
    </div>
    <div class="sorteer-buttons">
    <button id="sorteerButtonAZ"><p>A-Z</p></button>
    <button id="sorteerButtonZA"><p>A-Z</p></button>
</div>

<script>
document.addEventListener("DOMContentLoaded", function () {
    const sorteerButtonAZ = document.getElementById("sorteerButtonAZ");
    const sorteerButtonZA = document.getElementById("sorteerButtonZA");
    const studentenBlokken = document.querySelector(".parent");

    function sorteerStudenten(omgekeerd) {
        const studentBlokken = document.querySelectorAll(".child");
        const studentArray = Array.from(studentBlokken);

        studentArray.sort(function (a, b) {
            const voornaamA = a.textContent.split(' ')[0];
            const voornaamB = b.textContent.split(' ')[0];
            if (omgekeerd) {
                return voornaamB.localeCompare(voornaamA);
            } else {
                return voornaamA.localeCompare(voornaamB);
            }
        });
        while (studentenBlokken.firstChild) {
            studentenBlokken.removeChild(studentenBlokken.firstChild);
        }
        studentArray.forEach(function (student) {
            studentenBlokken.appendChild(student);
        });
    }
    sorteerButtonAZ.addEventListener("click", function () {
        sorteerStudenten(false);
    });

    sorteerButtonZA.addEventListener("click", function () {
        sorteerStudenten(true);
    });
});
</script>
</nav>
<div class="backgroundb">
<div class="parent">
    <?php 
        $conn = mysqli_connect('localhost', 'farhan2', '1234', 'klassen');
        if(isset($_POST['search'])) {
            $searchKey = $_POST['search'];
            $orderBy = isset($_POST['orderBy']) ? $_POST['orderBy'] : 'ASC';
            $sql = "SELECT * FROM namen WHERE Voornaam LIKE '%$searchKey%' ORDER BY Voornaam $orderBy";
        } else {
            $orderBy = isset($_POST['orderBy']) ? $_POST['orderBy'] : 'ASC'; 
            $sql = "SELECT * FROM namen ORDER BY Voornaam $orderBy";
            $searchKey = "";
        }
        
        $result = mysqli_query($conn, $sql);
    ?>
    <?php foreach ($result as $resultaten) { ?>
    <div class="child" data-details="<?php 
        echo $resultaten['Voornaam'] . " " . $resultaten['Tussenvoegsel'] . " " . $resultaten['Achternaam'] . '<br>';
        echo $resultaten['Email'] . '<br>';
        echo $resultaten['Telefoonnummer'];
    ?>"><?php echo $resultaten['Voornaam'] . " " . $resultaten['Tussenvoegsel'] . " ". $resultaten['Achternaam']; ?></div>
    <?php } ?>
</div>
<script src="scrippt.js">
    </script>
<div class="zijkant">

</div>
    </div>
</body>
</html>
