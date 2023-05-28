.class Lorg/inaturalist/android/ExploreActivity$11;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->refreshObservations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1062
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$2100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/ObservationGridAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    aget v0, v0, v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1064
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$2100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/ObservationGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1065
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    new-instance v2, Lorg/inaturalist/android/ObservationGridAdapter;

    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v4

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ExploreActivity;->access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;

    move-result-object v5

    aget-object v1, v5, v1

    invoke-direct {v2, v3, v4, v1}, Lorg/inaturalist/android/ObservationGridAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v0, v2}, Lorg/inaturalist/android/ExploreActivity;->access$2102(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ObservationGridAdapter;)Lorg/inaturalist/android/ObservationGridAdapter;

    .line 1067
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreActivity;->access$2100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/ObservationGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v0

    if-nez v0, :cond_2

    .line 1069
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$11;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lorg/inaturalist/android/GridViewExtended;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
