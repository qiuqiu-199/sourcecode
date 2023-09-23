.class Landroid/support/v7/app/MediaRouteControllerDialog$9;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 772
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 775
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/app/OverlayListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/OverlayListView;->startAnimationAll()V

    .line 776
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/app/OverlayListView;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1600(Landroid/support/v7/app/MediaRouteControllerDialog;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    .line 777
    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1700(Landroid/support/v7/app/MediaRouteControllerDialog;)I

    move-result v1

    int-to-long v1, v1

    .line 776
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/app/OverlayListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
