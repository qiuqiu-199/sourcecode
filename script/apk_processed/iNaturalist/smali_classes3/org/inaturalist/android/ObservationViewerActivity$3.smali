.class Lorg/inaturalist/android/ObservationViewerActivity$3;
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

    .line 574
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$3;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 577
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$3;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "login"

    const/4 v1, 0x1

    .line 578
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$3;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/16 v1, 0x102

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
