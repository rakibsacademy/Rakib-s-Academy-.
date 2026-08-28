<!DOCTYPE html>
<html lang="bn">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Login | Rakib's Academy Online</title>

  <script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2"></script>

  <style>
    * {
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      margin: 0;
      background: #f5f7fb;
    }

    .container {
      max-width: 450px;
      margin: 50px auto;
      padding: 20px;
    }

    .box {
      background: white;
      padding: 30px;
      border-radius: 18px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.08);
    }

    h1 {
      text-align: center;
      color: #0f766e;
      margin-bottom: 8px;
    }

    .subtitle {
      text-align: center;
      color: #777;
      margin-bottom: 25px;
    }

    label {
      display: block;
      margin: 15px 0 6px;
      font-weight: bold;
    }

    input {
      width: 100%;
      padding: 13px;
      border: 1px solid #ccc;
      border-radius: 9px;
      font-size: 16px;
    }

    button {
      width: 100%;
      padding: 13px;
      margin-top: 22px;
      border: none;
      border-radius: 9px;
      background: #0f766e;
      color: white;
      font-size: 17px;
      cursor: pointer;
    }

    button:hover {
      background: #0b5f59;
    }

    #message {
      text-align: center;
      margin-top: 15px;
      font-weight: bold;
    }

    .back {
      display: block;
      text-align: center;
      margin-top: 20px;
      color: #0f766e;
      text-decoration: none;
    }
  </style>
</head>

<body>

<div class="container">

  <div class="box">

    <h1>🔐 Login</h1>

    <div class="subtitle">
      Rakib's Academy Online
    </div>

    <label>Email</label>
    <input
      type="email"
      id="email"
      placeholder="আপনার Email লিখুন"
      required
    >

    <label>Password</label>
    <input
      type="password"
      id="password"
      placeholder="Password লিখুন"
      required
    >

    <button onclick="login()">
      Login করুন
    </button>

    <div id="message"></div>

    <a href="index.html" class="back">
      ← মূল পেজে ফিরে যান
    </a>

  </div>

</div>

<script>

  // ==============================
  // SUPABASE CONNECTION
  // ==============================

  const SUPABASE_URL = "YOUR_PROJECT_URL";

  const SUPABASE_KEY = "YOUR_PUBLISHABLE_KEY";

  const supabaseClient =
    window.supabase.createClient(
      SUPABASE_URL,
      SUPABASE_KEY
    );


  // ==============================
  // LOGIN FUNCTION
  // ==============================

  async function login() {

    const email =
      document.getElementById("
