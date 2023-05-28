.class Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/TaxonActivity;Lorg/inaturalist/android/TaxonActivity$1;)V
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 571
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$900(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/TaxonActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1000(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "taxon_result"

    .line 580
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 589
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iput-object p1, p2, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    .line 590
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iput-boolean v0, p1, Lorg/inaturalist/android/TaxonActivity;->mDownloadTaxon:Z

    .line 591
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1100(Lorg/inaturalist/android/TaxonActivity;)V

    return-void
.end method
