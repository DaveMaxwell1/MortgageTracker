<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="MortgageTracker._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Check your Mortgage Status Below:</h2>
            </hgroup>
            <p>
                To check the status of your AIB mortgage application simply enter your Mortgage application ID in the field below and select search.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
 

            <h3><asp:Label id="lblKeyword" runat="server" text="Enter your Mortgage ID:"></asp:Label></h3><br />
 
        <asp:TextBox id="txtKeyWord" runat="server"></asp:TextBox>
 
        <asp:Button id="btnSearch" onclick="btnSearch_Click" runat="server" Text="Search"></asp:Button>


     <asp:GridView ID="myGridView" AllowPaging="False" AutoGenerateColumns="False" onRowDataBound="myGridView_RowDataBound" OnPageIndexChanging="ShowPageCommand"  runat="server">
    
         
            <Columns>
 
                <asp:TemplateField HeaderText="Mortgage ID">
 
                    <ItemTemplate>
 
                        <asp:Label id="ID" runat="server"></asp:Label>
 
                    </ItemTemplate>
 
                </asp:TemplateField>
 
                <asp:TemplateField HeaderText="Customer Type">
 
                    <ItemTemplate>
 
                        <asp:Label id="CustomerType" runat="server"></asp:Label>
 
                    </ItemTemplate>
 
                </asp:TemplateField>
 
                <asp:TemplateField HeaderText="Mortgage Status">
 
                    <ItemTemplate>
 
                        <asp:Label id="MortgageStatus" runat="server"></asp:Label>
 
                    </ItemTemplate>
 
                </asp:TemplateField>
 
            </Columns>

        
         
          </asp:GridView>
 


</asp:Content>
