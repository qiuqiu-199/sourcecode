.class Lorg/inaturalist/android/ObservationEditor$2;
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

    .line 423
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 426
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v0, v0, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    .line 427
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean p1, p1, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    const/16 v0, 0x8

    const v1, 0x7f0a019a

    const/4 v2, 0x0

    const v3, 0x7f0a019b

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :goto_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "New Value"

    .line 437
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$2;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v1, v1, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    if-eqz v1, :cond_1

    const-string v1, "Yes"

    goto :goto_1

    :cond_1
    const-string v1, "No"

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Obs - Captive Changed"

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 440
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method
