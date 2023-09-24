.class Lorg/inaturalist/android/ObservationEditor$27;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->prepareCapturedPhoto(Landroid/net/Uri;)V
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

    .line 2337
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$27;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2340
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$27;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$200(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$27;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void
.end method
