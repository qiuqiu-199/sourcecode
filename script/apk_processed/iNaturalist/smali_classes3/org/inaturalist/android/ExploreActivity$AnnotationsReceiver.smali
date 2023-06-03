.class Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExploreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ExploreActivity$1;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 637
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 644
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "results"

    .line 646
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "results"

    .line 652
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    const-string v1, "total_results"

    .line 653
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 655
    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 663
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0, p2}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    return-void
.end method
