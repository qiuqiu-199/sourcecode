.class Lorg/inaturalist/android/UserProfile$1;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserProfile;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$1;->this$0:Lorg/inaturalist/android/UserProfile;

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

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 176
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/inaturalist/android/UserProfile$1;->this$0:Lorg/inaturalist/android/UserProfile;

    const-class p4, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    sget-object p3, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance p4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p4, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 178
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$1;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/UserProfile;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
