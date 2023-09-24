.class Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeAttributesReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 2001
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V
    .locals 0

    .line 2001
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 2005
    invoke-static {}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChangeAttributesReceiver"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    new-instance p2, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V

    invoke-static {p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1502(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    .line 2010
    new-instance p1, Landroid/content/IntentFilter;

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2011
    invoke-static {}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Registering ACTION_OBSERVATION_RESULT"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2, p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 2014
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3202(Lorg/inaturalist/android/ObservationViewerActivity;Z)Z

    .line 2016
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_OBSERVATION:Ljava/lang/String;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, p2, v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "observation_id"

    .line 2017
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2018
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
