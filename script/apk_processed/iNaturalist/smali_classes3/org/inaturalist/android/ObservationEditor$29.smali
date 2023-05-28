.class Lorg/inaturalist/android/ObservationEditor$29;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->importPhotos(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;

.field final synthetic val$overrideLocation:Z

.field final synthetic val$photos:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;Ljava/util/List;Z)V
    .locals 0

    .line 2388
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$29;->val$photos:Ljava/util/List;

    iput-boolean p3, p0, Lorg/inaturalist/android/ObservationEditor$29;->val$overrideLocation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2391
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$700(Lorg/inaturalist/android/ObservationEditor;)Lorg/lucasr/twowayview/TwoWayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v0

    .line 2394
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$29;->val$photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2395
    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v4, v2, v0}, Lorg/inaturalist/android/ObservationEditor;->access$3600(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 2402
    :cond_1
    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v5, v5, Lorg/inaturalist/android/ObservationEditor;->mPhotosAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 2407
    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v4, v4, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v4, v4, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, v4, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v4, v4, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, v4, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lorg/inaturalist/android/ObservationEditor$29;->val$overrideLocation:Z

    if-eqz v4, :cond_0

    if-ne v0, v3, :cond_0

    .line 2409
    :cond_3
    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-boolean v3, v4, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    .line 2410
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    new-instance v4, Lorg/inaturalist/android/ObservationEditor$29$1;

    invoke-direct {v4, p0, v2}, Lorg/inaturalist/android/ObservationEditor$29$1;-><init>(Lorg/inaturalist/android/ObservationEditor$29;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/ObservationEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 2428
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$29$2;

    invoke-direct {v1, p0, v3}, Lorg/inaturalist/android/ObservationEditor$29$2;-><init>(Lorg/inaturalist/android/ObservationEditor$29;Z)V

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
