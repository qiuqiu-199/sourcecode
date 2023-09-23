.class Lorg/inaturalist/android/DataQualityAssessment$1;
.super Ljava/lang/Object;
.source "DataQualityAssessment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/DataQualityAssessment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/DataQualityAssessment;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/DataQualityAssessment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$1;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 107
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$1;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAssessment;->access$000(Lorg/inaturalist/android/DataQualityAssessment;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$1;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAssessment;->access$100(Lorg/inaturalist/android/DataQualityAssessment;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 113
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment$1;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v1, v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment$1;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v1, v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v0, "observation_id"

    .line 119
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment$1;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    iget-object v1, v1, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment$1;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
