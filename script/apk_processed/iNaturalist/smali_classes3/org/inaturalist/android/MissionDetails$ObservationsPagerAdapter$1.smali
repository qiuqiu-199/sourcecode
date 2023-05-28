.class Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter$1;
.super Ljava/lang/Object;
.source "MissionDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter$1;->this$1:Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 603
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter$1;->this$1:Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->this$0:Lorg/inaturalist/android/MissionDetails;

    const-class v2, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation"

    .line 604
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "read_only"

    const/4 v1, 0x1

    .line 605
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "reload"

    .line 606
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter$1;->this$1:Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/MissionDetails;->startActivity(Landroid/content/Intent;)V

    .line 609
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Missions - Tap - Nearby Observation"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    return-void
.end method
