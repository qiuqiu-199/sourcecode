.class Lorg/inaturalist/android/ExploreFiltersActivity$3;
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

    .line 210
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$3;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/users/autocomplete"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$3;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const-class v2, Lorg/inaturalist/android/ItemSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "return_result"

    const/4 v2, 0x1

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "search_hint_text"

    .line 216
    iget-object v3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$3;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const v4, 0x7f100311

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "search_url"

    .line 217
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_user"

    .line 218
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$3;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const/16 v1, 0x1001

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ExploreFiltersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
