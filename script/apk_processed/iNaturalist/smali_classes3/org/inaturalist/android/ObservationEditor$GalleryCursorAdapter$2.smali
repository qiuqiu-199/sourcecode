.class Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;I)V
    .locals 0

    .line 2946
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iput p2, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2949
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-class v1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation_id"

    .line 2950
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 2951
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "is_new_observation"

    const/4 v1, 0x1

    .line 2952
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "current_photo_index"

    .line 2953
    iget v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;->val$position:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2954
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/16 v1, 0x68

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ObservationEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2956
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Obs - View Hires Photo"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    return-void
.end method
