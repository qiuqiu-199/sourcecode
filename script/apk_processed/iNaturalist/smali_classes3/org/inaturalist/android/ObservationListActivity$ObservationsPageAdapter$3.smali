.class Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$3;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$3;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

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

    .line 1093
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    .line 1095
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$3;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-class p4, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1096
    sget-object p3, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance p4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p4, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1097
    sget-object p3, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    new-instance p4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p4, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1098
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1099
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$3;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ObservationListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
