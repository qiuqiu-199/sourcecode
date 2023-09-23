.class Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GuideTaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideTaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideTaxonActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/GuideTaxonActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/GuideTaxonActivity;Lorg/inaturalist/android/GuideTaxonActivity$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;-><init>(Lorg/inaturalist/android/GuideTaxonActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/GuideTaxonActivity;->access$000(Lorg/inaturalist/android/GuideTaxonActivity;)Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    const v0, 0x7f0a01d0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    const v0, 0x7f0a0382

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "taxon_result"

    .line 99
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    iput-object p1, p2, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    .line 106
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/GuideTaxonActivity;->access$100(Lorg/inaturalist/android/GuideTaxonActivity;)V

    return-void
.end method
