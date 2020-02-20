<html lang="en" class="uk-height-1-1">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>School Database</title>
        <link rel="icon" href="img/favicon.ico">
        <!-- CSS FILES -->
        <link rel="stylesheet" type="text/css" href="css/uikit.min.css">
    </head>
    <body class="uk-height-1-1">
        <div class="uk-flex uk-flex-center uk-flex-middle uk-height-viewport">
            <div class="uk-padding-small">
            <a href="./"><legend class="uk-legend">Back</legend></a>
                <?php
                    $link = mysqli_connect('localhost', 'root', '');
                    if (!$link) {
                        echo 'Could not connect: ' . mysqli_error();
                    }
                    mysqli_select_db($link, 'doctoroffice');
                    if(isset($_POST['doctorpatientlist'])) {
                        $query = "SELECT PERSON.FirstName, PERSON.LastName, PATIENT.PhoneNumber
                                FROM DOCTOR
                                INNER JOIN PATIENTVISIT ON PATIENTVISIT.DoctorID = DOCTOR.DoctorID
                                INNER JOIN PATIENT ON PATIENT.PatientID = PATIENTVISIT.PatientID
                                INNER JOIN PERSON ON PERSON.PersonID = PATIENT.PersonID
                                WHERE DOCTOR.FirstName = 'Ron' AND DOCTOR.LastName = 'Belkin';";
                        if (!$query) {
                            echo 'Error: ' . mysqli_error();
                        }
                        $result = mysqli_query($link, $query);
                        if (!$result or mysqli_num_rows($result) <= 0) {
                            echo 'No results found for Dr. Rob Belkin.';
                        }
                        else {
                            echo '<table class="uk-table uk-table-middle uk-table-divider uk-table-hover">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Phone Number</th>
                                </tr>
                            </thead>
                            <tbody>';
                            while($row = mysqli_fetch_array($result)) {
                                echo '<tr>
                                        <td>' . $row['FirstName'] . '</td>
                                        <td>' . $row['LastName'] . '</td>
                                        <td>' . $row['PhoneNumber'] . '</td>
                                    </tr>';
                            }
                            echo '</tbody>';
                            echo '</table>';
                        }
                    }
                    elseif(isset($_POST['panadol'])) {
                        $query = "SELECT DISTINCT A.FirstName, A.LastName, R.PrescriptionName
                                      FROM PERSON A
                                      INNER JOIN DOCTOR D ON A.personID = D.personID
                                      INNER JOIN PATIENTVISIT V ON D.DoctorID = V.DoctorID
                                      INNER JOIN PVISITPRESCRIPTION P ON V.VisitID = P.VisitID
                                      INNER JOIN PRESCRIPTION R ON P.PrescriptionID = R.PrescriptionID
                                      WHERE R.PrescriptionName = 'Panadol';";
                        if (!$query) {
                            echo 'Error: ' . mysqli_error();
                        }
                        $result = mysqli_query($link, $query);
                        if (!$result or mysqli_num_rows($result) <= 0) {
                            echo 'No results found for Panadol.';
                        }
                        else {
                            echo '<table class="uk-table uk-table-middle uk-table-divider uk-table-hover">
                            <thead>
                                <tr>
                                    <th>Doctor First Name</th>
                                    <th>Last Name</th>
                                    <th>Prescription Name</th>
                                </tr>
                            </thead>
                            <tbody>';
                            while($row = mysqli_fetch_array($result)) {
                                echo '<tr>
                                        <td>' . $row['FirstName'] . '</td>
                                        <td>' . $row['LastName'] . '</td>
                                        <td>' . $row['PrescriptionName'] . '</td>
                                    </tr>';
                            }
                            echo '</tbody>';
                            echo '</table>';
                        }
                    }
                    elseif(isset($_POST['doctor_specialty'])) {
                        $query = "SELECT DISTINCT P.FirstName, P.LastName, S.SpecialtyName
                                      FROM PERSON P
                                      INNER JOIN DOCTOR D ON P.personID = D.PersonID
                                      INNER JOIN DOCTORSPECIALTY H ON D.DoctorID = H.DoctorID
                                      INNER JOIN SPECIALTY S ON H.SpecialtyID = S.SpecialtyID";
                        if (!$query) {
                            echo 'Error: ' . mysqli_error();
                        }
                        $result = mysqli_query($link, $query);
                        if (!$result or mysqli_num_rows($result) <= 0) {
                            echo 'No results found for Doctor Specialty.';
                        }
                        else {
                            echo '<table class="uk-table uk-table-middle uk-table-divider uk-table-hover">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Doctor Specialty</th>
                                </tr>
                            </thead>
                            <tbody>';
                            while($row = mysqli_fetch_array($result)) {
                                echo '<tr>
                                        <td>' . $row['FirstName'] . '</td>
                                        <td>' . $row['LastName'] . '</td>
                                        <td>' . $row['SpecialtyName'] . '</td>
                                    </tr>';
                            }
                            echo '</tbody>';
                            echo '</table>';
                        }
                    }
                    elseif(isset($_POST['doctor_specialty_modified'])) {
                        $query = "SELECT DISTINCT P.FirstName, P.LastName, S.SpecialtyName
                                      FROM PERSON P
                                      INNER JOIN DOCTOR D ON P.personID = D.PersonID
                                      LEFT OUTER JOIN DOCTORSPECIALTY H ON D.DoctorID = H.DoctorID
                                      LEFT OUTER JOIN SPECIALTY S ON H.SpecialtyID = S.SpecialtyID;";
                        if (!$query) {
                            echo 'Error: ' . mysqli_error();
                        }
                        $result = mysqli_query($link, $query);
                        if (!$result or mysqli_num_rows($result) <= 0) {
                            echo 'No results found for Doctor Specialty.';
                        }
                        else {
                            echo '<table class="uk-table uk-table-middle uk-table-divider uk-table-hover">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Doctor Specialty</th>
                                </tr>
                            </thead>
                            <tbody>';
                            while($row = mysqli_fetch_array($result)) {
                                echo '<tr>
                                        <td>' . $row['FirstName'] . '</td>
                                        <td>' . $row['LastName'] . '</td>
                                        <td>' . $row['SpecialtyName'] . '</td>
                                    </tr>';
                            }
                            echo '</tbody>';
                            echo '</table>';
                        }
                    }




                    mysqli_close($link);
                ?>
            </div>
        </div>

        <!-- JS FILES -->
        <script src="js/uikit.min.js"></script>
        <script src="js/uikit-icons.min.js"></script>
    </body>
</html>
