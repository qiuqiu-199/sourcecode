.class Lorg/inaturalist/android/MissionsPagerAdapter$1;
.super Ljava/lang/Object;
.source "MissionsPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsPagerAdapter;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->this$0:Lorg/inaturalist/android/MissionsPagerAdapter;

    iput p2, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 53
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->this$0:Lorg/inaturalist/android/MissionsPagerAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/MissionsPagerAdapter;->access$000(Lorg/inaturalist/android/MissionsPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "mission"

    .line 54
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->this$0:Lorg/inaturalist/android/MissionsPagerAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/MissionsPagerAdapter;->access$100(Lorg/inaturalist/android/MissionsPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "location_expansion"

    .line 55
    iget-object v1, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->this$0:Lorg/inaturalist/android/MissionsPagerAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/MissionsPagerAdapter;->access$200(Lorg/inaturalist/android/MissionsPagerAdapter;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->this$0:Lorg/inaturalist/android/MissionsPagerAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/MissionsPagerAdapter;->access$000(Lorg/inaturalist/android/MissionsPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object p1, p0, Lorg/inaturalist/android/MissionsPagerAdapter$1;->this$0:Lorg/inaturalist/android/MissionsPagerAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/MissionsPagerAdapter;->access$300(Lorg/inaturalist/android/MissionsPagerAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Missions - Tap - Nearby Mission"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
