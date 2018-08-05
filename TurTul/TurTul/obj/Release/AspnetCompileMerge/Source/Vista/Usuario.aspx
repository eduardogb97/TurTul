<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="TurTul.Vista.Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>WebcamQRCode exemple</title> 
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
    <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
  
    </head>
  <body>
      <form id="form1" runat="server">
   <div id="app">
      <div class="sidebar">
        <section class="cameras">
           <label v-if="cameras.length === 0" class="empty"></label>
            <label v-for="camera in cameras">
             <span v-if="camera.id != activeCameraId" :title="formatName(camera.name)">
              </span>
            </label>
          
        </section>
        <section class="scans">
            <ul v-if="scans.length === 0">
            <li class="empty"></li>
          </ul>
          <label name="scans" tag="ul">
            <label v-for="scan in scans" :key="scan.date" :title="scan.content">{{ scan.content }}</label>
          </label>
              </section>          
      </div>
      <div class="preview-container">
        <video id="preview"></video>
      </div>
    </div>
          <script src="../js/app.js"></script>
</form>
  </body>
</html>
