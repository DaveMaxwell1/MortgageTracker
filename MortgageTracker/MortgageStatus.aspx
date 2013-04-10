<%@ Page Title="Check Mortgage Status" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="MortgageStatus.aspx.vb" Inherits="MortgageTracker.MortgageStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">




</asp:Content>
  
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server"> 

         <asp:Label id="lblKeyword" runat="server" text="Enter your Mortgage ID:"></asp:Label><br />
 
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
