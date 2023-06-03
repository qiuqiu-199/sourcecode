.class Lorg/inaturalist/android/ObservationViewerActivity$4;
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

    .line 583
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$4;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 586
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$4;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$4;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v2, Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x102

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
