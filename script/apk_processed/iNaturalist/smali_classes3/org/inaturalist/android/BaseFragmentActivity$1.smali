.class Lorg/inaturalist/android/BaseFragmentActivity$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseFragmentActivity;->onDrawerCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/BaseFragmentActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$1;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$1;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-static {p1}, Lorg/inaturalist/android/BaseFragmentActivity;->access$000(Lorg/inaturalist/android/BaseFragmentActivity;)V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .line 133
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Menu"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity$1;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-static {v0}, Lorg/inaturalist/android/BaseFragmentActivity;->access$100(Lorg/inaturalist/android/BaseFragmentActivity;)V

    .line 137
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    return-void
.end method
