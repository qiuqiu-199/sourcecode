.class Lorg/inaturalist/android/ExploreFiltersActivity$5;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreFiltersActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$5;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 234
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$5;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const-class v1, Lorg/inaturalist/android/ItemSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "return_result"

    const/4 v1, 0x1

    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "search_hint_text"

    .line 236
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$5;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const v2, 0x7f10030e

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "search_url"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/projects/autocomplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$5;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ExploreFiltersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
