.class Lcom/mikepenz/materialdrawer/DrawerBuilder$3;
.super Ljava/lang/Object;
.source "DrawerBuilder.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleDrawerNavigation(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    invoke-interface {v0, p1}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;->onDrawerClosed(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    invoke-interface {v0, p1}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;->onDrawerOpened(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;->this$0:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
