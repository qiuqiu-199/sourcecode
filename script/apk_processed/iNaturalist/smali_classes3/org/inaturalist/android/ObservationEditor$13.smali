.class Lorg/inaturalist/android/ObservationEditor$13;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$13;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeLeft()V
    .locals 2

    .line 822
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$13;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$1500(Lorg/inaturalist/android/ObservationEditor;I)V

    return-void
.end method

.method public onSwipeRight()V
    .locals 2

    .line 817
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$13;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$1500(Lorg/inaturalist/android/ObservationEditor;I)V

    return-void
.end method
