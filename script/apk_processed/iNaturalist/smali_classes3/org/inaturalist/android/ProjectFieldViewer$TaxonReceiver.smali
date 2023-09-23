.class Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProjectFieldViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProjectFieldViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectFieldViewer;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ProjectFieldViewer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ProjectFieldViewer;Lorg/inaturalist/android/ProjectFieldViewer$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 81
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$000(Lorg/inaturalist/android/ProjectFieldViewer;)Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$100(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    const-string p1, "taxon_result"

    .line 83
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "id"

    .line 89
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 91
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$200(Lorg/inaturalist/android/ProjectFieldViewer;)I

    move-result v0

    if-eq p2, v0, :cond_1

    return-void

    .line 96
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$300(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/ImageView;

    move-result-object p2

    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$400(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p2

    const-string v0, "unique_name"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$500(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "rank_level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x14

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-gt p2, v0, :cond_2

    .line 100
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$500(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$500(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 104
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$600(Lorg/inaturalist/android/ProjectFieldViewer;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 106
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$400(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$500(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectFieldViewer;->access$400(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "name"

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$100(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10037a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$500(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectFieldViewer;->access$400(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object p1

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    return-void
.end method
