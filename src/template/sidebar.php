<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apoteku</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="../../src/assets/css/output.css" rel="stylesheet">
    <link href="../assets/css/style.css" rel="stylesheet">
</head>

<body class="bg-gray-100 text-gray-900 flex">

    <aside class="w-64 h-screen bg-blue-500 fixed top-0 left-0 p-6 shadow-lg flex flex-col justify-between">
        <div>
            <h1 class="text-3xl font-bold mb-8 text-white">Daftar Makanan</h1>
            <nav>
                <ul>
                    <li class="mb-6 list-none">
                        <a href="/makanan/src/template/sidebar.php"
                            class="w-full bg-blue-600 text-white p-3 rounded-lg flex items-center hover:bg-blue-700">
                            <div class="flex items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                                    fill="#FFFFFF">
                                    <path d="M80-120v-80h800v80H80Zm40-120v-280h120v280H120Zm200 0v-480h120v480H320Zm200 0v-360h120v360H520Zm200 0v-600h120v600H720Z" />
                                </svg>
                                <span class="ml-2">List Makanan</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>

    <div class="container mx-auto p-6 ml-64">
        <h1 class="text-2xl font-bold mb-6">Daftar Makanan</h1>

        <table class="table-auto w-full border border-gray-300">
            <thead>
                <tr>
                    <th class="px-4 py-2 border border-gray-300">ID Makanan</th>
                    <th class="px-4 py-2 border border-gray-300">Nama Makanan</th>
                    <th class="px-4 py-2 border border-gray-300">Asal Makanan</th>
                    <th class="px-4 py-2 border border-gray-300">Deskripsi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include('../database/database.php');
                $query = "SELECT * FROM daftar_makanan"; 
                $result = mysqli_query($conn, $query);

                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td class='px-4 py-2 border border-gray-300'>" . $row['ID_Makanan'] . "</td>";
                    echo "<td class='px-4 py-2 border border-gray-300'>" . $row['Nama_Makanan'] . "</td>";
                    echo "<td class='px-4 py-2 border border-gray-300'>" . $row['Asal_Makanan'] . "</td>";
                    echo "<td class='px-4 py-2 border border-gray-300'>" . $row['Deskripsi'] . "</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
    </div>

</body>

</html>
