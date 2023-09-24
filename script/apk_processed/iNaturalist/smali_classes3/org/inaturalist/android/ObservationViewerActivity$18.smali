.class Lorg/inaturalist/android/ObservationViewerActivity$18;
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

.field final synthetic val$userObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 1569
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$18;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$18;->val$userObj:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1572
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$18;->val$userObj:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    .line 1573
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$18;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/UserProfile;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "user"

    .line 1574
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$18;->val$userObj:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1575
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$18;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
