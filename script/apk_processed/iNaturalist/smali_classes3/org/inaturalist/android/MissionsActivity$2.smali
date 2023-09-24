.class Lorg/inaturalist/android/MissionsActivity$2;
.super Ljava/lang/Object;
.source "MissionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$2;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$2;->this$0:Lorg/inaturalist/android/MissionsActivity;

    iget-object p1, p1, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Missions - Category All"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 132
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$2;->this$0:Lorg/inaturalist/android/MissionsActivity;

    const-class v1, Lorg/inaturalist/android/MissionsGridActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$2;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/MissionsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
