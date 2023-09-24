.class Lorg/inaturalist/android/MissionsGridActivity$1;
.super Ljava/lang/Object;
.source "MissionsGridActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsGridActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsGridActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsGridActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/inaturalist/android/MissionsGridActivity$1;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 95
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lorg/inaturalist/android/MissionsGridActivity$1;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    const-class p4, Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "mission"

    .line 96
    new-instance p4, Lorg/inaturalist/android/BetterJSONObject;

    iget-object p5, p0, Lorg/inaturalist/android/MissionsGridActivity$1;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    iget-object p5, p5, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "location_expansion"

    .line 97
    sget-object p3, Lorg/inaturalist/android/MissionsActivity;->RECOMMENDED_MISSIONS_EXPANSION:[F

    iget-object p4, p0, Lorg/inaturalist/android/MissionsGridActivity$1;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    iget p4, p4, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    aget p3, p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 98
    iget-object p2, p0, Lorg/inaturalist/android/MissionsGridActivity$1;->this$0:Lorg/inaturalist/android/MissionsGridActivity;

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/MissionsGridActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
