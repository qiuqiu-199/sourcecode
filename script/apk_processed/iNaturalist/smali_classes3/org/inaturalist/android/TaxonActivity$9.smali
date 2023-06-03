.class Lorg/inaturalist/android/TaxonActivity$9;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity;->loadTaxon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$9;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 867
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$9;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1000(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p1

    .line 868
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$9;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$1000(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inat_host_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 870
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$9;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/TaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 871
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s/taxon_changes?taxon_id=%d&locale=%s"

    const/4 v2, 0x3

    .line 872
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$9;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iget-object p1, p1, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 875
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$9;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/TaxonActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
