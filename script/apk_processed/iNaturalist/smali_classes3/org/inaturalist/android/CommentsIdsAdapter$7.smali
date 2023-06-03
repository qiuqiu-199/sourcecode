.class Lorg/inaturalist/android/CommentsIdsAdapter$7;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CommentsIdsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

.field final synthetic val$item:Lorg/inaturalist/android/BetterJSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter;Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$7;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$7;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 441
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$7;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    .line 442
    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inat_host_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 445
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$7;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 446
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s/taxon_changes?taxon_id=%d&locale=%s"

    const/4 v2, 0x3

    .line 447
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$7;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "taxon_id"

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 450
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$7;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
