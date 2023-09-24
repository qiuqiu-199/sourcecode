.class Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V
    .locals 0

    .line 862
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 865
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 867
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "noConnectivity"

    const/4 v0, 0x0

    .line 871
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 875
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$1100(Lorg/inaturalist/android/ObservationListActivity;)V

    :cond_1
    return-void
.end method
