.class Lorg/inaturalist/android/ProjectDetails$7;
.super Ljava/lang/Object;
.source "ProjectDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectDetails;->refreshViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectDetails;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 578
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectDetails;->access$700(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 579
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    new-instance v1, Lorg/inaturalist/android/ObservationGridAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object v3, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {v3}, Lorg/inaturalist/android/ProjectDetails;->access$700(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v3

    invoke-virtual {v3}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v3

    iget-object v4, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object v4, v4, Lorg/inaturalist/android/ProjectDetails;->mObservations:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lorg/inaturalist/android/ObservationGridAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v0, v1}, Lorg/inaturalist/android/ProjectDetails;->access$802(Lorg/inaturalist/android/ProjectDetails;Lorg/inaturalist/android/ObservationGridAdapter;)Lorg/inaturalist/android/ObservationGridAdapter;

    .line 580
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectDetails;->access$700(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails$7;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectDetails;->access$800(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/ObservationGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
