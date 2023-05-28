.class Lorg/inaturalist/android/MissionsActivity$1;
.super Ljava/lang/Object;
.source "MissionsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 110
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$1;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Missions - Category %s"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lorg/inaturalist/android/MissionsActivity$1;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {}, Lorg/inaturalist/android/MissionsActivity;->access$000()[[I

    move-result-object v0

    aget-object v0, v0, p3

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p5, v0}, Lorg/inaturalist/android/MissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v1

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 116
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lorg/inaturalist/android/MissionsActivity$1;->this$0:Lorg/inaturalist/android/MissionsActivity;

    const-class p4, Lorg/inaturalist/android/MissionsGridActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "taxon_id"

    .line 117
    invoke-static {}, Lorg/inaturalist/android/MissionsActivity;->access$000()[[I

    move-result-object p4

    aget-object p4, p4, p3

    const/4 p5, 0x3

    aget p4, p4, p5

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "taxon_name"

    .line 118
    iget-object p4, p0, Lorg/inaturalist/android/MissionsActivity$1;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {}, Lorg/inaturalist/android/MissionsActivity;->access$000()[[I

    move-result-object p5

    aget-object p3, p5, p3

    aget p3, p3, v1

    invoke-virtual {p4, p3}, Lorg/inaturalist/android/MissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object p2, p0, Lorg/inaturalist/android/MissionsActivity$1;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/MissionsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
