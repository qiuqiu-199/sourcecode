.class Lorg/inaturalist/android/ObservationViewerActivity$5;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$5;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 598
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$5;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$600(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    const v0, 0x7f10016f

    const v1, 0x7f100170

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ActivityHelper;->alert(II)V

    return-void
.end method
