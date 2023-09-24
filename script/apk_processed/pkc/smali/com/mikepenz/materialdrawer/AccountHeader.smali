.class public Lcom/mikepenz/materialdrawer/AccountHeader;
.super Ljava/lang/Object;
.source "AccountHeader.java"


# instance fields
.field protected final mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mAccountHeaderContainer:Landroid/view/View;

    return-object v0
.end method

.method public setDrawer(Lcom/mikepenz/materialdrawer/Drawer;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-void
.end method

.method public toggleSelectionList(Landroid/content/Context;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->toggleSelectionList(Landroid/content/Context;)V

    return-void
.end method
