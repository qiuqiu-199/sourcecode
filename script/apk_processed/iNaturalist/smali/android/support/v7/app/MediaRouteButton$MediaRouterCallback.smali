.class final Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteButton;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteButton;)V
    .locals 0

    .line 522
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteButton;Landroid/support/v7/app/MediaRouteButton$1;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    .line 550
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    .line 560
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    .line 555
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 525
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 535
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 530
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 540
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 545
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method
