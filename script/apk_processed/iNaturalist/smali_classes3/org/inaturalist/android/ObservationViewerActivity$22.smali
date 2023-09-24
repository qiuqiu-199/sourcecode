.class Lorg/inaturalist/android/ObservationViewerActivity$22;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->loadObservationIntoUI()V
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

    .line 1770
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$22;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1773
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$22;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/ObservationProjectsViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "projects"

    .line 1774
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$22;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1775
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$22;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
