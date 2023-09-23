.class Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GuideDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideTaxaReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/GuideDetails;Lorg/inaturalist/android/GuideDetails$1;)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 246
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails;->access$200(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GuideDetails;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    const-string v0, "guide_xml_result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    .line 250
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    const/16 p2, 0x8

    if-nez p1, :cond_0

    .line 251
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$300(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    const v0, 0x7f100150

    const v1, 0x7f100105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver$1;-><init>(Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;)V

    new-instance v3, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver$2;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver$2;-><init>(Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/inaturalist/android/ActivityHelper;->confirm(ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 263
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$400(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .line 267
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    new-instance v0, Lorg/inaturalist/android/GuideXML;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v2, v2, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v3, v3, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/inaturalist/android/GuideXML;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/inaturalist/android/GuideDetails;->access$102(Lorg/inaturalist/android/GuideDetails;Lorg/inaturalist/android/GuideXML;)Lorg/inaturalist/android/GuideXML;

    .line 268
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lorg/inaturalist/android/GuideDetails;->access$502(Lorg/inaturalist/android/GuideDetails;Ljava/util/List;)Ljava/util/List;

    .line 269
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    new-instance v0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v3}, Lorg/inaturalist/android/GuideDetails;->access$500(Lorg/inaturalist/android/GuideDetails;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;-><init>(Lorg/inaturalist/android/GuideDetails;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p1, v0}, Lorg/inaturalist/android/GuideDetails;->access$602(Lorg/inaturalist/android/GuideDetails;Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;)Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    .line 270
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$700(Lorg/inaturalist/android/GuideDetails;)V

    .line 272
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$400(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$800(Lorg/inaturalist/android/GuideDetails;)V

    return-void
.end method
