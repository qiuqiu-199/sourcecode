.class Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$2;
.super Ljava/lang/Object;
.source "ProjectDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$2;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

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

    .line 801
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 802
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$2;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object p3, p3, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-class p4, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "observation"

    .line 803
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "read_only"

    const/4 p3, 0x1

    .line 804
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "reload"

    .line 805
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$2;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ProjectDetails;->startActivity(Landroid/content/Intent;)V

    .line 809
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "Via"

    const-string p3, "Project Details"

    .line 810
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p2

    const-string p3, "Navigate - Observations - Details"

    invoke-virtual {p2, p3, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 814
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method