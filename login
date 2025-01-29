<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            height: 100vh;
            margin: 0;
            justify-content: center;
            /* Centers horizontally */
            align-items: center;
            /* Centers vertically */
        }

        .container {
            display: flex;
            justify-content: center;
            /* Centers horizontally */
            align-items: center;
            /* Centers vertically */
            width: 100%;
            height: 100vh;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            /* Adds spacing between inputs */
        }

        .left {
            flex: 1;
            background: url('Image/LOGIN.webp') no-repeat center center/cover;
            height: 100vh;
        }

        .right {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: white;
            padding: 20px;
            height: 100vh;
        }

        .logo {
            width: 100px;
            height: 100px;
            background: url('Image/LOGIN.webp') no-repeat center center/cover;
            margin-bottom: 0px;
        }

        h2 {
            color: #28a745;
            font-size: 60px;
            margin-top: 15px;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #28a745;
            border-radius: 5px;
        }

        .btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            width: 60%;
            margin-top: 20px;
        }

        button:hover {
            background-color: #218838;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="left"></div>
        <div class="right">
            <div class="logo"></div>
            <h2>LOGIN</h2>
            <form action="" method="POST">
                <?php if (session()->getFlashdata('error')) { ?>
                    <div class="alert alert-danger">
                        <?php echo session()->getFlashdata('error') ?>
                    </div>
                <?php } ?>
                <div>
                    <input type="text" name="nis" class="form-control" value="<?php echo session()->getFlashdata('nis') ?>" id="inputNis" placeholder="NIS">
                </div>
                <div>
                    <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password">
                </div>
                <div>
                    <input type="submit" name="login" class="btn custom-btn" value="LOGIN">
                </div>
            </form>
            <!-- <input type="text" id="nis" placeholder="NIS">
            <input type="password" id="password" placeholder="Password">
            <button onclick="login()">LOGIN</button> -->
        </div>
    </div>
</body>

</html>
