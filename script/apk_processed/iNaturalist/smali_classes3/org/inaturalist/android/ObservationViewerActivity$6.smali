.class Lorg/inaturalist/android/ObservationViewerActivity$6;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->refreshFavorites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/String;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 771
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Obs - Unfave"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 773
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_FAVORITE:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation_id"

    .line 774
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 775
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 777
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->val$username:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$900(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$802(Lorg/inaturalist/android/ObservationViewerActivity;I)I

    .line 779
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$800(Lorg/inaturalist/android/ObservationViewerActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$800(Lorg/inaturalist/android/ObservationViewerActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 780
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1000(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/FavoritesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/FavoritesAdapter;->notifyDataSetChanged()V

    .line 782
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 783
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1200(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 785
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 786
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1300(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 788
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$6;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1300(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
