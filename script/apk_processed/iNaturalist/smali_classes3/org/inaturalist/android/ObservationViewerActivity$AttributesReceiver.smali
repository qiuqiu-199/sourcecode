.class Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttributesReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 2023
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V
    .locals 0

    .line 2023
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2027
    invoke-static {}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AttributesReceiver"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3300(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, p2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 2031
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    const-string p2, "get_attributes_for_taxon_result"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_0

    .line 2034
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    new-instance p2, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {p2}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    .line 2035
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3400(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void

    .line 2039
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-string v0, "results"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1

    iput-object p1, p2, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    .line 2041
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3400(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void
.end method
