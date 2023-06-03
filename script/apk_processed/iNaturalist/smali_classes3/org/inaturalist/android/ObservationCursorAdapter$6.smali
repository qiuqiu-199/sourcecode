.class Lorg/inaturalist/android/ObservationCursorAdapter$6;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;->downloadRemoteObsPhoto(ILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/inaturalist/android/ObservationPhoto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$6;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1029
    check-cast p1, Lorg/inaturalist/android/ObservationPhoto;

    check-cast p2, Lorg/inaturalist/android/ObservationPhoto;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationCursorAdapter$6;->compare(Lorg/inaturalist/android/ObservationPhoto;Lorg/inaturalist/android/ObservationPhoto;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/inaturalist/android/ObservationPhoto;Lorg/inaturalist/android/ObservationPhoto;)I
    .locals 1

    .line 1032
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    iget-object p1, p1, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
