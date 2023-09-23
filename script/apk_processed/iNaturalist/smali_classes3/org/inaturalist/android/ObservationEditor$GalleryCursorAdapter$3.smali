.class Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;
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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;)V
    .locals 0

    .line 2961
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2964
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2965
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->getItemIdString(I)Ljava/lang/String;

    move-result-object v0

    .line 2967
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mFirstPositionPhotoId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mFirstPositionPhotoId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2968
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->setAsFirstPhoto(I)V

    .line 2970
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Obs - New Default Photo"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
