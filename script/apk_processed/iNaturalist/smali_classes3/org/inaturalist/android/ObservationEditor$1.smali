.class Lorg/inaturalist/android/ObservationEditor$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 385
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$1;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 388
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$1;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$200(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$1;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$1;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/ObservationEditor$1$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ObservationEditor$1$1;-><init>(Lorg/inaturalist/android/ObservationEditor$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/inaturalist/android/ActivityHelper;->selection(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
