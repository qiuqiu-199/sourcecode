.class Lorg/inaturalist/android/MissionDetails$TaxonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissionDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/MissionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetails;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/MissionDetails;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/MissionDetails;Lorg/inaturalist/android/MissionDetails$1;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;-><init>(Lorg/inaturalist/android/MissionDetails;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 550
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {v0}, Lorg/inaturalist/android/MissionDetails;->access$600(Lorg/inaturalist/android/MissionDetails;)Lorg/inaturalist/android/MissionDetails$TaxonReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/MissionDetails;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "taxon_result"

    .line 551
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    const-string v0, "wikipedia_summary"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lorg/inaturalist/android/MissionDetails;->mAboutText:Ljava/lang/String;

    .line 558
    iget-object p2, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    iget-object p2, p2, Lorg/inaturalist/android/MissionDetails;->mAboutText:Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    const-string v0, ""

    iput-object v0, p2, Lorg/inaturalist/android/MissionDetails;->mAboutText:Ljava/lang/String;

    .line 559
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    const-string v0, "wikipedia_title"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lorg/inaturalist/android/MissionDetails;->mWikiTitle:Ljava/lang/String;

    .line 560
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    iget-object p1, p1, Lorg/inaturalist/android/MissionDetails;->mWikiTitle:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    const-string p2, ""

    iput-object p2, p1, Lorg/inaturalist/android/MissionDetails;->mWikiTitle:Ljava/lang/String;

    .line 562
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$200(Lorg/inaturalist/android/MissionDetails;)V

    return-void
.end method
